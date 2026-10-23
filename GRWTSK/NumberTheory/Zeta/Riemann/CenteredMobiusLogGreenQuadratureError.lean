/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureDerivativeBound
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.RiemannHypothesis

def greenFourierDerivativeMajorant (k : ℤ) : ℝ :=
  1 + 1 / (Real.pi * |(k : ℝ)|)

/-- On [0,1], the Green background integrand is Lipschitz with the explicit
frequency-dependent derivative majorant. -/
theorem greenFourierBackgroundIntegrand_lipschitzOn
    {k : ℤ} (hk : k ≠ 0) :
    LipschitzOnWith (Real.toNNReal (greenFourierDerivativeMajorant k))
      (greenFourierBackgroundIntegrand k) (Set.Icc (0 : ℝ) 1) := by
  have hM : 0 ≤ greenFourierDerivativeMajorant k := by
    unfold greenFourierDerivativeMajorant
    positivity
  apply Convex.lipschitzOnWith_of_nnnorm_fderiv_le
    convex_Icc
  · intro x hx
    have hx' := hx
    rcases hx' with ⟨hx0, hx1⟩
    have hd := greenFourierBackgroundIntegrand_hasDerivAt_with_bound
      hk hx0 hx1
    obtain ⟨z, hz, hzbound⟩ := hd
    exact ⟨z, hz.hasFDerivAt, by
      simpa [greenFourierDerivativeMajorant, Real.coe_toNNReal _ hM] using hzbound⟩

/-- Conservative right-endpoint cell error: M/X^2. -/
theorem norm_greenFourierQuadratureCellError_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    {j : ℕ} (hj : j ∈ Finset.Icc 1 X) :
    ‖greenFourierQuadratureCellError X k j‖ ≤
      greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  have hjI := Finset.mem_Icc.mp hj
  let a : ℝ := ((j - 1 : ℕ) : ℝ) / X
  let b : ℝ := (j : ℝ) / X
  have hab : a ≤ b := by
    dsimp [a, b]
    gcongr
    exact_mod_cast Nat.sub_le j 1
  have ha0 : 0 ≤ a := by positivity
  have hb1 : b ≤ 1 := by
    dsimp [b]
    exact (div_le_one hXr).2 (by exact_mod_cast hjI.2)
  have hLip := greenFourierBackgroundIntegrand_lipschitzOn hk
  have hpoint : ∀ t ∈ Set.uIcc a b,
      ‖greenFourierBackgroundIntegrand k t -
        greenFourierBackgroundIntegrand k b‖ ≤
        greenFourierDerivativeMajorant k / (X : ℝ) := by
    intro t ht
    have htI : t ∈ Set.Icc (0 : ℝ) 1 := by
      rw [Set.uIcc_of_le hab] at ht
      exact ⟨ha0.trans ht.1, ht.2.trans hb1⟩
    have hbI : b ∈ Set.Icc (0 : ℝ) 1 := ⟨ha0.trans hab, hb1⟩
    have h := hLip.dist_le htI hbI
    rw [Complex.dist_eq] at h
    have hwidth : |t - b| ≤ 1 / (X : ℝ) := by
      rw [Set.uIcc_of_le hab] at ht
      rw [abs_of_nonpos (sub_nonpos.mpr ht.2)]
      have hba : b - a = 1 / (X : ℝ) := by
        dsimp [a, b]
        push_cast
        have hjpos : 1 ≤ j := hjI.1
        rw [Nat.cast_sub hjpos]
        field_simp
        ring
      linarith
    have hM : 0 ≤ greenFourierDerivativeMajorant k := by
      unfold greenFourierDerivativeMajorant
      positivity
    simpa [Real.coe_toNNReal _ hM] using
      h.trans (mul_le_mul_of_nonneg_left hwidth hM)
  unfold greenFourierQuadratureCellError
  have hconst :
      ((1 / (X : ℝ) : ℝ) : ℂ) *
          greenFourierBackgroundIntegrand k (greenRightMeshPoint X j) =
        ∫ _t in a..b, greenFourierBackgroundIntegrand k b := by
    rw [intervalIntegral.integral_const]
    have hba : b - a = 1 / (X : ℝ) := by
      dsimp [a, b]
      push_cast
      have hjpos : 1 ≤ j := hjI.1
      rw [Nat.cast_sub hjpos]
      field_simp
      ring
    dsimp [greenRightMeshPoint, b]
    rw [hba]
    ring
  rw [hconst, ← intervalIntegral.integral_sub]
  calc
    ‖∫ t in a..b,
        (greenFourierBackgroundIntegrand k t -
          greenFourierBackgroundIntegrand k b)‖ ≤
      ∫ t in a..b,
        ‖greenFourierBackgroundIntegrand k t -
          greenFourierBackgroundIntegrand k b‖ := by
        exact intervalIntegral.norm_integral_le_of_norm_le_const
          (by positivity) (fun t ht => hpoint t ht)
    _ ≤ greenFourierDerivativeMajorant k / (X : ℝ)^2 := by
      have hwidth : b - a = 1 / (X : ℝ) := by
        dsimp [a, b]
        push_cast
        have hjpos : 1 ≤ j := hjI.1
        rw [Nat.cast_sub hjpos]
        field_simp
        ring
      rw [intervalIntegral.integral_const, hwidth]
      field_simp
      ring

end GRWTSK.RiemannHypothesis
