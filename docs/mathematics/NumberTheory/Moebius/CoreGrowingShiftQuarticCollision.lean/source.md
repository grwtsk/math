# Complete source: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCollision

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78447c27a530ef64b83c0f353944c82a9606eb56` · SHA-256 `89ecda265e3dd87bab87563959bb8baef57b5e443af0a9f2bb97355a42854b95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #716. Parent: draft PR #714 at
`4918bbc0b1e7c48f6219b39492efb97687ae7874`.
-/
import GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticCompensation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One orientation of the off-diagonal rectangle: `a < b`. -/
def mertensTwoPointQuarticUpperTriangle
    (h N : ℕ) : ℝ :=
  ∑ b ∈ Finset.range N,
    ∑ a ∈ Finset.range b,
      mertensTwoPointQuarticCell h a b

/-- The quartic cell is symmetric in its two base indices. -/
theorem mertensTwoPointQuarticCell_comm
    (h a b : ℕ) :
    mertensTwoPointQuarticCell h a b =
      mertensTwoPointQuarticCell h b a := by
  unfold mertensTwoPointQuarticCell
  ring

private theorem mertensTwoPointQuarticRectangle_succ
    (h N : ℕ) :
    mertensTwoPointQuarticRectangle h (N + 1) =
      mertensTwoPointQuarticRectangle h N +
        2 * (∑ a ∈ Finset.range N,
          mertensTwoPointQuarticCell h a N) +
        mertensTwoPointQuarticCell h N N := by
  simp only [mertensTwoPointQuarticRectangle,
    Finset.sum_range_succ]
  rw [Finset.sum_add_distrib]
  have hsym :
      (∑ b ∈ Finset.range N,
        mertensTwoPointQuarticCell h N b) =
      ∑ a ∈ Finset.range N,
        mertensTwoPointQuarticCell h a N := by
    apply Finset.sum_congr rfl
    intro a _ha
    exact mertensTwoPointQuarticCell_comm h N a
  rw [hsym]
  ring

private theorem mertensTwoPointQuarticDiagonal_succ
    (h N : ℕ) :
    mertensTwoPointQuarticDiagonal h (N + 1) =
      mertensTwoPointQuarticDiagonal h N +
        mertensTwoPointQuarticCell h N N := by
  simp [mertensTwoPointQuarticDiagonal, Finset.sum_range_succ]

private theorem mertensTwoPointQuarticUpperTriangle_succ
    (h N : ℕ) :
    mertensTwoPointQuarticUpperTriangle h (N + 1) =
      mertensTwoPointQuarticUpperTriangle h N +
        ∑ a ∈ Finset.range N,
          mertensTwoPointQuarticCell h a N := by
  simp [mertensTwoPointQuarticUpperTriangle,
    Finset.sum_range_succ]

/-- The complete off-diagonal rectangle is twice its upper triangle. -/
theorem mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle
    (h N : ℕ) :
    mertensTwoPointQuarticOffDiagonal h N =
      2 * mertensTwoPointQuarticUpperTriangle h N := by
  induction N with
  | zero =>
      simp [mertensTwoPointQuarticOffDiagonal,
        mertensTwoPointQuarticRectangle,
        mertensTwoPointQuarticDiagonal,
        mertensTwoPointQuarticUpperTriangle]
  | succ N ih =>
      unfold mertensTwoPointQuarticOffDiagonal at ih ⊢
      rw [mertensTwoPointQuarticRectangle_succ,
        mertensTwoPointQuarticDiagonal_succ,
        mertensTwoPointQuarticUpperTriangle_succ]
      linarith

/-- Upper-triangle cells where the third affine form equals the second:
`b = a + h`. -/
def mertensTwoPointQuarticCollisionUpper
    (h N : ℕ) : ℝ :=
  ∑ b ∈ Finset.range N,
    ∑ a ∈ (Finset.range b).filter (fun a => b = a + h),
      mertensTwoPointQuarticCell h a b

/-- Upper-triangle cells away from the repeated-middle collision line. -/
def mertensTwoPointQuarticCollisionFreeUpper
    (h N : ℕ) : ℝ :=
  ∑ b ∈ Finset.range N,
    ∑ a ∈ (Finset.range b).filter (fun a => b ≠ a + h),
      mertensTwoPointQuarticCell h a b

/-- Exact collision/collision-free partition of the upper triangle. -/
theorem mertensTwoPointQuarticUpperTriangle_eq_collision_add_free
    (h N : ℕ) :
    mertensTwoPointQuarticUpperTriangle h N =
      mertensTwoPointQuarticCollisionUpper h N +
        mertensTwoPointQuarticCollisionFreeUpper h N := by
  unfold mertensTwoPointQuarticUpperTriangle
    mertensTwoPointQuarticCollisionUpper
    mertensTwoPointQuarticCollisionFreeUpper
  calc
    (∑ b ∈ Finset.range N,
      ∑ a ∈ Finset.range b,
        mertensTwoPointQuarticCell h a b) =
      ∑ b ∈ Finset.range N,
        ((∑ a ∈ (Finset.range b).filter (fun a => b = a + h),
            mertensTwoPointQuarticCell h a b) +
          (∑ a ∈ (Finset.range b).filter (fun a => b ≠ a + h),
            mertensTwoPointQuarticCell h a b)) := by
      apply Finset.sum_congr rfl
      intro b _hb
      rw [← Finset.sum_filter_add_sum_filter_not]
    _ = _ := by
      rw [Finset.sum_add_distrib]

/-- The repeated-middle quartic cell after eliminating the redundant base
index. -/
def mertensTwoPointQuarticCollisionCell
    (h a : ℕ) : ℝ :=
  moebiusReal (a + 1) *
    moebiusReal (a + 1 + h) ^ 2 *
      moebiusReal (a + 1 + 2 * h)

/-- On `b=a+h`, the middle two affine forms coincide exactly. -/
theorem mertensTwoPointQuarticCell_eq_collisionCell
    (h a : ℕ) :
    mertensTwoPointQuarticCell h a (a + h) =
      mertensTwoPointQuarticCollisionCell h a := by
  have hmiddle : a + h + 1 = a + 1 + h := by omega
  have hlast : a + h + 1 + h = a + 1 + 2 * h := by omega
  unfold mertensTwoPointQuarticCell
    mertensTwoPointQuarticCollisionCell
  rw [hmiddle, hlast]
  ring

/-- The collision upper packet is literally a squarefree-weighted
three-distinct-point correlation. -/
theorem mertensTwoPointQuarticCollisionUpper_eq_repeatedMiddle
    (h N : ℕ) :
    mertensTwoPointQuarticCollisionUpper h N =
      ∑ b ∈ Finset.range N,
        ∑ a ∈ (Finset.range b).filter (fun a => b = a + h),
          mertensTwoPointQuarticCollisionCell h a := by
  unfold mertensTwoPointQuarticCollisionUpper
  apply Finset.sum_congr rfl
  intro b _hb
  apply Finset.sum_congr rfl
  intro a ha
  have hab : b = a + h := (Finset.mem_filter.mp ha).2
  subst b
  exact mertensTwoPointQuarticCell_eq_collisionCell h a

/-- Exact predicate recording whether the middle two affine forms are
distinct. -/
def MertensQuarticMiddleFormsDistinct
    (h a b : ℕ) : Prop :=
  a + 1 + h ≠ b + 1

/-- Middle-form distinctness is exactly exclusion of `b=a+h`. -/
theorem mertensQuarticMiddleFormsDistinct_iff
    (h a b : ℕ) :
    MertensQuarticMiddleFormsDistinct h a b ↔
      b ≠ a + h := by
  unfold MertensQuarticMiddleFormsDistinct
  omega

/-- Structural collision witness: on the collision line the second and third
forms are equal, so a pairwise-distinct four-form theorem does not apply. -/
theorem mertensQuarticCollision_not_middleDistinct
    (h a : ℕ) :
    ¬ MertensQuarticMiddleFormsDistinct h a (a + h) := by
  unfold MertensQuarticMiddleFormsDistinct
  omega

/-- Upper-triangle packet over every active growing-shift cell. -/
def coreGrowingShiftQuarticUpperEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticUpperTriangle
        (harmonicShiftLower j t + k) (t + 1)

/-- Repeated-middle collision packet over every active growing-shift cell. -/
def coreGrowingShiftQuarticCollisionEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticCollisionUpper
        (harmonicShiftLower j t + k) (t + 1)

/-- Collision-free upper-triangle packet over every active cell. -/
def coreGrowingShiftQuarticCollisionFreeEnergy
    (j : ℕ) : ℝ :=
  ∑ t ∈ coreLongDeepDepths j,
    ∑ k ∈ Finset.range (harmonicShiftCount j t),
      mertensTwoPointQuarticCollisionFreeUpper
        (harmonicShiftLower j t + k) (t + 1)

/-- Packet-level off-diagonal symmetry. -/
theorem coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_upper
    (j : ℕ) :
    coreGrowingShiftQuarticOffDiagonalEnergy j =
      2 * coreGrowingShiftQuarticUpperEnergy j := by
  unfold coreGrowingShiftQuarticOffDiagonalEnergy
    coreGrowingShiftQuarticUpperEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticOffDiagonal
          (harmonicShiftLower j t + k) (t + 1)) =
      ∑ t ∈ coreLongDeepDepths j,
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          2 * mertensTwoPointQuarticUpperTriangle
            (harmonicShiftLower j t + k) (t + 1) := by
      apply Finset.sum_congr rfl
      intro t _ht
      apply Finset.sum_congr rfl
      intro k _hk
      exact
        mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle
          (harmonicShiftLower j t + k) (t + 1)
    _ = ∑ t ∈ coreLongDeepDepths j,
        2 * (∑ k ∈ Finset.range (harmonicShiftCount j t),
          mertensTwoPointQuarticUpperTriangle
            (harmonicShiftLower j t + k) (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t _ht
      rw [Finset.mul_sum]
    _ = 2 * ∑ t ∈ coreLongDeepDepths j,
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          mertensTwoPointQuarticUpperTriangle
            (harmonicShiftLower j t + k) (t + 1) := by
      rw [Finset.mul_sum]

/-- Packet-level collision/collision-free split of the upper triangle. -/
theorem coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free
    (j : ℕ) :
    coreGrowingShiftQuarticUpperEnergy j =
      coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j := by
  unfold coreGrowingShiftQuarticUpperEnergy
    coreGrowingShiftQuarticCollisionEnergy
    coreGrowingShiftQuarticCollisionFreeEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticUpperTriangle
          (harmonicShiftLower j t + k) (t + 1)) =
      ∑ t ∈ coreLongDeepDepths j,
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          (mertensTwoPointQuarticCollisionUpper
              (harmonicShiftLower j t + k) (t + 1) +
            mertensTwoPointQuarticCollisionFreeUpper
              (harmonicShiftLower j t + k) (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t _ht
      apply Finset.sum_congr rfl
      intro k _hk
      exact
        mertensTwoPointQuarticUpperTriangle_eq_collision_add_free
          (harmonicShiftLower j t + k) (t + 1)
    _ = ∑ t ∈ coreLongDeepDepths j,
        ((∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticCollisionUpper
              (harmonicShiftLower j t + k) (t + 1)) +
          (∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticCollisionFreeUpper
              (harmonicShiftLower j t + k) (t + 1))) := by
      apply Finset.sum_congr rfl
      intro t _ht
      rw [Finset.sum_add_distrib]
    _ = _ := by
      rw [Finset.sum_add_distrib]

/-- Exact complete separation of the signed quartic off-diagonal packet. -/
theorem coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split
    (j : ℕ) :
    coreGrowingShiftQuarticOffDiagonalEnergy j =
      2 * (coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j) := by
  rw [coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_upper,
    coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free]

/-- Collision-separated form of the quartic compensation obligation. -/
def SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      2 * (coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j) ≤
          (C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 -
              coreGrowingShiftQuarticDiagonalEnergy j

/-- The collision-separated proposition is exactly the prior off-diagonal
compensation proposition. -/
theorem subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_iff_offDiagonal :
    SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation ↔
      SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation := by
  constructor
  · intro hSplit δ hδ
    obtain ⟨C, hC, hbound⟩ := hSplit δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split]
    exact hbound j
  · intro hOff δ hδ
    obtain ⟨C, hC, hbound⟩ := hOff δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split]
    exact hbound j

/-- Conditional RH endpoint through the collision-separated quartic source. -/
theorem riemannHypothesis_of_coreGrowingShiftQuarticCollisionSeparatedCompensation
    (hSplit :
      SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticCompensation
    (subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_iff_offDiagonal.mp
      hSplit)

/-- Source descriptor requiring separate treatment of the repeated-middle line
and the collision-free four-form family. -/
structure GrowingShiftCollisionSeparatedQuarticSource where
  sourceStatement : Prop
  activeRangeControl : Prop
  collisionLineControl : Prop
  collisionFreeFourPointControl : Prop
  depthMultiplicityControl : Prop
  finiteSmallScaleControl : Prop

/-- A proof-producing adapter is required before any external three-point,
four-point, corrected-Elliott, or dispersion theorem can supply the complete
collision-separated compensation. -/
structure ToCoreGrowingShiftQuarticCollisionSeparatedAdapter
    (d : GrowingShiftCollisionSeparatedQuarticSource) : Type where
  toCompensation :
    d.sourceStatement →
      d.activeRangeControl →
      d.collisionLineControl →
      d.collisionFreeFourPointControl →
      d.depthMultiplicityControl →
      d.finiteSmallScaleControl →
      SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation

/-- Generic conditional endpoint through an explicitly constructed separated
quartic adapter. -/
theorem riemannHypothesis_of_collisionSeparatedQuarticAdapter
    (d : GrowingShiftCollisionSeparatedQuarticSource)
    (bridge : ToCoreGrowingShiftQuarticCollisionSeparatedAdapter d)
    (hsource : d.sourceStatement)
    (hrange : d.activeRangeControl)
    (hcollision : d.collisionLineControl)
    (hfree : d.collisionFreeFourPointControl)
    (hdepth : d.depthMultiplicityControl)
    (hsmall : d.finiteSmallScaleControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_coreGrowingShiftQuarticCollisionSeparatedCompensation
    (bridge.toCompensation hsource hrange hcollision hfree hdepth hsmall)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointQuarticCollisionUpper_eq_repeatedMiddle
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensQuarticCollision_not_middleDistinct
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_iff_offDiagonal
```
