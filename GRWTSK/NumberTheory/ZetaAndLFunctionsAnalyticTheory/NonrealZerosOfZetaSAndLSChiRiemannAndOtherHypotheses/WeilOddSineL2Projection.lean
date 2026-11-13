/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineParseval
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic

/-!
# Exact L2 convergence of the source's odd finite-sine projections

The original zeroExtendedSine, sineCoordinates and finiteSine definitions
are reused without altering their normalization or their support. The
existing literal finite-sine L2 norm theorem plus finite integral
linearity give an exact squared residual identity for every L2 test.
Combining that identity with the existing source odd-sine Parseval
HasSum yields strong L2 convergence on the real odd supported carrier.

This is not an H1 convergence or Weil quadratic-form convergence
statement. The unbounded gamma-energy source is not continuous
in the L2 topology, so convergence of physical Weil energies requires
an additional, independently proved Sobolev estimate. An even function
is not generally approximated by these odd sine modes.

Mathematical consumer: WeilH1SineProjectionReturn.NativeH1ProjectionData,
specifically the L2 component of the missing physical H1
Fourier-sine approximation theorem. Source: WeilOddSineParseval.lean,
WeilOddSineForm.lean, WeilOddSineProjection.lean (actual source
normalization); grwtsk contributors' WeilH1SourceContinuity.md.

Proof status: MANUAL_LEAN_SOURCE_CANDIDATE. Elaboration,
full pinned build, fresh kernel checking, transitive axiom auditing,
and independent review NOT_RUN. No RH, Dirichlet GRH or
arithmetic Weil positivity claim.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineL2Projection

open OddRootProjection OddSineForm OddSineParseval OddShiftEnergy OddGammaOutput

/-- Finite linearity with the ORIGINAL sine coefficients. The input need
only be L2; oddness is required later for completeness, not this identity. -/
theorem integral_cross_finiteSine
    {M : ℕ} (T : ℝ) (f : ℝ → ℝ) (hf : MemLp f 2 volume)
    (x : Fin M → ℝ) :
    (∫ t : ℝ, f t * finiteSine T x t) =
      ∑ i : Fin M, x i * sineCoefficient T f (i.val + 1) := by
  have hi (i : Fin M) :
      Integrable (fun t : ℝ =>
        f t * zeroExtendedSine T (i.val + 1) t) :=
    hf.integrable_mul (memLp_zeroExtendedSine T (i.val + 1))
  calc
    _ = ∫ t : ℝ, ∑ i : Fin M,
          x i * (f t * zeroExtendedSine T (i.val + 1) t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [finiteSine, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = ∑ i : Fin M, ∫ t : ℝ,
          x i * (f t * zeroExtendedSine T (i.val + 1) t) := by
      exact integral_finsetSum _ (fun i _ => (hi i).const_mul (x i))
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      rw [integral_const_mul]
      unfold sineCoefficient
      congr 1
      apply integral_congr_ae
      filter_upwards [] with t
      ring

/-- Exact squared error of the physical L2 orthogonal projection onto
the first M *genuine* zero-extended odd source sines. -/
theorem source_sine_L2_residual_identity
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (hf : MemLp f 2 volume)
    (M : ℕ) :
    (∫ t : ℝ,
      (f t - finiteSine T (sineCoordinates T M f) t) ^ 2) =
        (∫ t : ℝ, f t ^ 2) -
          ∑ i : Fin M, (sineCoordinates T M f i) ^ 2 := by
  let x : Fin M → ℝ := sineCoordinates T M f
  let p : ℝ → ℝ := finiteSine T x
  have hf2 : Integrable (fun t : ℝ => f t ^ 2) := hf.integrable_sq
  have hp2 : Integrable (fun t : ℝ => p t ^ 2) :=
    (finiteSine_memLp T x).integrable_sq
  have hfp : Integrable (fun t : ℝ => f t * p t) :=
    hf.integrable_mul (finiteSine_memLp T x)
  have hcross : (∫ t : ℝ, f t * p t) =
      ∑ i : Fin M, (x i) ^ 2 := by
    calc
      _ = ∑ i : Fin M, x i * sineCoefficient T f (i.val + 1) :=
        integral_cross_finiteSine T f hf x
      _ = _ := by
        apply Finset.sum_congr rfl
        intro i _
        change (sineCoordinates T M f i) *
          sineCoefficient T f (i.val + 1) =
            (sineCoordinates T M f i) ^ 2
        rw [sineCoordinates_eq_sineCoefficient]
        ring
  have hproj : (∫ t : ℝ, p t ^ 2) =
      ∑ i : Fin M, (x i) ^ 2 := integral_finiteSine_sq T hT x
  change (∫ t : ℝ, (f t - p t) ^ 2) =
    (∫ t : ℝ, f t ^ 2) - ∑ i : Fin M, (x i) ^ 2
  calc
    _ = ∫ t : ℝ, (f t ^ 2 - 2 * (f t * p t)) + p t ^ 2 := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring
    _ = (∫ t : ℝ, f t ^ 2) -
        2 * (∫ t : ℝ, f t * p t) +
          (∫ t : ℝ, p t ^ 2) := by
      rw [integral_add (hf2.sub (hfp.const_mul 2)) hp2,
        integral_sub hf2 (hfp.const_mul 2), integral_const_mul]
    _ = _ := by
      rw [hcross, hproj]
      ring

/-- As the dimension increases, the original finite odd sine
synthesis converges strongly in physical L2, without assuming H1
smoothness, a Weil spectral gap, or any arithmetic sign. -/
theorem source_odd_sine_L2_residual_tendsto_zero
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    Tendsto (fun M : ℕ =>
      ∫ t : ℝ, (f t - finiteSine T
        (sineCoordinates T M f) t) ^ 2) atTop (𝓝 0) := by
  have hparseval := hasSum_source_sineCoefficient_sq T hT hf hodd hsupport
  have hreal :
      (∫ t : ℝ, ‖f t‖ ^ 2) = ∫ t : ℝ, f t ^ 2 := by
    apply integral_congr_ae
    filter_upwards [] with t
    simp only [Real.norm_eq_abs, sq_abs]
  rw [hreal] at hparseval
  have hpartial : Tendsto
      (fun M : ℕ => ∑ n ∈ Finset.range M,
        sineCoefficient T f (n + 1) ^ 2)
      atTop (𝓝 (∫ t : ℝ, f t ^ 2)) :=
    hparseval.tendsto_sum_nat
  have hconst : Tendsto
      (fun _ : ℕ => ∫ t : ℝ, f t ^ 2)
      atTop (𝓝 (∫ t : ℝ, f t ^ 2)) :=
    tendsto_const_nhds
  have hlimit : Tendsto
      (fun M : ℕ =>
        (∫ t : ℝ, f t ^ 2) -
          ∑ n ∈ Finset.range M,
            sineCoefficient T f (n + 1) ^ 2)
      atTop (𝓝 0) := by
    simpa only [sub_self] using hconst.sub hpartial
  have hfunc :
      (fun M : ℕ =>
        ∫ t : ℝ, (f t - finiteSine T
          (sineCoordinates T M f) t) ^ 2) =
      (fun M : ℕ =>
        (∫ t : ℝ, f t ^ 2) -
          ∑ n ∈ Finset.range M,
            sineCoefficient T f (n + 1) ^ 2) := by
    funext M
    simpa only [Fin.sum_univ_eq_sum_range,
      sineCoordinates_eq_sineCoefficient] using
        (source_sine_L2_residual_identity T hT f hf M)
  rw [hfunc]
  exact hlimit

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineL2Projection
