import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization

/-!
# Tree addresses, local collision premises, and contextual substitution

Local attribution: grwtsk contributors.

A finite binary tree is addressed by hashing a tagged leaf or a tagged pair of
child addresses. `address_injective_on` requires separation only on roots of a
subtree-closed domain. Its proof recovers the root constructor, then recursively
recovers both children. The separation premise is explicit: no cryptographic
hash is asserted globally injective. The constructor-valued address supplies a
lossless, non-compressing model in which the assumptions can be realized.

Contexts preserve equality of addresses regardless of collision resistance. This
is useful for incremental replacement, but also propagates collisions. A constant
hash on Boolean leaves is a source-exact counterexample to treating digest equality
as unconditional semantic equality. The function-specific cache consumer follows
from the existing fiber-constancy interface only after the injectivity premise.

This is a finite-tree model, not a proof for arbitrary DAG serialization, hostile
storage, authenticated producers, or computational collision bounds. Novelty and
independent analytical review: not assessed. Compilation, fresh kernel checking,
and transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Cache.ContentAddress

universe u v w

inductive Tree (A : Type u) where
  | leaf : A → Tree A
  | branch : Tree A → Tree A → Tree A

/-- Distinct constructor tags and field boundaries are part of the input type. -/
inductive Payload (A : Type u) (Digest : Type v) where
  | leaf : A → Payload A Digest
  | branch : Digest → Digest → Payload A Digest

variable {A : Type u} {D : Type v} {Y : Type w}

def address (hash : Payload A D → D) : Tree A → D
  | .leaf a => hash (.leaf a)
  | .branch left right => hash (.branch (address hash left) (address hash right))

def rootPayload (hash : Payload A D → D) : Tree A → Payload A D
  | .leaf a => .leaf a
  | .branch left right => .branch (address hash left) (address hash right)

theorem address_root (hash : Payload A D → D) (tree : Tree A) :
    address hash tree = hash (rootPayload hash tree) := by
  cases tree <;> rfl

def SubtreeClosed (domain : Tree A → Prop) : Prop :=
  ∀ left right, domain (.branch left right) → domain left ∧ domain right

/-- Hash collisions are excluded only for the root payloads being compared. -/
def SeparatesRoots (hash : Payload A D → D) (domain : Tree A → Prop) : Prop :=
  ∀ first second, domain first → domain second →
    address hash first = address hash second → rootPayload hash first = rootPayload hash second

theorem separatesRoots_of_injective_hash (hash : Payload A D → D)
    (injective : ∀ p q, hash p = hash q → p = q) (domain : Tree A → Prop) :
    SeparatesRoots hash domain := by
  intro first second _ _ same
  apply injective
  exact (address_root hash first).symm.trans (same.trans (address_root hash second))

/-- A local collision premise and subtree closure recover the entire finite object. -/
theorem address_injective_on (hash : Payload A D → D) (domain : Tree A → Prop)
    (closed : SubtreeClosed domain) (separates : SeparatesRoots hash domain)
    (first : Tree A) :
    domain first → ∀ second, domain second →
      address hash first = address hash second → first = second := by
  induction first with
  | leaf a =>
      intro firstMember second secondMember same
      have roots := separates (.leaf a) second firstMember secondMember same
      cases second with
      | leaf b =>
          change (Payload.leaf a : Payload A D) = Payload.leaf b at roots
          cases roots
          rfl
      | branch left right =>
          change (Payload.leaf a : Payload A D) =
            Payload.branch (address hash left) (address hash right) at roots
          cases roots
  | branch left right leftIH rightIH =>
      intro firstMember second secondMember same
      have roots := separates (.branch left right) second firstMember secondMember same
      cases second with
      | leaf b =>
          change (Payload.branch (address hash left) (address hash right) : Payload A D) =
            Payload.leaf b at roots
          cases roots
      | branch left' right' =>
          change (Payload.branch (address hash left) (address hash right) : Payload A D) =
            Payload.branch (address hash left') (address hash right') at roots
          have children := Payload.branch.inj roots
          have leftEqual := leftIH (closed left right firstMember).1 left'
            (closed left' right' secondMember).1 children.1
          have rightEqual := rightIH (closed left right firstMember).2 right'
            (closed left' right' secondMember).2 children.2
          cases leftEqual
          cases rightEqual
          rfl

/-- A domain-restricted cache consumer; arbitrary semantic functions are allowed. -/
theorem sufficient_on_domain (hash : Payload A D → D) (domain : Tree A → Prop)
    (closed : SubtreeClosed domain) (separates : SeparatesRoots hash domain)
    (value : Tree A → Y) :
    FiberConstant (fun tree : { t : Tree A // domain t } => address hash tree.val)
      (fun tree => value tree.val) := by
  intro first second same
  exact congrArg value
    (address_injective_on hash domain closed separates first.val first.property
      second.val second.property same)

/-- A lossless model exists, but its digest is the whole tree rather than fixed-width data. -/
def constructorAddress : Payload A (Tree A) → Tree A
  | .leaf a => .leaf a
  | .branch left right => .branch left right

theorem constructorAddress_roundtrip (tree : Tree A) :
    address constructorAddress tree = tree := by
  induction tree with
  | leaf a => rfl
  | branch left right leftIH rightIH =>
      simp [address, constructorAddress, leftIH, rightIH]

inductive Context (A : Type u) where
  | hole : Context A
  | left : Context A → Tree A → Context A
  | right : Tree A → Context A → Context A

def plug : Context A → Tree A → Tree A
  | .hole, tree => tree
  | .left context fixed, tree => .branch (plug context tree) fixed
  | .right fixed context, tree => .branch fixed (plug context tree)

/-- Address equality is a congruence for all finite tree contexts. -/
theorem contextual_address_substitution (hash : Payload A D → D)
    (context : Context A) {first second : Tree A}
    (same : address hash first = address hash second) :
    address hash (plug context first) = address hash (plug context second) := by
  induction context with
  | hole => exact same
  | left context fixed ih =>
      simp only [plug, address]
      rw [ih]
  | right fixed context ih =>
      simp only [plug, address]
      rw [ih]

/-- Context substitution composes without changing the order of fixed subtrees. -/
def composeContext : Context A → Context A → Context A
  | .hole, inner => inner
  | .left outer fixed, inner => .left (composeContext outer inner) fixed
  | .right fixed outer, inner => .right fixed (composeContext outer inner)

theorem plug_compose (outer inner : Context A) (tree : Tree A) :
    plug (composeContext outer inner) tree = plug outer (plug inner tree) := by
  induction outer with
  | hole => rfl
  | left outer fixed ih => simp [composeContext, plug, ih]
  | right fixed outer ih => simp [composeContext, plug, ih]

def evaluate (leafValue : A → Y) (combine : Y → Y → Y) : Tree A → Y
  | .leaf a => leafValue a
  | .branch left right => combine (evaluate leafValue combine left) (evaluate leafValue combine right)

/-- A collision can invalidate semantic memoization even when the content is well typed. -/
theorem constant_address_not_sufficient :
    ¬ FiberConstant (address (fun _ : Payload Bool Unit => ()))
      (evaluate (fun b : Bool => b) (fun left _ => left)) := by
  intro sufficient
  have impossible : false = true := sufficient (.leaf false) (.leaf true) rfl
  cases impossible

/-- The very same congruence also propagates a collision through every context. -/
theorem collisions_propagate (context : Context Bool) :
    address (fun _ : Payload Bool Unit => ()) (plug context (.leaf false)) =
      address (fun _ : Payload Bool Unit => ()) (plug context (.leaf true)) :=
  contextual_address_substitution _ context rfl

end GRWTSK.Cache.ContentAddress
