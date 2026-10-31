/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.DynamicQuadraticPhraseModel
import Mathlib

/-!
# Master settings, phrase-local polynomial trees, and prime neighborhoods

The master model and each phrase model have different dependency scopes.
A master revision invalidates every master-dependent cached item. A phrase
revision invalidates only its local item, and a local tree update changes only
the addressed neighborhood. Text provenance and the previously checked walk
remain separate from these optimization caches.

The quadratic is a genuine nonnegative square of an affine waveform coordinate.
The polynomial tree is a finite aggregation tree: it is NOT a Navier--Stokes
flow or the underlying non-diagonal complex positive Gram. Each neighborhood
has an explicitly prime number of phrase positions. Exact coverage and order
are carried by the layout, not inferred from length alone.

Error repair is a conditional interface requiring a supplied repair theorem.
The standalone UI's Hamming(7,4) implementation is runtime-tested but is NOT
kernel-verified here or imported into the mathematical core.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

structure MasterSensoryInput where
  color : ℚ
  sound : ℚ
  flow : ℚ
  stretch : ℚ
  window : ZeroWindow

structure PhraseProsodyInput where
  cadence : ℚ
  emphasis : ℚ
  pause : ℚ
  pitch : ℚ
  wordplay : ℚ

structure PhrasePolynomial where
  constant : ℚ
  linear : ℚ
  quadratic : ℚ
  deriving DecidableEq, Repr

namespace PhrasePolynomial

def eval (p : PhrasePolynomial) (t : ℚ) : ℚ :=
  p.constant + p.linear * t + p.quadratic * t ^ 2

def add (a b : PhrasePolynomial) : PhrasePolynomial :=
  ⟨a.constant + b.constant, a.linear + b.linear,
    a.quadratic + b.quadratic⟩

def zero : PhrasePolynomial := ⟨0, 0, 0⟩

theorem eval_add (a b : PhrasePolynomial) (t : ℚ) :
    (add a b).eval t = a.eval t + b.eval t := by
  unfold add eval
  ring

def squareAffine (a b : ℚ) : PhrasePolynomial :=
  ⟨a ^ 2, 2 * a * b, b ^ 2⟩

theorem squareAffine_eval (a b t : ℚ) :
    (squareAffine a b).eval t = (a + b * t) ^ 2 := by
  unfold squareAffine eval
  ring

theorem squareAffine_nonnegative (a b t : ℚ) :
    0 ≤ (squareAffine a b).eval t := by
  rw [squareAffine_eval]
  positivity

end PhrasePolynomial

inductive PhrasePolynomialTree where
  | empty
  | leaf (phraseId : ℕ) (polynomial : PhrasePolynomial)
  | branch (left right : PhrasePolynomialTree)
  deriving Repr

namespace PhrasePolynomialTree

def polynomial : PhrasePolynomialTree → PhrasePolynomial
  | .empty => PhrasePolynomial.zero
  | .leaf _ p => p
  | .branch left right =>
      PhrasePolynomial.add left.polynomial right.polynomial

def updateLeaf (target : ℕ) (p : PhrasePolynomial) :
    PhrasePolynomialTree → PhrasePolynomialTree
  | .empty => .empty
  | .leaf i old => .leaf i (if i = target then p else old)
  | .branch left right =>
      .branch (updateLeaf target p left) (updateLeaf target p right)

def score (tree : PhrasePolynomialTree) (t : ℚ) : ℚ :=
  tree.polynomial.eval t

theorem branch_score (a b : PhrasePolynomialTree) (t : ℚ) :
    (PhrasePolynomialTree.branch a b).score t = a.score t + b.score t :=
  PhrasePolynomial.eval_add a.polynomial b.polynomial t

end PhrasePolynomialTree

structure PrimePhraseNeighborhood where
  start : ℕ
  length : ℕ
  prime_length : Nat.Prime length

namespace PrimePhraseNeighborhood

def positions (n : PrimePhraseNeighborhood) : List ℕ :=
  (List.range n.length).map (n.start + ·)

theorem length_at_least_two (n : PrimePhraseNeighborhood) : 2 ≤ n.length :=
  n.prime_length.two_le

end PrimePhraseNeighborhood

structure PrimePhraseForest (sourceLength : ℕ) where
  neighborhoods : List PrimePhraseNeighborhood
  exactCover : neighborhoods.flatMap PrimePhraseNeighborhood.positions =
    List.range sourceLength

def originalPrimeForest : PrimePhraseForest 15 where
  neighborhoods :=
    [⟨0, 5, by decide⟩, ⟨5, 5, by decide⟩, ⟨10, 5, by decide⟩]
  exactCover := by decide

structure HierarchyRevision (n : ℕ) where
  master : ℕ
  phrase : Fin n → ℕ

namespace HierarchyRevision

def changeMaster {n : ℕ} (v : HierarchyRevision n) : HierarchyRevision n :=
  { v with master := v.master + 1 }

def changePhrase {n : ℕ} (v : HierarchyRevision n)
    (selected : Fin n) : HierarchyRevision n :=
  { v with phrase := fun i => if i = selected then v.phrase i + 1 else v.phrase i }

theorem changePhrase_preserves_master {n : ℕ}
    (v : HierarchyRevision n) (i : Fin n) :
    (v.changePhrase i).master = v.master := rfl

theorem changePhrase_other {n : ℕ}
    (v : HierarchyRevision n) (i j : Fin n) (h : j ≠ i) :
    (v.changePhrase i).phrase j = v.phrase j := by
  simp [changePhrase, h]

end HierarchyRevision

structure PhraseCacheEntry where
  masterStamp : ℕ
  phraseStamp : ℕ
  polynomial : PhrasePolynomial

def CacheFresh {n : ℕ} (v : HierarchyRevision n)
    (i : Fin n) (entry : PhraseCacheEntry) : Prop :=
  entry.masterStamp = v.master ∧ entry.phraseStamp = v.phrase i

theorem master_change_invalidates_all {n : ℕ}
    (v : HierarchyRevision n) (i : Fin n) (entry : PhraseCacheEntry)
    (fresh : CacheFresh v i entry) :
    ¬ CacheFresh (v.changeMaster) i entry := by
  intro h
  have hbefore : entry.masterStamp = v.master := fresh.1
  have hafter : entry.masterStamp = v.master + 1 := h.1
  omega

theorem phrase_change_preserves_other {n : ℕ}
    (v : HierarchyRevision n) (i j : Fin n) (hij : j ≠ i)
    (entry : PhraseCacheEntry) (fresh : CacheFresh v j entry) :
    CacheFresh (v.changePhrase i) j entry := by
  constructor
  · exact fresh.1
  · simpa [HierarchyRevision.changePhrase, hij] using fresh.2

abbrev PolynomialForest := ℕ → PhrasePolynomialTree

def patchNeighborhood (forest : PolynomialForest)
    (groupId phraseId : ℕ) (polynomial : PhrasePolynomial) :
    PolynomialForest :=
  fun g => if g = groupId then
    (forest g).updateLeaf phraseId polynomial else forest g

theorem patch_other_neighborhood (forest : PolynomialForest)
    (groupId otherId phraseId : ℕ) (p : PhrasePolynomial)
    (hne : otherId ≠ groupId) :
    patchNeighborhood forest groupId phraseId p otherId = forest otherId := by
  simp [patchNeighborhood, hne]

structure NeighborhoodCode (Source Packet : Type) where
  encode : Source → Packet
  decode : Packet → Source
  sourceRoundTrip : ∀ x, decode (encode x) = x

structure NeighborhoodCorrection (Source Packet : Type)
    (code : NeighborhoodCode Source Packet) where
  oneErrorAway : Packet → Packet → Prop
  repair : Packet → Packet
  correct : ∀ (source : Source) (corrupted : Packet),
    oneErrorAway (code.encode source) corrupted →
      code.decode (repair corrupted) = source

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
