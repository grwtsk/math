/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteHeatNewmanNormalization

/-!
# Uniform inverse stability for a finite logarithmic Fourier band

This module consumes the *existing* exact diagonal heat and inverse definitions
and the squared-frequency map. For an attained squared-frequency maximum B,
nonnegative heat time t, and positive proposed inverse gain C, it proves the
exact condition

  UniformInverseBound (squareFrequencies frequency) t C
    iff t * B <= log C.

For the nonnegative Fourier half-band m=0,...,N with spacing omega, the maximum
is (omega*N)^2. Setting omega=2*pi/log(c), c>1, gives the log-window condition
used by the finite Connes-style processor design. This is a bound on the inverse
of the specified diagonal heat *coordinates*, not on a zeta spectral operator.

Neither the existence of an arithmetic spectral chart, identification of the
actual Weil form, a source-zero correspondence, nor any statement about RH/GRH
is asserted. In particular no finite-window statement supplies an all-scale
convergence theorem. This file is not root-imported pending verification.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.OperatorTheory.FiniteBandHeatUniformBudget

open GRWTSK.Geometry.Hodge.FiniteHeatRecovery
open GRWTSK.RiemannHypothesis.FiniteHeatNewmanNormalization

/-- The exact scalar inverse gain is bounded uniformly precisely when the
heat-time budget is bounded by the log gain at an attained largest mode. -/
theorem uniformInverseBound_iff_time_maxSquare_le_log
    {ι : Type*} (frequency : ι → ℝ)
    (time gain maximumSquare : ℝ)
    (time_nonneg : 0 ≤ time) (gain_pos : 0 < gain)
    (band : ∀ i, (frequency i)^2 ≤ maximumSquare)
    (attained : ∃ i, (frequency i)^2 = maximumSquare) :
    UniformInverseBound (squareFrequencies frequency) time gain ↔
      time * maximumSquare ≤ Real.log gain := by
  constructor
  · intro bound
    obtain ⟨i, hi⟩ := attained
    have hgain :=
      ((uniformInverseBound_iff_gain
        (squareFrequencies frequency) time gain).mp bound) i
    change Real.exp (time * (frequency i)^2) ≤ gain at hgain
    rw [hi] at hgain
    have hlog : Real.exp (time * maximumSquare) ≤
        Real.exp (Real.log gain) := by
      simpa only [Real.exp_log gain_pos] using hgain
    exact Real.exp_le_exp.mp hlog
  · intro budget
    apply (uniformInverseBound_iff_gain
      (squareFrequencies frequency) time gain).2
    intro i
    have hmode : time * (frequency i)^2 ≤ Real.log gain :=
      (mul_le_mul_of_nonneg_left (band i) time_nonneg).trans budget
    change Real.exp (time * (frequency i)^2) ≤ gain
    calc
      Real.exp (time * (frequency i)^2) ≤
          Real.exp (Real.log gain) := Real.exp_le_exp.mpr hmode
      _ = gain := Real.exp_log gain_pos

/-- An even-sector Fourier frame can be indexed by modes 0,...,N.
The negative modes have the same squared frequencies and gain. -/
def linearFrequency (N : ℕ) (spacing : ℝ)
    (i : Fin (N + 1)) : ℝ :=
  spacing * (i.val : ℝ)

/-- The exact largest squared frequency is attained by the last Fourier mode.
No spectral approximation or probability model enters this result. -/
theorem linearFrequency_square_max
    (N : ℕ) (spacing : ℝ) (spacing_nonneg : 0 ≤ spacing) :
    (∀ i : Fin (N + 1),
        (linearFrequency N spacing i)^2 ≤
          (spacing * (N : ℝ))^2) ∧
      (∃ i : Fin (N + 1),
        (linearFrequency N spacing i)^2 =
          (spacing * (N : ℝ))^2) := by
  constructor
  · intro i
    have hiNat : i.val ≤ N := Nat.le_of_lt_succ i.isLt
    have hi : (i.val : ℝ) ≤ (N : ℝ) := by exact_mod_cast hiNat
    have hlow : 0 ≤ linearFrequency N spacing i :=
      mul_nonneg spacing_nonneg (Nat.cast_nonneg _)
    have htop : 0 ≤ spacing * (N : ℝ) :=
      mul_nonneg spacing_nonneg (Nat.cast_nonneg _)
    have hle : linearFrequency N spacing i ≤
        spacing * (N : ℝ) :=
      mul_le_mul_of_nonneg_left hi spacing_nonneg
    exact (sq_le_sq₀ hlow htop).mpr hle
  · refine ⟨⟨N, Nat.lt_succ_self N⟩, ?_⟩
    rfl

/-- Exact, sharp gain/time equivalence for the finite linear frequency grid.
This is the spectral-scale restriction needed by a heat-based decoder. -/
theorem linearBand_uniformInverseBound_iff
    (N : ℕ) (spacing time gain : ℝ)
    (spacing_nonneg : 0 ≤ spacing) (time_nonneg : 0 ≤ time)
    (gain_pos : 0 < gain) :
    UniformInverseBound
        (squareFrequencies (linearFrequency N spacing)) time gain ↔
      time * (spacing * (N : ℝ))^2 ≤ Real.log gain := by
  obtain ⟨band, attained⟩ :=
    linearFrequency_square_max N spacing spacing_nonneg
  exact uniformInverseBound_iff_time_maxSquare_le_log
    (linearFrequency N spacing) time gain
    ((spacing * (N : ℝ))^2)
    time_nonneg gain_pos band attained

/-- The logarithmic grid omega=2*pi/log(c) for c>1: fixed positive
heat time cannot retain a fixed inverse gain across arbitrary N.
This theorem makes the exact finite-N bound explicit; it does not claim
that the Connes arithmetic Weil operator has been diagonalized. -/
theorem logarithmicBand_uniformInverseBound_iff
    (N : ℕ) (c time gain : ℝ)
    (hc : 1 < c) (time_nonneg : 0 ≤ time)
    (gain_pos : 0 < gain) :
    UniformInverseBound
        (squareFrequencies
          (linearFrequency N (2 * Real.pi / Real.log c)))
        time gain ↔
      time * ((2 * Real.pi / Real.log c) * (N : ℝ))^2 ≤
        Real.log gain := by
  have hlog : 0 < Real.log c := Real.log_pos hc
  have hspacing : 0 ≤ 2 * Real.pi / Real.log c :=
    div_nonneg
      (mul_nonneg (by norm_num) Real.pi_pos.le) hlog.le
  exact linearBand_uniformInverseBound_iff
    N (2 * Real.pi / Real.log c) time gain
    hspacing time_nonneg gain_pos

end GRWTSK.OperatorTheory.FiniteBandHeatUniformBudget
