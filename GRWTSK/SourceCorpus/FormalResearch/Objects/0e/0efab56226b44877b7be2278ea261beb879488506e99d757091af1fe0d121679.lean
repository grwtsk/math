import Think.SourceTree.Legacy.Compression.Rewrite

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
Reversible structure-preserving rewrite groupoid surface.

This is intentionally a groupoid-style relation between compressed strings, not
a global group action. Normalization and canonicalization remain reducing moves,
not invertible group actions.
-/
inductive InvertibleRewrite {α : Type} :
    CompressedString α → CompressedString α → Type
  | refl (s : CompressedString α) :
      InvertibleRewrite s s
  | symm {source target : CompressedString α} :
      InvertibleRewrite source target →
        InvertibleRewrite target source
  | trans {source middle target : CompressedString α} :
      InvertibleRewrite source middle →
      InvertibleRewrite middle target →
        InvertibleRewrite source target

def SameOrbit {α : Type}
    (source target : CompressedString α) : Prop :=
  Nonempty (InvertibleRewrite source target)

theorem preserves_semantics_and_lookup_symm {α : Type}
    {source target : CompressedString α}
    (h : PreservesSemanticsAndLookup source target) :
    PreservesSemanticsAndLookup target source := by
  rcases h with ⟨equiv⟩
  exact ⟨preservesOfDecodeEq equiv.decode_eq.symm⟩

theorem invertibleRewrite_preserves {α : Type}
    {source target : CompressedString α}
    (rewrite : InvertibleRewrite source target) :
    PreservesSemanticsAndLookup source target := by
  induction rewrite with
  | refl s =>
      exact preserves_semantics_and_lookup_refl s
  | symm rewrite ih =>
      exact preserves_semantics_and_lookup_symm ih
  | trans left right leftIh rightIh =>
      exact preserves_semantics_and_lookup_trans leftIh rightIh

theorem invertibleRewrite_refl_preserves {α : Type}
    (s : CompressedString α) :
    PreservesSemanticsAndLookup s s :=
  invertibleRewrite_preserves (InvertibleRewrite.refl s)

theorem sameOrbit_refl {α : Type}
    (s : CompressedString α) :
    SameOrbit s s :=
  ⟨InvertibleRewrite.refl s⟩

theorem sameOrbit_symm {α : Type}
    {source target : CompressedString α}
    (h : SameOrbit source target) :
    SameOrbit target source := by
  rcases h with ⟨rewrite⟩
  exact ⟨InvertibleRewrite.symm rewrite⟩

theorem sameOrbit_trans {α : Type}
    {source middle target : CompressedString α}
    (left : SameOrbit source middle)
    (right : SameOrbit middle target) :
    SameOrbit source target := by
  rcases left with ⟨leftRewrite⟩
  rcases right with ⟨rightRewrite⟩
  exact ⟨InvertibleRewrite.trans leftRewrite rightRewrite⟩

/--
A small total finite-action interface.

This is a typed action package only. It does not import theorem authority from
runtime finite flip tests, affine floating-point witnesses, or elliptic
group-law statement surfaces.
-/
structure FiniteAction (G X : Type) where
  act : G → X → X
  one : G
  mul : G → G → G
  inv : G → G
  act_one :
    ∀ x, act one x = x
  act_mul :
    ∀ g h x, act (mul g h) x = act g (act h x)
  act_inv_left :
    ∀ g x, act (inv g) (act g x) = x
  act_inv_right :
    ∀ g x, act g (act (inv g) x) = x

structure LookupPreservingAction {α : Type}
    (G : Type) (action : FiniteAction G (CompressedString α)) : Prop where
  preserves :
    ∀ g s, PreservesSemanticsAndLookup s (action.act g s)

theorem lookupPreservingAction_preserves_decode {α : Type}
    {G : Type} {action : FiniteAction G (CompressedString α)}
    (haction : LookupPreservingAction G action)
    (g : G) (s : CompressedString α) :
    decode (action.act g s) = decode s := by
  rcases haction.preserves g s with ⟨equiv⟩
  exact equiv.decode_eq.symm

abbrev CompressedAction {α : Type} (G : Type) :=
  FiniteAction G (CompressedString α)

inductive RewriteMoveKind : Type
  | braid
  | commute
  | conjugate
  | stabilize
  | destabilize
  | quotient
  | lower
  | lift
  | replay
  | canonicalize
  | normalize
  | macroPlaceholderWithoutRoute
deriving DecidableEq, Repr

inductive RewriteMoveClass : Type
  | invertible
  | reducing
  | residue
deriving DecidableEq, Repr

def classifyMove : RewriteMoveKind → RewriteMoveClass
  | .braid => .invertible
  | .commute => .invertible
  | .conjugate => .invertible
  | .stabilize => .invertible
  | .destabilize => .invertible
  | .quotient => .reducing
  | .lower => .reducing
  | .lift => .reducing
  | .replay => .reducing
  | .canonicalize => .reducing
  | .normalize => .reducing
  | .macroPlaceholderWithoutRoute => .residue

theorem reducing_move_not_group_action :
    classifyMove RewriteMoveKind.canonicalize ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.normalize ≠ RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.quotient ≠ RewriteMoveClass.invertible := by
  decide

theorem invertible_move_classification :
    classifyMove RewriteMoveKind.braid = RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.commute = RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.conjugate = RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.stabilize = RewriteMoveClass.invertible ∧
    classifyMove RewriteMoveKind.destabilize = RewriteMoveClass.invertible := by
  decide

theorem macroPlaceholder_without_route_is_residue :
    classifyMove RewriteMoveKind.macroPlaceholderWithoutRoute =
      RewriteMoveClass.residue := rfl

/--
Later orbit-normalization uniqueness has to be proved only after normalization
is strengthened into an orbit representative construction. For now it remains a
visible target, not an admitted theorem.
-/
structure OrbitNormalizationTarget {α : Type} where
  source : CompressedString α
  target : CompressedString α
  same_orbit : SameOrbit source target
  target_statement : String

end Think.Compression.Syntax
