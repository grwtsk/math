# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExplodedKakeyaCovers.Variant1b6fcdf417f683e9d7b44a9f80146a7edb446e8f0e0f2560d4448722952e243c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `611142f1390a48f2b9fc3c8fdb0f6e22068a18f9` · SHA-256 `1b6fcdf417f683e9d7b44a9f80146a7edb446e8f0e0f2560d4448722952e243c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Checked.BoundaryMatriciant.Core

/-!
# Exploded Kakeya cover as a finite join-magma

This file proves only the local cover algebra:
- the carrier is a finite executable cover of referee gates;
- the operation is cover union;
- the laws are commutativity, associativity, idempotence, and duplicate stability.

The package intentionally has no Mathlib or external `equational_theories`
dependency, so the carrier is represented as a Boolean-valued finite cover over
the closed `RefereeGate` alphabet rather than Mathlib's `Finset`. This keeps the
same finite-set semantics while preserving the repository-local import boundary.

No analytic Kakeya theorem, referee-gate theorem, or BoundaryMatriciant research
claim is proved here.
-/

namespace Formal.Checked.BoundaryMatriciant

universe u

/-- A local magma interface for finite cover-union witnesses. -/
class LocalMagma (α : Type u) where
  op : α -> α -> α

infixl:70 " ◇ " => LocalMagma.op

/-- Local Equation 43: commutativity for the local operation. -/
def Equation43 (α : Type u) [LocalMagma α] : Prop :=
  ∀ x y : α, x ◇ y = y ◇ x

/-- Local Equation 4512: associativity for the local operation. -/
def Equation4512 (α : Type u) [LocalMagma α] : Prop :=
  ∀ x y z : α, x ◇ (y ◇ z) = (x ◇ y) ◇ z

/-- Standard idempotence law for a local magma. -/
def JoinIdempotent (α : Type u) [LocalMagma α] : Prop :=
  ∀ x : α, x ◇ x = x

/--
Local duplicate-stability law: merging a cover and exploding it against itself
adds no new witness gates.
-/
def DuplicateStable (α : Type u) [LocalMagma α] : Prop :=
  ∀ x y : α, x ◇ y = (x ◇ y) ◇ (x ◇ y)

/--
The finite gates of the Annals-style exploded Kakeya referee cover.

R1-R12 are the claim tubes. I1-I5 are cover-intersection witnesses.
-/
inductive RefereeGate where
  | R1
  | R2
  | R3
  | R4
  | R5
  | R6
  | R7
  | R8
  | R9
  | R10
  | R11
  | R12
  | I1
  | I2
  | I3
  | I4
  | I5
  deriving DecidableEq, Repr

/-- The closed finite referee-gate alphabet used by the executable cover. -/
def allRefereeGates : List RefereeGate :=
  [ .R1, .R2, .R3, .R4, .R5, .R6
  , .R7, .R8, .R9, .R10, .R11, .R12
  , .I1, .I2, .I3, .I4, .I5
  ]

theorem allRefereeGates_count : allRefereeGates.length = 17 := by
  rfl

theorem allRefereeGates_complete (gate : RefereeGate) :
    gate ∈ allRefereeGates := by
  cases gate <;> simp [allRefereeGates]

/--
A local exploded Kakeya cover is an executable finite set over the closed
`RefereeGate` alphabet.
-/
abbrev ExplodedKakeyaCover := RefereeGate -> Bool

def covers (cover : ExplodedKakeyaCover) (gate : RefereeGate) : Prop :=
  cover gate = true

/-- Cover explosion / cover union. -/
def coverJoin (A B : ExplodedKakeyaCover) : ExplodedKakeyaCover :=
  fun gate => A gate || B gate

instance : LocalMagma ExplodedKakeyaCover where
  op := coverJoin

private theorem cover_ext
    {A B : ExplodedKakeyaCover}
    (h : ∀ gate, A gate = B gate) :
    A = B := by
  funext gate
  exact h gate

@[simp] theorem coverJoin_eq_union
    (A B : ExplodedKakeyaCover) :
    A ◇ B = coverJoin A B := by
  change coverJoin A B = coverJoin A B
  rfl

@[simp] theorem mem_coverJoin
    {gate : RefereeGate}
    {A B : ExplodedKakeyaCover} :
    covers (A ◇ B) gate ↔ covers A gate ∨ covers B gate := by
  change covers (coverJoin A B) gate ↔ covers A gate ∨ covers B gate
  unfold covers coverJoin
  cases A gate <;> cases B gate <;> simp

@[simp] theorem coverJoin_comm
    (A B : ExplodedKakeyaCover) :
    A ◇ B = B ◇ A := by
  change coverJoin A B = coverJoin B A
  apply cover_ext
  intro gate
  unfold coverJoin
  cases A gate <;> cases B gate <;> rfl

@[simp] theorem coverJoin_assoc
    (A B C : ExplodedKakeyaCover) :
    A ◇ (B ◇ C) = (A ◇ B) ◇ C := by
  change coverJoin A (coverJoin B C) = coverJoin (coverJoin A B) C
  apply cover_ext
  intro gate
  unfold coverJoin
  cases A gate <;> cases B gate <;> cases C gate <;> rfl

@[simp] theorem coverJoin_idem
    (A : ExplodedKakeyaCover) :
    A ◇ A = A := by
  change coverJoin A A = A
  apply cover_ext
  intro gate
  unfold coverJoin
  cases A gate <;> rfl

/-- Equation binding: commutativity. -/
theorem coverJoin_equation43 :
    Equation43 ExplodedKakeyaCover :=
  coverJoin_comm

/-- Equation binding: associativity. -/
theorem coverJoin_equation4512 :
    Equation4512 ExplodedKakeyaCover :=
  coverJoin_assoc

/-- Local idempotence packaged as a predicate for the cover magma. -/
theorem coverJoin_idempotent :
    JoinIdempotent ExplodedKakeyaCover :=
  coverJoin_idem

/-- Derived local stability law used by the earlier proof sketch. -/
theorem coverJoin_duplicateStable :
    DuplicateStable ExplodedKakeyaCover := by
  intro A B
  exact (coverJoin_idem (A ◇ B)).symm

/-- Summary theorem: the exploded Kakeya cover is a finite join-style magma. -/
theorem explodedKakeyaCover_isFiniteJoinMagma :
    Equation43 ExplodedKakeyaCover ∧
    Equation4512 ExplodedKakeyaCover ∧
    JoinIdempotent ExplodedKakeyaCover ∧
    DuplicateStable ExplodedKakeyaCover := by
  exact ⟨
    coverJoin_equation43,
    coverJoin_equation4512,
    coverJoin_idempotent,
    coverJoin_duplicateStable
  ⟩

/-- Compatibility alias for the earlier local proof name. -/
theorem exploded_kakeya_cover_equation43 :
    Equation43 ExplodedKakeyaCover :=
  coverJoin_equation43

/-- Compatibility alias for the earlier local proof name. -/
theorem exploded_kakeya_cover_equation4512 :
    Equation4512 ExplodedKakeyaCover :=
  coverJoin_equation4512

/-- Compatibility alias for the earlier local proof name. -/
theorem exploded_kakeya_cover_equation3722 :
    DuplicateStable ExplodedKakeyaCover :=
  coverJoin_duplicateStable

/-- Compatibility alias for the earlier local proof name. -/
theorem exploded_kakeya_cover_is_local_join_magma :
    Equation43 ExplodedKakeyaCover ∧
    Equation4512 ExplodedKakeyaCover ∧
    DuplicateStable ExplodedKakeyaCover := by
  exact ⟨
    coverJoin_equation43,
    coverJoin_equation4512,
    coverJoin_duplicateStable
  ⟩

/-- Small examples for sanity checks. -/
def sampleA : ExplodedKakeyaCover :=
  fun gate => decide (gate = RefereeGate.R1 ∨ gate = RefereeGate.R2)

def sampleB : ExplodedKakeyaCover :=
  fun gate => decide (gate = RefereeGate.R2 ∨ gate = RefereeGate.I1)

def coverCard (cover : ExplodedKakeyaCover) : Nat :=
  (allRefereeGates.filter cover).length

theorem sampleA_card : coverCard sampleA = 2 := by
  rfl

theorem sampleB_card : coverCard sampleB = 2 := by
  rfl

theorem sampleJoin_card : coverCard (coverJoin sampleA sampleB) = 3 := by
  rfl

end Formal.Checked.BoundaryMatriciant
```
