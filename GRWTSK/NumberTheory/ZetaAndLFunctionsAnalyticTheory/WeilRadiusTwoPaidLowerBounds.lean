/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateHead
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoTrialProjection

/-!
# Outward entries for the paid radius-two lower comparison

The signed reconstruction multiplies the literal head and overlap
intervals before the residual cost is charged. The observed Gram and
propagated radius price are exact rational computations. The signed
remote matrix has its own enclosure and is charged once. Symmetrizing
the resulting matrix preserves the quadratic and gives symmetric radii
for the row-sum comparison. The finite LDL return still requires
the numeric row checks, and the stage return still requires the high
floor. Independent analytical review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidLowerBounds

open Matrix
open RadiusTwoCandidateEntries RadiusTwoCandidateHead RadiusTwoCandidateResidual
open RadiusTwoStageReturn RadiusTwoTrialProjection RadiusTwoRemoteProjection
open OddTrialResidualMatrix OddInclusionWindow OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.LinearAlgebra.SchurObserver

private abbrev residual : Matrix ResidualRows Trial ℝ :=
  literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048

/-- A reconstructed literal overlap entry, with interval multiplication by
the signed rational trial coefficients. -/
def overlapProductBounds (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ)
    (k : Fin 448) (j : Head) : Bounds :=
  sum Finset.univ (fun l => scale (X l j) (residualBoundsFrom bits t (overlapRow k) l))

theorem overlapProductBounds_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℚ) (k : Fin 448) (j : Head) :
    Encloses (overlapProductBounds bits t X k j)
      ((residual.submatrix overlapRow id * X.map (Rat.castHom ℝ)) k j) := by
  change Encloses (overlapProductBounds bits t X k j)
    (∑ l, residual (overlapRow k) l * (X l j : ℝ))
  simpa only [overlapProductBounds, mul_comm] using
    sum_sound Finset.univ (fun l _ => scale_sound (X l j) (residualBoundsFrom_sound bits ht (overlapRow k) l))

/-- The split upper enclosure uses the same overlap rows in both cross terms. -/
def splitTrialEntryBounds (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ)
    (i j : Head) : Bounds :=
  add (add (headBoundsHull bits t i j)
    (sum Finset.univ (fun k : Fin 448 =>
      scale (X (overlapSlot k) j) (residualBoundsFrom bits t (overlapRow k) (headSlot i)))))
    (sum Finset.univ (fun k : Fin 448 =>
      scale (X (overlapSlot k) i) (overlapProductBounds bits t X k j)))

theorem splitTrialEntryBounds_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℚ) (i j : Head) :
    Encloses (splitTrialEntryBounds bits t X i j) (splitTrialUpper (X.map (Rat.castHom ℝ)) i j) := by
  have hHead := headBoundsHull_sound bits ht i j
  have hCross := sum_sound (Finset.univ : Finset (Fin 448)) (fun k _ =>
    scale_sound (X (overlapSlot k) j) (residualBoundsFrom_sound bits ht (overlapRow k) (headSlot i)))
  have hOverlap := sum_sound (Finset.univ : Finset (Fin 448)) (fun k _ =>
    scale_sound (X (overlapSlot k) i) (overlapProductBounds_sound bits ht X k j))
  unfold splitTrialEntryBounds splitTrialUpper
  simp only [Matrix.add_apply, Matrix.mul_apply, Matrix.transpose_apply, Matrix.submatrix_apply,
    Matrix.map_apply, Rat.coe_castHom, id_eq, overlapHead] at *
  simpa only [mul_comm] using add_sound (add_sound hHead hCross) hOverlap

/-- The exact observed rows in the retained coordinates. -/
def observedRows (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) :
    Matrix ResidualRows Head ℚ := residualCenters bits t * X

/-- The exact squared sum of propagated entry radii. -/
def observationPrice (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) : ℚ :=
  ∑ i : ResidualRows, ∑ j : Head,
    ((residualRadii bits t * Matrix.of (fun k l => |X k l|)) i j) ^ 2

theorem observedRows_cast (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) :
    (observedRows bits t X).map (Rat.castHom ℝ) = observedResidualRows bits t (X.map (Rat.castHom ℝ)) := by
  unfold observedRows observedResidualRows
  rw [Matrix.map_mul]
  rfl

theorem observationPrice_cast (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) :
    (observationPrice bits t X : ℝ) = residualObservationPrice bits t (X.map (Rat.castHom ℝ)) := by
  have habs : (Matrix.of (fun k l => |X k l|)).map (Rat.castHom ℝ) =
      Matrix.of (fun k l => |(X.map (Rat.castHom ℝ)) k l|) := by
    ext k l
    change (↑|X k l| : ℝ) = |(X k l : ℝ)|
    exact Rat.cast_abs _
  unfold observationPrice residualObservationPrice
  push_cast
  congr 1
  funext i
  congr 1
  funext j
  have h := congrArg (fun A : Matrix ResidualRows Head ℝ => A i j)
    (Matrix.map_mul (L := residualRadii bits t) (M := Matrix.of (fun k l => |X k l|))
      (f := Rat.castHom ℝ))
  rw [habs] at h
  simpa only [Matrix.map_apply, Rat.coe_castHom] using congrArg (fun z : ℝ => z ^ 2) h

/-- The finite residual charge before division by the candidate floor. -/
def observedCharge (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) : Matrix Head Head ℚ :=
  let rows := observedRows bits t X
  (33 / 32 : ℚ) • (rows.transpose * rows) + (33 * observationPrice bits t X) • 1

private theorem observedCharge_cast (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) (i j : Head) :
    (observedCharge bits t X i j : ℝ) =
      ((1 + (1 / 32 : ℝ)) • reconstructionGram (observedResidualRows bits t (X.map (Rat.castHom ℝ))) +
        (1 + (1 / 32 : ℝ)⁻¹) • (residualObservationPrice bits t (X.map (Rat.castHom ℝ)) • 1)) i j := by
  have hg := congrArg (fun A : Matrix Head Head ℝ => A i j)
    (Matrix.map_mul (L := (observedRows bits t X).transpose) (M := observedRows bits t X)
      (f := Rat.castHom ℝ))
  rw [show ((observedRows bits t X).transpose).map (Rat.castHom ℝ) =
    ((observedRows bits t X).map (Rat.castHom ℝ)).transpose by rfl, observedRows_cast] at hg
  change (↑(((observedRows bits t X).transpose * observedRows bits t X) i j) : ℝ) = _ at hg
  unfold observedCharge reconstructionGram
  by_cases hij : i = j
  · subst j
    simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, ite_true,
      Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_ofNat, Rat.cast_one, observationPrice_cast, hg]
    ring
  · simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, hij, ite_false,
      Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_ofNat, Rat.cast_zero, observationPrice_cast, hg]
    ring

/-- Replace the trial by its exact split quadratic in the paid comparison. -/
def splitPaidLower (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) : Matrix Head Head ℝ :=
  let Xr := X.map (Rat.castHom ℝ)
  splitTrialUpper Xr - (5 : ℝ) • ((observedCharge bits t X).map (Rat.castHom ℝ) +
    congruence Xr (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))

theorem quadratic_splitPaidLower (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ) (v : Head → ℝ)
    (hmatch : ∀ i : Head, (X.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i) :
    quadratic (splitPaidLower bits t X) v = quadratic (paidLower bits t (X.map (Rat.castHom ℝ))) v := by
  have hCharge : (observedCharge bits t X).map (Rat.castHom ℝ) =
      (1 + (1 / 32 : ℝ)) • reconstructionGram (observedResidualRows bits t (X.map (Rat.castHom ℝ))) +
        (1 + (1 / 32 : ℝ)⁻¹) • (residualObservationPrice bits t (X.map (Rat.castHom ℝ)) • 1) := by
    ext i j
    exact observedCharge_cast bits t X i j
  have hSub (A B : Matrix Head Head ℝ) : quadratic (A - B) v = quadratic A v - quadratic B v := by
    simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub]
  unfold splitPaidLower paidLower
  rw [hCharge, hSub, quadratic_splitTrialUpper _ _ hmatch, quadratic_assembleLowerMatrix,
    quadratic_smul]
  simp only [quadratic_add, quadratic_smul, zero_mul, sub_zero]
  ring

/-- Raw outward entries of the split comparison with the full remote charge. -/
def paidEntryBounds (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℚ)
    (remote : Head → Head → Bounds) (i j : Head) : Bounds :=
  sub (splitTrialEntryBounds bits t X i j)
    (scale 5 (add (point (observedCharge bits t X i j)) (remote i j)))

theorem paidEntryBounds_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound) (X : Matrix Trial Head ℚ)
    {remote : Head → Head → Bounds}
    (hr : ∀ i j, Encloses (remote i j)
      (congruence (X.map (Rat.castHom ℝ)) (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j))
    (i j : Head) : Encloses (paidEntryBounds bits t X remote i j) (splitPaidLower bits t X i j) := by
  simpa only [paidEntryBounds, splitPaidLower, Matrix.sub_apply, Matrix.smul_apply, Matrix.add_apply,
    Matrix.map_apply, Rat.coe_castHom, smul_eq_mul, Rat.cast_ofNat] using
    sub_sound (splitTrialEntryBounds_sound bits ht X i j)
      (scale_sound 5 (add_sound (point_sound (observedCharge bits t X i j)) (hr i j)))

/-- Average both orientations before the symmetric row-radius comparison. -/
def symmetricBounds (raw : Head → Head → Bounds) (i j : Head) : Bounds :=
  scale (1 / 2) (add (raw i j) (raw j i))

theorem symmetricBounds_symm (raw : Head → Head → Bounds) (i j : Head) :
    symmetricBounds raw i j = symmetricBounds raw j i := by
  simp only [symmetricBounds, GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.add, add_comm]

theorem symmetricBounds_sound {raw : Head → Head → Bounds} {A : Matrix Head Head ℝ}
    (h : ∀ i j, Encloses (raw i j) (A i j)) (i j : Head) :
    Encloses (symmetricBounds raw i j) (((1 / 2 : ℝ) • (A + A.transpose)) i j) := by
  simpa only [symmetricBounds, Matrix.smul_apply, Matrix.add_apply, Matrix.transpose_apply,
    smul_eq_mul, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
    scale_sound (1 / 2) (add_sound (h i j) (h j i))

theorem quadratic_symmetrized (A : Matrix Head Head ℝ) (v : Head → ℝ) :
    quadratic ((1 / 2 : ℝ) • (A + A.transpose)) v = quadratic A v := by
  have h : quadratic A.transpose v = quadratic A v := by
    rw [quadratic, Matrix.dotProduct_transpose_mulVec]
    rfl
  rw [quadratic_smul, quadratic_add, h]
  ring

def intervalCenters (bounds : Head → Head → Bounds) : Matrix Head Head ℚ :=
  fun i j => ((bounds i j).1 + (bounds i j).2) / 2

def intervalRadii (bounds : Head → Head → Bounds) : Matrix Head Head ℚ :=
  fun i j => ((bounds i j).2 - (bounds i j).1) / 2

def intervalPaid (bounds : Head → Head → Bounds) (margin : ℚ) : Matrix Head Head ℚ :=
  intervalCenters bounds - margin • 1

/-- The checked finite comparison uses a symmetric source radius budget and
a separate budget for the dyadic factor comparison. -/
theorem quadratic_nonneg_of_intervalLDL (targetBits : ℕ) (bounds : Head → Head → Bounds)
    (sourceMargin comparisonMargin : ℚ) (target factor : Matrix Head Head ℤ) (pivots : Head → ℤ)
    (hRow : ∀ i, ∑ j, intervalRadii bounds i j ≤ sourceMargin)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkMinorant (intervalPaid bounds sourceMargin)
      (targetValue targetBits target) comparisonMargin = true)
    {A : Matrix Head Head ℝ} (hSymm : ∀ i j, bounds i j = bounds j i)
    (hEntry : ∀ i j, Encloses (bounds i j) (A i j)) (v : Head → ℝ) : 0 ≤ quadratic A v := by
  let paid := (intervalPaid bounds sourceMargin).map (Rat.castHom ℝ)
  let radii := (intervalRadii bounds).map (Rat.castHom ℝ)
  have hPaid : ∀ w, 0 ≤ quadratic paid w := by
    obtain ⟨hEntry, hSymm, hSum⟩ := checkMinorant_sound hMinorant
    exact fun w => quadratic_nonneg_of_minorant _ _ _ _ hEntry hSymm hSum
      (check_quadratic_nonneg targetBits hLDL) w
  have hCast : paid = (intervalCenters bounds).map (Rat.castHom ℝ) - (sourceMargin : ℝ) • 1 := by
    ext i j
    by_cases hij : i = j <;> simp [paid, intervalPaid, hij]
  refine quadratic_nonneg_of_minorant _ paid radii (sourceMargin : ℝ) ?_ ?_ ?_ hPaid v
  · intro i j
    rw [hCast]
    simp only [Matrix.sub_apply, sub_sub_sub_cancel_right]
    obtain ⟨hLo, hHi⟩ := hEntry i j
    change |A i j - (intervalCenters bounds i j : ℝ)| ≤ (intervalRadii bounds i j : ℝ)
    rw [abs_le]
    push_cast [intervalCenters, intervalRadii]
    exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
  · intro i j
    change (intervalRadii bounds i j : ℝ) = (intervalRadii bounds j i : ℝ)
    unfold intervalRadii
    rw [hSymm i j]
  · intro i
    change ∑ j, (intervalRadii bounds i j : ℝ) ≤ (sourceMargin : ℝ)
    exact_mod_cast hRow i

/-- Transfer a numerical interval comparison for the reconstructed lower
matrix to the whole radius-two stage given the actual high floor. -/
theorem stageLower_one_of_intervalLDL (bits targetBits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℚ)
    (hmatch : ∀ (v : Head → ℝ) (i : Head), (X.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64)
    (bounds : Head → Head → Bounds) (hSymm : ∀ i j, bounds i j = bounds j i)
    (hEntry : ∀ i j, Encloses (bounds i j)
      (((1 / 2 : ℝ) • (splitPaidLower bits t X + (splitPaidLower bits t X).transpose)) i j))
    (sourceMargin comparisonMargin : ℚ) (target factor : Matrix Head Head ℤ) (pivots : Head → ℤ)
    (hRow : ∀ i, ∑ j, intervalRadii bounds i j ≤ sourceMargin)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkMinorant (intervalPaid bounds sourceMargin)
      (targetValue targetBits target) comparisonMargin = true) : OddLiteralCofinal.StageLower 1 := by
  refine stageLower_one_of_paidLower bits ht (X.map (Rat.castHom ℝ))
    (fun v i => hmatch v (.inl i)) (fun v => hmatch v (.inr ())) hfloor ?_
  intro v
  have h := quadratic_nonneg_of_intervalLDL targetBits bounds sourceMargin comparisonMargin
    target factor pivots hRow hLDL hMinorant hSymm hEntry v
  rw [quadratic_symmetrized, quadratic_splitPaidLower bits t X v (hmatch v)] at h
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidLowerBounds
