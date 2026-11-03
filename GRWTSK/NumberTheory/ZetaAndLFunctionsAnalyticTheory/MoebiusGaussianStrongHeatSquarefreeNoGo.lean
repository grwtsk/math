/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianStrongHeatSquarefreeShell
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib.Tactic

/-!
# Fixed strong heat: a squarefree shell-density NO-GO for positive radius

The preceding module derives, for the ACTUAL original Möbius source:
  sourceHeatRadiusEnergy(s,T) >=
    2*(2*card(squarefreeHeatShell T)*exp(-T/2))^2
for every fixed heat s>=1 and T>=7, WITHOUT any density theorem.

This leaf names the precise missing ARITHMETIC count:
  exists c>0, T0>=7, for all sufficiently large T in fixed G,
    card(squarefreeHeatShell T) >= c*exp T.
Classical squarefree density Q(x)=6x/pi²+O(sqrt x)
implies this in ordinary mathematics for every large T, but its
PINNED LEAN proof and its cutoff/log-shell adapter are not assumed.

Under a true count supplier the POSITIVE radius has the actual
exponential lower bound:
  sourceHeatRadiusEnergy(s,T) >= 8*c²*exp T.
On any unbounded fixed G, this excludes SubexponentialOn radiusEnergy,
already at exponent epsilon=1/2.

The one-sided signed actual ERROR waveform can cancel; this result
concerns ONLY the positive error radius, whose definition intentionally
forbids cancellation. Thus the strong heat observed energy can be
unconditionally O(T), while its corresponding positive reconstruction
certificate is mathematically unusable for RH. This is a NO-GO, not
a new proof of RH and not an axiom about squarefree density.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeNoGo

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeShell
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The still-unsupplied positive source density, phrased on the
ACTUAL original integer shells, with the scale set G chosen BEFORE
the positive growth exponent. Ordinary classical squarefree density
implies this property, but that theorem is not installed in this file. -/
def SquarefreeHeatShellDensityOn (G : Set ℝ) : Prop :=
  ∃ c T₀ : ℝ, 0 < c ∧ 7 ≤ T₀ ∧
    ∀ T : ℝ, T ∈ G → T₀ ≤ T →
      c * Real.exp T ≤ ((squarefreeHeatShell T).card : ℝ)

/-- Source-specific lower bound from a separately checked count of
ACTUAL squarefree original integers. No new arithmetic cancellation,
RH criterion, or global squarefree count is inferred. -/
theorem sourceHeatRadiusEnergy_exponential_of_shell_count
    {s c T : ℝ} (hs : 1 ≤ s) (hc : 0 ≤ c) (hT : 7 ≤ T)
    (hcount : c * Real.exp T ≤
      ((squarefreeHeatShell T).card : ℝ)) :
    8 * c ^ 2 * Real.exp T ≤
      sourceHeatRadiusEnergy s T := by
  let K : ℝ := ((squarefreeHeatShell T).card : ℝ) *
    (2 * Real.exp (-T / 2))
  let L : ℝ := 2 * c * Real.exp (T / 2)
  have hExp :
      Real.exp T * Real.exp (-T / 2) = Real.exp (T / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hsqExp :
      (Real.exp (T / 2)) ^ 2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hle : L ≤ K := by
    have hscaled := mul_le_mul_of_nonneg_right hcount
      (by positivity : 0 ≤ 2 * Real.exp (-T / 2))
    dsimp [K, L] at *
    calc
      2 * c * Real.exp (T / 2) =
          (c * Real.exp T) * (2 * Real.exp (-T / 2)) := by
        rw [show (c * Real.exp T) * (2 * Real.exp (-T / 2)) =
          2 * c * (Real.exp T * Real.exp (-T / 2)) by ring,
          hExp]
      _ ≤ ((squarefreeHeatShell T).card : ℝ) *
          (2 * Real.exp (-T / 2)) := hscaled
  have hL : 0 ≤ L := by dsimp [L]; positivity
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hsquare : L ^ 2 ≤ K ^ 2 := (sq_le_sq₀ hL hK).mpr hle
  have hfinite := sourceHeatRadiusEnergy_ge_squarefreeShell hs hT
  calc
    8 * c ^ 2 * Real.exp T = 2 * L ^ 2 := by
      dsimp [L]
      rw [hsqExp]
      ring
    _ ≤ 2 * K ^ 2 :=
      mul_le_mul_of_nonneg_left hsquare (by norm_num)
    _ ≤ sourceHeatRadiusEnergy s T := hfinite

/-- An AffineFrequent set of original positive real observation
times is necessarily unbounded. No rate-dependent favorable set
is selected in this theorem. -/
theorem affineFrequent_unbounded_above
    {G : Set ℝ} (hG : AffineFrequent G) :
    ∀ M : ℝ, ∃ T : ℝ, T ∈ G ∧ M ≤ T := by
  rcases hG with ⟨a, b, T₀, ha, hb, hT₀, hcover⟩
  intro M
  obtain ⟨S, hS, hlow, hhi⟩ :=
    hcover (max M T₀) (le_max_right _ _)
  exact ⟨S, hS, (le_max_left _ _).trans hlow⟩

/-- Given the genuine original-index squarefree shell count,
fixed strong s>=1 POSITIVE source reconstruction energy cannot
have an all-positive-rate subexponential upper bound on any
affinely frequent G. The proof already contradicts rate 1/2.
This is NOT a negative assertion about the SIGNED error wave. -/
theorem not_radiusEnergy_subexponential_of_shellDensity
    {s : ℝ} (hs : 1 ≤ s)
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hdensity : SquarefreeHeatShellDensityOn G) :
    ¬ SubexponentialOn
        (fun T => sourceHeatRadiusEnergy s T) G := by
  intro hsub
  obtain ⟨c, T₀, hc, hT₀, hcount⟩ := hdensity
  obtain ⟨C, T₁, hC, hT₁, hUpper⟩ :=
    hsub (1 / 2 : ℝ) (by norm_num)
  let K : ℝ := 8 * c ^ 2
  have hK : 0 < K := by dsimp [K]; positivity
  let Y : ℝ := 1 + C / K
  have hY : 0 < Y := by
    dsimp [Y]
    positivity
  obtain ⟨T, hTG, hbound⟩ :=
    affineFrequent_unbounded_above hcover
      (max T₀ (max T₁ (2 * Real.log Y)))
  have hT₀T : T₀ ≤ T :=
    (le_max_left _ _).trans hbound
  have hT₁T : T₁ ≤ T :=
    (le_max_left _ _).trans
      (le_max_right _ _ |>.trans hbound)
  have hT : 7 ≤ T := hT₀.trans hT₀T
  have hlog : Real.log Y ≤ T / 2 := by
    have hh : 2 * Real.log Y ≤ T :=
      (le_max_right _ _).trans
        ((le_max_right _ _).trans hbound)
    linarith
  have hexp : Y ≤ Real.exp (T / 2) := by
    calc
      Y = Real.exp (Real.log Y) := (Real.exp_log hY).symm
      _ ≤ Real.exp (T / 2) :=
        Real.exp_le_exp.mpr hlog
  have hKY : K * Y = K + C := by
    dsimp [Y]
    field_simp [ne_of_gt hK]
    ring
  have hKYle := mul_le_mul_of_nonneg_left hexp hK.le
  have hstrict : C < K * Real.exp (T / 2) := by
    linarith [hKYle, hKY, hK]
  have hLower : K * Real.exp T ≤ sourceHeatRadiusEnergy s T := by
    dsimp [K]
    exact sourceHeatRadiusEnergy_exponential_of_shell_count
      hs hc.le hT (hcount T hTG hT₀T)
  have hupper := hUpper T hTG hT₁T
  have hExp :
      Real.exp T = Real.exp (T / 2) * Real.exp (T / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hprod :
      K * Real.exp (T / 2) * Real.exp (T / 2) ≤
        C * Real.exp (T / 2) := by
    calc
      K * Real.exp (T / 2) * Real.exp (T / 2) =
          K * Real.exp T := by rw [hExp]; ring
      _ ≤ sourceHeatRadiusEnergy s T := hLower
      _ ≤ C * Real.exp ((1 / 2 : ℝ) * T) := hupper
      _ = C * Real.exp (T / 2) := by congr 1; ring
  have hcontradiction :
      0 < (K * Real.exp (T / 2) - C) *
            Real.exp (T / 2) :=
    mul_pos (sub_pos.mpr hstrict) (Real.exp_pos _)
  nlinarith

end GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSquarefreeNoGo
