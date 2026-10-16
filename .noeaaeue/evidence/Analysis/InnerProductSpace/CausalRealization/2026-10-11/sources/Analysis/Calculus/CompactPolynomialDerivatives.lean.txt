/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.Analysis.Calculus.Deriv.Pow

/-!
# Derivatives of the prescribed compact source

All formulas describe the original `bump`, `source`, and `sourceResidual`.
The polynomial profile and its derivative vanish at both retained endpoints;
within-set derivative gluing proves the actual global derivatives. No source
replacement, source normalization, arithmetic estimate, or RH premise is used.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceResidual

open MeasureTheory Set Filter Topology
open ArithmeticSupplier

noncomputable section

def clippedProfile (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  if x ∈ Icc (-1 : ℝ) 1 then f x else 0

/-- A zero value and zero derivative glue to zero across any side of the retained interval. -/
theorem clipped_zero_hasDerivAt {f : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f 0 x) (zero : f x = 0) :
    HasDerivAt (clippedProfile f) 0 x := by
  have inside : HasDerivWithinAt (clippedProfile f) 0 (Icc (-1 : ℝ) 1) x :=
    hf.hasDerivWithinAt.congr (fun y hy ↦ by simp [clippedProfile, hy])
      (by by_cases hx : x ∈ Icc (-1 : ℝ) 1 <;> simp [clippedProfile, hx, zero])
  have outside : HasDerivWithinAt (clippedProfile f) 0 (Icc (-1 : ℝ) 1)ᶜ x :=
    (hasDerivAt_const x (0 : ℝ)).hasDerivWithinAt.congr
      (fun y hy ↦ by simp only [clippedProfile, if_neg hy])
      (by by_cases hx : x ∈ Icc (-1 : ℝ) 1 <;> simp [clippedProfile, hx, zero])
  simpa only [union_compl_self, hasDerivWithinAt_univ] using inside.union outside

/-- Global differentiation includes both closed endpoints and the open exterior. -/
theorem clipped_profile_hasDerivAt (f g : ℝ → ℝ)
    (hf : ∀ x, HasDerivAt f (g x) x)
    (leftValue : f (-1) = 0) (rightValue : f 1 = 0)
    (leftDerivative : g (-1) = 0) (rightDerivative : g 1 = 0) (x : ℝ) :
    HasDerivAt (clippedProfile f) (clippedProfile g x) x := by
  by_cases interior : x ∈ Ioo (-1 : ℝ) 1
  · have closed : x ∈ Icc (-1 : ℝ) 1 := ⟨interior.1.le, interior.2.le⟩
    have neighborhood : Icc (-1 : ℝ) 1 ∈ 𝓝 x := Icc_mem_nhds interior.1 interior.2
    have same : clippedProfile f =ᶠ[𝓝 x] f := by
      filter_upwards [neighborhood] with y hy
      simp [clippedProfile, hy]
    rw [show clippedProfile g x = g x by simp [clippedProfile, closed]]
    exact (hf x).congr_of_eventuallyEq same
  · by_cases closed : x ∈ Icc (-1 : ℝ) 1
    · by_cases left : x = -1
      · subst x
        simpa [clippedProfile, leftDerivative] using
          clipped_zero_hasDerivAt (by simpa only [leftDerivative] using hf (-1)) leftValue
      · have strictLeft : (-1 : ℝ) < x := lt_of_le_of_ne closed.1 (Ne.symm left)
        have right : x = 1 := by
          have notRight : ¬ x < 1 := fun h ↦ interior ⟨strictLeft, h⟩
          have := closed.2
          linarith
        subst x
        simpa [clippedProfile, rightDerivative] using
          clipped_zero_hasDerivAt (by simpa only [rightDerivative] using hf 1) rightValue
    · have neighborhood : (Icc (-1 : ℝ) 1)ᶜ ∈ 𝓝 x :=
        isClosed_Icc.isOpen_compl.mem_nhds closed
      have same : clippedProfile f =ᶠ[𝓝 x] fun _ ↦ (0 : ℝ) := by
        filter_upwards [neighborhood] with y hy
        simp only [clippedProfile, if_neg hy]
      simpa [clippedProfile, closed] using
        (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq same

def bumpPolynomial (x : ℝ) : ℝ := (1 - x ^ 2) ^ 4

def bumpFirstPolynomial (x : ℝ) : ℝ := -8 * x * (1 - x ^ 2) ^ 3

def bumpSecondPolynomial (x : ℝ) : ℝ :=
  -8 * (1 - x ^ 2) ^ 3 + 48 * x ^ 2 * (1 - x ^ 2) ^ 2

def bumpThirdPolynomial (x : ℝ) : ℝ :=
  144 * x * (1 - x ^ 2) ^ 2 - 192 * x ^ 3 * (1 - x ^ 2)

theorem bump_polynomial_hasDerivAt (x : ℝ) :
    HasDerivAt bumpPolynomial (bumpFirstPolynomial x) x := by
  have derivative := ((hasDerivAt_const x (1 : ℝ)).sub ((hasDerivAt_id x).pow 2)).pow 4
  simp only [id_eq] at derivative
  convert derivative using 1 <;> first | rfl | (dsimp [bumpFirstPolynomial]; ring)

theorem bump_first_polynomial_hasDerivAt (x : ℝ) :
    HasDerivAt bumpFirstPolynomial (bumpSecondPolynomial x) x := by
  have derivative := ((hasDerivAt_id x).const_mul (-8)).mul
    (((hasDerivAt_const x (1 : ℝ)).sub ((hasDerivAt_id x).pow 2)).pow 3)
  simp only [id_eq] at derivative
  convert derivative using 1 <;> first | rfl | (dsimp [bumpSecondPolynomial]; ring)

theorem bump_second_polynomial_hasDerivAt (x : ℝ) :
    HasDerivAt bumpSecondPolynomial (bumpThirdPolynomial x) x := by
  have base := (hasDerivAt_const x (1 : ℝ)).sub ((hasDerivAt_id x).pow 2)
  have derivative := (base.pow 3).const_mul (-8) |>.add
    ((((hasDerivAt_id x).pow 2).const_mul 48).mul (base.pow 2))
  simp only [id_eq] at derivative
  convert derivative using 1 <;> first | rfl | (dsimp [bumpThirdPolynomial]; ring)

theorem bump_hasDerivAt (x : ℝ) :
    HasDerivAt bump (clippedProfile bumpFirstPolynomial x) x := by
  change HasDerivAt (clippedProfile bumpPolynomial) (clippedProfile bumpFirstPolynomial x) x
  apply clipped_profile_hasDerivAt bumpPolynomial bumpFirstPolynomial bump_polynomial_hasDerivAt
    <;> norm_num [bumpPolynomial, bumpFirstPolynomial]

theorem bump_first_hasDerivAt (x : ℝ) :
    HasDerivAt (clippedProfile bumpFirstPolynomial) (clippedProfile bumpSecondPolynomial x) x := by
  apply clipped_profile_hasDerivAt bumpFirstPolynomial bumpSecondPolynomial
    bump_first_polynomial_hasDerivAt <;> norm_num [bumpFirstPolynomial, bumpSecondPolynomial]

theorem bump_second_hasDerivAt (x : ℝ) :
    HasDerivAt (clippedProfile bumpSecondPolynomial) (clippedProfile bumpThirdPolynomial x) x := by
  apply clipped_profile_hasDerivAt bumpSecondPolynomial bumpThirdPolynomial
    bump_second_polynomial_hasDerivAt <;> norm_num [bumpSecondPolynomial, bumpThirdPolynomial]

theorem bump_deriv : deriv bump = clippedProfile bumpFirstPolynomial :=
  funext (fun x ↦ (bump_hasDerivAt x).deriv)

theorem bump_second_deriv : deriv (deriv bump) = clippedProfile bumpSecondPolynomial := by
  rw [bump_deriv]
  exact funext (fun x ↦ (bump_first_hasDerivAt x).deriv)

theorem bump_continuous : Continuous bump :=
  (show Differentiable ℝ bump from fun x ↦ (bump_hasDerivAt x).differentiableAt).continuous

theorem bump_second_continuous : Continuous (clippedProfile bumpSecondPolynomial) :=
  (show Differentiable ℝ (clippedProfile bumpSecondPolynomial) from
    fun x ↦ (bump_second_hasDerivAt x).differentiableAt).continuous

/-- The first derivative of the actual scaled source, retaining both endpoints. -/
def sourceFirst (A x : ℝ) : ℝ :=
  A ^ (-(1 / 2 : ℝ)) * (clippedProfile bumpFirstPolynomial (x / A) / A)

/-- The second derivative of the actual scaled source, retaining both endpoints. -/
def sourceSecond (A x : ℝ) : ℝ :=
  A ^ (-(1 / 2 : ℝ)) * ((clippedProfile bumpSecondPolynomial (x / A) / A) / A)

theorem source_hasDerivAt (A x : ℝ) :
    HasDerivAt (source A) (sourceFirst A x) x := by
  have derivative := ((bump_hasDerivAt (x / A)).comp x
    ((hasDerivAt_id x).div_const A)).const_mul (A ^ (-(1 / 2 : ℝ)))
  change HasDerivAt (fun y ↦ A ^ (-(1 / 2 : ℝ)) * bump (y / A))
    (sourceFirst A x) x
  simpa [sourceFirst, Function.comp_def, div_eq_mul_inv] using derivative

theorem sourceFirst_hasDerivAt (A x : ℝ) :
    HasDerivAt (sourceFirst A) (sourceSecond A x) x := by
  have derivative := (((bump_first_hasDerivAt (x / A)).comp x
    ((hasDerivAt_id x).div_const A)).div_const A).const_mul (A ^ (-(1 / 2 : ℝ)))
  change HasDerivAt (fun y ↦
    A ^ (-(1 / 2 : ℝ)) * (clippedProfile bumpFirstPolynomial (y / A) / A))
    (sourceSecond A x) x
  simpa [sourceSecond, Function.comp_def, div_eq_mul_inv] using derivative

theorem source_deriv (A : ℝ) : deriv (source A) = sourceFirst A :=
  funext (fun x ↦ (source_hasDerivAt A x).deriv)

theorem source_second_deriv (A : ℝ) : deriv (deriv (source A)) = sourceSecond A := by
  rw [source_deriv]
  exact funext (fun x ↦ (sourceFirst_hasDerivAt A x).deriv)

theorem sourceResidual_eq (A x : ℝ) :
    sourceResidual A x = sourceSecond A x - (1 / 4 : ℝ) * source A x := by
  unfold sourceResidual
  rw [source_second_deriv]

/-- Actual global continuity, proved from the prescribed source's derivatives. -/
theorem sourceResidual_continuous (A : ℝ) : Continuous (sourceResidual A) := by
  have sourceContinuous : Continuous (source A) :=
    (show Differentiable ℝ (source A) from
      fun x ↦ (source_hasDerivAt A x).differentiableAt).continuous
  have secondContinuous : Continuous (sourceSecond A) := by
    exact continuous_const.mul
      (((bump_second_continuous.comp (continuous_id.div_const A)).div_const A).div_const A)
  have formula : sourceResidual A =
      fun x ↦ sourceSecond A x - (1 / 4 : ℝ) * source A x :=
    funext (sourceResidual_eq A)
  rw [formula]
  exact secondContinuous.sub (continuous_const.mul sourceContinuous)

theorem scaled_mem_iff {A : ℝ} (hA : 0 < A) (x : ℝ) :
    x / A ∈ Icc (-1 : ℝ) 1 ↔ x ∈ Icc (-A) A := by
  simp only [mem_Icc, le_div_iff₀ hA, div_le_iff₀ hA, neg_one_mul, one_mul]

/-- Explicit polynomial on the actual compact source interval. -/
def residualPolynomial (A x : ℝ) : ℝ :=
  A ^ (-(1 / 2 : ℝ)) *
    ((-8 * (1 - (x / A) ^ 2) ^ 3 + 48 * (x / A) ^ 2 * (1 - (x / A) ^ 2) ^ 2) /
        A ^ 2 - (1 / 4 : ℝ) * (1 - (x / A) ^ 2) ^ 4)

/-- Exact compact polynomial formula, with both closed endpoints retained. -/
theorem sourceResidual_eq_ite {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceResidual A x = if x ∈ Icc (-A) A then residualPolynomial A x else 0 := by
  rw [sourceResidual_eq]
  by_cases hx : x ∈ Icc (-A) A
  · have scaled : x / A ∈ Icc (-1 : ℝ) 1 := (scaled_mem_iff hA x).mpr hx
    simp only [if_pos hx, sourceSecond, clippedProfile, if_pos scaled, source, bump]
    dsimp [residualPolynomial, bumpSecondPolynomial]
    simp only [div_div, pow_two]
    ring
  · have scaled : x / A ∉ Icc (-1 : ℝ) 1 := fun hs ↦ hx ((scaled_mem_iff hA x).mp hs)
    simp only [if_neg hx, sourceSecond, clippedProfile, if_neg scaled, source, bump,
      zero_div, mul_zero, sub_zero]

theorem source_first_zero_outside {A x : ℝ} (hA : 0 < A) (hx : x ∉ Icc (-A) A) :
    deriv (source A) x = 0 := by
  have scaled : x / A ∉ Icc (-1 : ℝ) 1 := fun hs ↦ hx ((scaled_mem_iff hA x).mp hs)
  rw [source_deriv]
  simp only [sourceFirst, clippedProfile, if_neg scaled, zero_div, mul_zero]

theorem source_second_zero_outside {A x : ℝ} (hA : 0 < A) (hx : x ∉ Icc (-A) A) :
    deriv (deriv (source A)) x = 0 := by
  have scaled : x / A ∉ Icc (-1 : ℝ) 1 := fun hs ↦ hx ((scaled_mem_iff hA x).mp hs)
  rw [source_second_deriv]
  simp only [sourceSecond, clippedProfile, if_neg scaled, zero_div, mul_zero]

theorem source_first_endpoints_zero {A : ℝ} (hA : 0 < A) :
    deriv (source A) (-A) = 0 ∧ deriv (source A) A = 0 := by
  rw [source_deriv]
  simp [sourceFirst, clippedProfile, bumpFirstPolynomial, hA.ne']

theorem source_second_endpoints_zero {A : ℝ} (hA : 0 < A) :
    deriv (deriv (source A)) (-A) = 0 ∧ deriv (deriv (source A)) A = 0 := by
  rw [source_second_deriv]
  simp [sourceSecond, clippedProfile, bumpSecondPolynomial, hA.ne']

/-- The center value belongs to the original prescribed residual. -/
theorem sourceResidual_zero_eq (A : ℝ) :
    sourceResidual A 0 = A ^ (-(1 / 2 : ℝ)) * (-8 / A ^ 2 - (1 / 4 : ℝ)) := by
  rw [sourceResidual_eq]
  norm_num [sourceSecond, clippedProfile, bumpSecondPolynomial, source, bump]
  simp only [div_div, pow_two]
  ring

theorem sourceResidual_endpoints_zero {A : ℝ} (hA : 0 < A) :
    sourceResidual A (-A) = 0 ∧ sourceResidual A A = 0 := by
  simp [sourceResidual_eq, sourceSecond, source, bump, clippedProfile,
    bumpSecondPolynomial, hA.ne']

theorem sourceResidual_zero_outside {A x : ℝ} (hA : 0 < A) (hx : x ∉ Icc (-A) A) :
    sourceResidual A x = 0 := by
  rw [sourceResidual_eq_ite hA x, if_neg hx]

/-- Compact support is established for the actual residual, not an auxiliary replacement. -/
theorem sourceResidual_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceResidual A) :=
  HasCompactSupport.intro isCompact_Icc (fun _x hx ↦ sourceResidual_zero_outside hA hx)

/-- Global square integrability of the actual residual provides the normalization integral. -/
theorem sourceResidual_square_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ |sourceResidual A x| ^ 2) volume := by
  have continuousSquare : Continuous (fun x ↦ |sourceResidual A x| ^ 2) :=
    (sourceResidual_continuous A).abs.pow 2
  have compactSquare : HasCompactSupport (fun x ↦ |sourceResidual A x| ^ 2) :=
    (sourceResidual_hasCompactSupport hA).comp_left (g := fun y : ℝ ↦ |y| ^ 2) (by simp)
  exact continuousSquare.integrable_of_hasCompactSupport compactSquare

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceResidual
