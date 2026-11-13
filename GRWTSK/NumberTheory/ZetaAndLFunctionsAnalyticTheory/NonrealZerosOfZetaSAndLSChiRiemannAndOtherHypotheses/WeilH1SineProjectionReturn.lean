/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilGammaBlockReturn
import Mathlib.Tactic

/-!
# Quantitative H1 sine cutoff to the original Weil source matrix

This is an exact CONSUMER of the previously written fixed-window H1
continuity and Dirichlet-sine projection estimates. Those analytical
estimates are explicit fields of `NativeH1ProjectionData`: they are not
silently assumed to follow from a matrix name, a spectral gap, or a
finite sign certificate. All matrix/source equalities are the existing
source-exact gamma, prime, and signed zeta-pole return candidates.

For a supported real odd H2 test with physical H1 norm H, second derivative
L2 norm D, and physical-form H1 continuity coefficient C, the classical
sine projection estimate yields an H1 error e_M <= 2*D/omega_M when
omega_M = pi*(M+1)/T >= 1. A source return within epsilon follows for
  eta = min(1, epsilon / (1+C*(2*H+1)))
and every M with
  pi*(M+1) >= T * max(1, 2*D/eta).
The M may depend on f, T and epsilon. No same M works for all roots.

The previous `NativeProjectedEnergyUpper` is thereby supplied for zeta and
for each ACTUAL primitive nonprincipal paired character if its true physical
H1 bounds are supplied. The still-unproved analytic input is therefore
precisely H1 continuity/projection on the intended source class rather than
an opaque matrix-negativity or matrix-approximation assumption.

This module claims NO unconditional off-line-zero witness, NO universal
subexponential Weil lower budget, and NO RH or GRH proof.
Source: WeilH1SourceContinuity.md Sections IV--V and
WeilPhysicalSineNegativeReturn.md, equations (3)--(7).
Manual Lean SOURCE_PROOF_CANDIDATE. Lean elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.H1SineProjectionReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.AdaptiveSineGrowth
open GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSineNegativeReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.GammaBlockReturn
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The actual Dirichlet sine frequency of the first omitted mode. -/
def omittedSineFrequency (T : ℝ) (M : ℕ) : ℝ :=
  Real.pi * ((M : ℝ) + 1) / T

/-- Explicit written analytical suppliers on ONE actual physical test.
`error M` is a supplied nonnegative H1 error allowance for the genuine
first-M sine projection, not a definitionally identified Sobolev norm.
The error and source-continuity bounds are carried as assumptions until the
corresponding Sobolev density/continuity proofs are native Lean theorems. -/
structure NativeH1ProjectionData
    (sourceValue : ℝ → (ℝ → ℝ) → ℝ) (T : ℝ) (f : ℝ → ℝ) where
  H : ℝ
  C : ℝ
  D : ℝ
  error : ℕ → ℝ
  H_nonneg : 0 ≤ H
  C_nonneg : 0 ≤ C
  D_nonneg : 0 ≤ D
  error_nonneg : ∀ M, 0 ≤ error M
  error_le : ∀ M, 1 ≤ omittedSineFrequency T M →
    error M ≤ 2 * D / omittedSineFrequency T M
  physical_continuity : ∀ M,
    |sourceValue T (finiteSine T (sineCoordinates T M f)) - sourceValue T f| ≤
      C * (2 * H + error M) * error M

/-- An explicit positive target tolerance, including the C=0 case. -/
def projectionTolerance
    {sourceValue : ℝ → (ℝ → ℝ) → ℝ} {T : ℝ} {f : ℝ → ℝ}
    (b : NativeH1ProjectionData sourceValue T f) (epsilon : ℝ) : ℝ :=
  min 1 (epsilon / (1 + b.C * (2 * b.H + 1)))

private theorem projectionTolerance_pos
    {sourceValue : ℝ → (ℝ → ℝ) → ℝ} {T : ℝ} {f : ℝ → ℝ}
    (b : NativeH1ProjectionData sourceValue T f)
    {epsilon : ℝ} (hepsilon : 0 < epsilon) :
    0 < projectionTolerance b epsilon := by
  unfold projectionTolerance
  apply lt_min (by norm_num)
  apply div_pos hepsilon
  have hc : 0 ≤ b.C * (2 * b.H + 1) :=
    mul_nonneg b.C_nonneg (by linarith [b.H_nonneg])
  linarith

/-- The elementary frequency threshold needed to select the physical
first-M sine projection without any uniform-in-test mode cutoff. -/
theorem exists_sine_cutoff (T R : ℝ) (hT : 0 < T) (hR : 0 ≤ R) :
    ∃ M : ℕ, R ≤ omittedSineFrequency T M := by
  obtain ⟨M, hM⟩ := exists_nat_gt (T * R / Real.pi)
  refine ⟨M, ?_⟩
  have hscaled : T * R < (M : ℝ) * Real.pi :=
    (div_lt_iff₀ Real.pi_pos).mp hM
  unfold omittedSineFrequency
  apply (le_div_iff₀ hT).mpr
  nlinarith [Real.pi_pos]

/-- Every mode above the explicitly stated cutoff has a physical-source
energy error <= epsilon. No arithmetic Weil sign is needed. -/
theorem physical_energy_upper_at_cutoff
    (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (b : NativeH1ProjectionData sourceValue T f)
    (epsilon : ℝ) (hepsilon : 0 < epsilon) (M : ℕ)
    (hmode : T * max 1 (2 * b.D / projectionTolerance b epsilon) ≤
      Real.pi * ((M : ℝ) + 1)) :
    sourceValue T (finiteSine T (sineCoordinates T M f)) ≤
      sourceValue T f + epsilon := by
  let eta := projectionTolerance b epsilon
  have heta : 0 < eta := projectionTolerance_pos b hepsilon
  have heta_one : eta ≤ 1 := min_le_left _ _
  have heta_budget : eta ≤ epsilon / (1 + b.C * (2 * b.H + 1)) :=
    min_le_right _ _
  have homega_pos : 0 < omittedSineFrequency T M := by
    unfold omittedSineFrequency
    positivity
  have hfreq : 2 * b.D / eta ≤ omittedSineFrequency T M := by
    have hmax : 2 * b.D / eta ≤ max 1 (2 * b.D / eta) := le_max_right _ _
    have hsource : max 1 (2 * b.D / eta) ≤ omittedSineFrequency T M := by
      unfold omittedSineFrequency
      apply (le_div_iff₀ hT).mpr
      nlinarith [hmode]
    exact hmax.trans hsource
  have herror_le_eta : b.error M ≤ eta := by
    have hprod : 2 * b.D ≤ eta * omittedSineFrequency T M := by
      nlinarith [(div_le_iff₀ heta).mp hfreq]
    have hdiv : 2 * b.D / omittedSineFrequency T M ≤ eta :=
      (div_le_iff₀ homega_pos).mpr (by nlinarith [hprod])
    have hfreq_one : 1 ≤ omittedSineFrequency T M := by
      have hmin : 1 ≤ max 1 (2 * b.D / eta) := le_max_left _ _
      exact hmin.trans (by
        unfold omittedSineFrequency
        apply (le_div_iff₀ hT).mpr
        nlinarith [hmode])
    exact (b.error_le M hfreq_one).trans hdiv
  have herror_nonneg : 0 ≤ b.error M := b.error_nonneg M
  have hprod1 : (2 * b.H + b.error M) * b.error M ≤
      (2 * b.H + 1) * eta := by
    calc
      _ ≤ (2 * b.H + eta) * b.error M :=
        mul_le_mul_of_nonneg_right (by linarith) herror_nonneg
      _ ≤ (2 * b.H + eta) * eta :=
        mul_le_mul_of_nonneg_left herror_le_eta (by linarith [b.H_nonneg])
      _ ≤ (2 * b.H + 1) * eta :=
        mul_le_mul_of_nonneg_right (by linarith) heta.le
  have hprodC : b.C * ((2 * b.H + b.error M) * b.error M) ≤
      b.C * ((2 * b.H + 1) * eta) :=
    mul_le_mul_of_nonneg_left hprod1 b.C_nonneg
  have hdenom : 0 < 1 + b.C * (2 * b.H + 1) := by
    have hc := mul_nonneg b.C_nonneg (by linarith [b.H_nonneg] : 0 ≤ 2 * b.H + 1)
    linarith
  have hepsbound : (1 + b.C * (2 * b.H + 1)) * eta ≤ epsilon :=
    (le_div_iff₀ hdenom).mp heta_budget
  have hterm : b.C * (2 * b.H + b.error M) * b.error M ≤ epsilon := by
    have hsubset : b.C * ((2 * b.H + 1) * eta) ≤
        (1 + b.C * (2 * b.H + 1)) * eta := by
      nlinarith [heta.le]
    calc
      _ = b.C * ((2 * b.H + b.error M) * b.error M) := by ring
      _ ≤ _ := hprodC
      _ ≤ _ := hsubset
      _ ≤ epsilon := hepsbound
  have hdiff := (abs_le.mp (b.physical_continuity M)).2
  linarith

/-- The exact source-matrix identity plus per-test H1 estimates implies
`NativeProjectedEnergyUpper` at the SAME original test and support. -/
theorem native_projected_energy_upper_of_h1
    (A : AllModeSineFamily) (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (b : NativeH1ProjectionData sourceValue T f)
    (hsource : ∀ M : ℕ,
      quadratic (A T M) (sineCoordinates T M f) =
        sourceValue T (finiteSine T (sineCoordinates T M f))) :
    NativeProjectedEnergyUpper A sourceValue T f := by
  intro epsilon hepsilon
  let eta := projectionTolerance b epsilon
  have heta : 0 < eta := projectionTolerance_pos b hepsilon
  let R : ℝ := max 1 (2 * b.D / eta)
  have hR : 0 ≤ R := (zero_le_one.trans (le_max_left _ _))
  obtain ⟨M, hM⟩ := exists_sine_cutoff T R hT hR
  have hmode : T * R ≤ Real.pi * ((M : ℝ) + 1) := by
    unfold omittedSineFrequency at hM
    nlinarith [(le_div_iff₀ hT).mp hM]
  refine ⟨M, ?_⟩
  rw [hsource M]
  exact physical_energy_upper_at_cutoff sourceValue T hT f b epsilon hepsilon M hmode

/-- Original pole-inclusive zeta matrix, without an extra gamma assumption.
The remaining inputs are exactly per-test physical H1 estimates. -/
theorem zeta_native_projected_energy_upper_of_h1
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (b : NativeH1ProjectionData zetaOddPhysicalValue T f) :
    NativeProjectedEnergyUpper zetaAllModes zetaOddPhysicalValue T f := by
  apply native_projected_energy_upper_of_h1
    zetaAllModes zetaOddPhysicalValue T hT f b
  intro M
  exact zeta_matrix_eq_physical T hT M (sineCoordinates T M f)

/-- Original primitive nonprincipal paired-character matrix, with real
conjugate-pair weights, gamma parity and conductor unchanged. -/
theorem primitive_native_projected_energy_upper_of_h1
    {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (b : NativeH1ProjectionData
      (primitivePairedOddPhysicalValue chi hp hn) T f) :
    NativeProjectedEnergyUpper (pairedAllModes chi hp hn)
      (primitivePairedOddPhysicalValue chi hp hn) T f := by
  apply native_projected_energy_upper_of_h1
    (pairedAllModes chi hp hn)
    (primitivePairedOddPhysicalValue chi hp hn) T hT f b
  intro M
  exact primitive_matrix_eq_physical chi hp hn T hT M (sineCoordinates T M f)


/-- Explicit negative-margin retention at every sufficiently large cutoff,
not just an existential approximation statement. The source value remains
an original physical Weil form via the supplied source-matrix identity. -/
theorem native_negative_at_cutoff_of_h1
    (A : AllModeSineFamily) (sourceValue : ℝ → (ℝ → ℝ) → ℝ)
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (b : NativeH1ProjectionData sourceValue T f)
    (d : ℝ) (hd : 0 < d) (hnegative : sourceValue T f ≤ -d)
    (M : ℕ)
    (hmode : T * max 1 (2 * b.D / projectionTolerance b (d / 4)) ≤
      Real.pi * ((M : ℝ) + 1))
    (hsource : quadratic (A T M) (sineCoordinates T M f) =
      sourceValue T (finiteSine T (sineCoordinates T M f))) :
    quadratic (A T M) (sineCoordinates T M f) ≤ -(3 * d / 4) := by
  have henergy := physical_energy_upper_at_cutoff
    sourceValue T hT f b (d / 4) (by positivity) M hmode
  rw [hsource]
  linarith

/-- True original zeta quadratic negativity and a paid original-coefficient
mass bound at every cutoff satisfying the displayed arithmetic threshold. -/
theorem zeta_negative_matrix_at_cutoff
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 MeasureTheory.volume) (hodd : Function.Odd f)
    (hsupport : ∀ t : ℝ, t ∉ Set.Icc (-T) T → f t = 0)
    (K : ℝ) (hmass : (∫ t : ℝ, ‖f t‖ ^ 2) ≤ K)
    (b : NativeH1ProjectionData zetaOddPhysicalValue T f)
    (d : ℝ) (hd : 0 < d)
    (hnegative : zetaOddPhysicalValue T f ≤ -d)
    (M : ℕ)
    (hmode : T * max 1 (2 * b.D / projectionTolerance b (d / 4)) ≤
      Real.pi * ((M : ℝ) + 1)) :
    (∑ i : Fin M, sineCoordinates T M f i ^ 2) ≤ K ∧
      quadratic (zetaSineMatrix T M) (sineCoordinates T M f) ≤
        -(3 * d / 4) := by
  refine ⟨(source_sine_bessel T hT f hf hodd hsupport M).trans hmass, ?_⟩
  exact native_negative_at_cutoff_of_h1
    zetaAllModes zetaOddPhysicalValue T hT f b d hd hnegative M hmode
    (zeta_matrix_eq_physical T hT M (sineCoordinates T M f))

/-- The primitive nonprincipal matrix retains its actual phases, parity,
conductor, and every active prime power in the same negative-margin return. -/
theorem primitive_negative_matrix_at_cutoff
    {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 MeasureTheory.volume) (hodd : Function.Odd f)
    (hsupport : ∀ t : ℝ, t ∉ Set.Icc (-T) T → f t = 0)
    (K : ℝ) (hmass : (∫ t : ℝ, ‖f t‖ ^ 2) ≤ K)
    (b : NativeH1ProjectionData (primitivePairedOddPhysicalValue chi hp hn) T f)
    (d : ℝ) (hd : 0 < d)
    (hnegative : primitivePairedOddPhysicalValue chi hp hn T f ≤ -d)
    (M : ℕ)
    (hmode : T * max 1 (2 * b.D / projectionTolerance b (d / 4)) ≤
      Real.pi * ((M : ℝ) + 1)) :
    (∑ i : Fin M, sineCoordinates T M f i ^ 2) ≤ K ∧
      quadratic (primitivePairSineMatrix chi hp hn T M) (sineCoordinates T M f) ≤
        -(3 * d / 4) := by
  refine ⟨(source_sine_bessel T hT f hf hodd hsupport M).trans hmass, ?_⟩
  exact native_negative_at_cutoff_of_h1
    (pairedAllModes chi hp hn) (primitivePairedOddPhysicalValue chi hp hn)
    T hT f b d hd hnegative M hmode
    (primitive_matrix_eq_physical chi hp hn T hT M (sineCoordinates T M f))

end GRWTSK.NumberTheory.WeilQuadraticForm.H1SineProjectionReturn
