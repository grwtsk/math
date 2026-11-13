/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilOddSineClassicalGreen
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilOddSineL2Projection
import Mathlib.Tactic

/-!
# Original-source variational physical H1 return

The prior WeilOddSineClassicalGreen establishes a candidate classical
coefficient Green identity. This module obtains the next PHYSICAL step
without importing cosine completeness, a substitute spectral model, or
any arithmetic form positivity.

The genuine finiteSine and sineCoordinates define the physical residual.
It is proved orthogonal, in the literal whole-line Lebesgue integral, to
EVERY original finite-sine trial of the same dimension. In particular it
is orthogonal to the literal finite-sine synthesis of the negative
frequency-squared coefficients, which is the interior second derivative
of the projection.

The remaining interval integration-by-parts step is represented by
NativeVariationalIBP, a narrowly stated, unproved proposition identifying
the physical derivative-energy integral with the original residual paired
against the DIFFERENCE of true second derivatives. It is not claimed to
follow from MemLp, from matching matrix names, or from RH.

Under that input and the separately explicit physical L2 spectral-rate
bound (the limit of the previous finite fourth-moment estimates), a
completed-square argument yields the sharp physical derivative bound
    omega_(M+1)^2 * ||f'-(P_M f)'||_2^2 <= ||f''||_2^2.
Together with the true L2 error bound, this yields the complete physical
H1 error estimate, WITHOUT cosine Parseval.

Neither NativeVariationalIBP nor the infinite-tail-to-L2 rate conversion
is established in this file. This is a MANUAL_LEAN_SOURCE_CANDIDATE:
elaboration, dependency build, kernel replay, transitive axiom audit and
independent mathematical review NOT_RUN. No RH, Dirichlet GRH, or signed
Weil arithmetic lower budget is proved.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineVariationalH1

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergy
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineL2Projection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineH2SpectralTail
open GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaOutput

/-- Cross energy of TWO real coefficient vectors in the original source.
The exact sine modes are orthonormal for T>0. -/
theorem finiteSine_cross_eq_dot (T : ℝ) (hT : 0 < T)
    {M : ℕ} (x y : Fin M → ℝ) :
    (∫ t : ℝ, finiteSine T x t * finiteSine T y t) =
      ∑ i : Fin M, x i * y i := by
  have hGram (i j : Fin M) :
      sineCorrelation T (i.val + 1) (j.val + 1) 0 =
        if i = j then 1 else 0 := by
    by_cases hij : i = j
    · subst j
      simpa only [ite_eq_left True.intro, Nat.succ_eq_add_one] using
        sineCorrelation_self_zero T hT (Nat.succ_pos i.val)
    · rw [ite_eq_right hij]
      exact sineCorrelation_zero_shift T hT
        (fun h => hij (Fin.ext (by omega)))
  have h := integral_finiteSine_product T 0 x y
  simp only [add_zero, hGram] at h
  calc
    _ = ∑ i : Fin M, ∑ j : Fin M,
          (x i * y j) * (if i = j then 1 else 0) := h
    _ = ∑ i : Fin M, x i * y i := by
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_eq_single i]
      · simp
      · intro j _ hji
        simp [Ne.symm hji]
      · simp

/-- The ORIGINAL physical finite-mode projection and its genuine residual. -/
def nativeProjection (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : ℝ → ℝ :=
  finiteSine T (sineCoordinates T M f)

def nativeResidual (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : ℝ → ℝ :=
  fun t => f t - nativeProjection T M f t

/-- The projected second-derivative Fourier combination; it lies in the
same original M-dimensional sine space. Its physical derivative identity
on (-T,T) is a separate classical calculation, not a definition of f''. -/
def projectedSecondMode (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : ℝ → ℝ :=
  finiteSine T (fun i : Fin M =>
    -(sourceModeFrequency T i.val) ^ 2 * sineCoordinates T M f i)

/-- Every original finite sine trial is L2-orthogonal to the TRUE residual
of its coefficient projection. This does not depend on oddness of f:
oddness is needed only for convergence to zero. -/
theorem nativeResidual_orthogonal_finiteSine
    (T : ℝ) (hT : 0 < T)
    (f : ℝ → ℝ) (hf : MemLp f 2 volume)
    (M : ℕ) (y : Fin M → ℝ) :
    (∫ t : ℝ, nativeResidual T M f t * finiteSine T y t) = 0 := by
  let x : Fin M → ℝ := sineCoordinates T M f
  let p : ℝ → ℝ := finiteSine T x
  let q : ℝ → ℝ := finiteSine T y
  have hfq : Integrable (fun t : ℝ => f t * q t) :=
    hf.integrable_mul (finiteSine_memLp T y)
  have hpq : Integrable (fun t : ℝ => p t * q t) := by
    simpa only [p, q, add_zero] using
      (integrable_finiteSine_product T 0 x y)
  have hcrossF :
      (∫ t : ℝ, f t * q t) =
        ∑ i : Fin M, y i * sineCoordinates T M f i := by
    simpa only [q, sineCoordinates_eq_sineCoefficient] using
      (integral_cross_finiteSine T f hf y)
  have hcrossP :
      (∫ t : ℝ, p t * q t) =
        ∑ i : Fin M, x i * y i :=
    finiteSine_cross_eq_dot T hT x y
  calc
    _ = (∫ t : ℝ, f t * q t) -
        (∫ t : ℝ, p t * q t) := by
      change (∫ t : ℝ, (f t - p t) * q t) = _
      rw [show (fun t : ℝ => (f t - p t) * q t) =
        (fun t : ℝ => f t * q t - p t * q t) by
          funext t
          ring]
      exact integral_sub hfq hpq
    _ = (∑ i : Fin M, y i * x i) -
          (∑ i : Fin M, x i * y i) := by
      rw [hcrossF, hcrossP]
      rfl
    _ = 0 := by
      rw [← Finset.sum_sub_distrib]
      simp only [mul_comm, sub_self, Finset.sum_const_zero]

/-- The source residual is in particular orthogonal to the exact finite
sine representation of the projected second derivative. -/
theorem nativeResidual_orthogonal_projectedSecond
    (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : MemLp f 2 volume) (M : ℕ) :
    (∫ t : ℝ, nativeResidual T M f t *
      projectedSecondMode T M f t) = 0 := by
  exact nativeResidual_orthogonal_finiteSine T hT f hf M
    (fun i : Fin M => -(sourceModeFrequency T i.val) ^ 2 *
      sineCoordinates T M f i)

/-- The ORIGINAL interior normalized cosine derivative profile, extended
by zero outside the same support. Values at the two endpoints are irrelevant to L2.
Identification with the weak derivative of finiteSine is NOT asserted by
this definition and requires an independent interval derivative proof. -/
def sourceSineDerivativeProfile (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  if t ∈ Icc (-T) T then
    (OddOutputTrace.frequency T n *
      Real.cos (OddOutputTrace.frequency T n * t)) / Real.sqrt T
  else 0

def nativeProjectedDerivative (T : ℝ) (M : ℕ) (f : ℝ → ℝ) :
    ℝ → ℝ :=
  fun t => ∑ i : Fin M, sineCoordinates T M f i *
    sourceSineDerivativeProfile T (i.val + 1) t

/-- True physical Lebesgue residual energies. The derivative-energy
interpretation assumes first is the source derivative and the profile is
the a.e. derivative of the finite zero-extended sine trial. -/
def physicalL2Error (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, (nativeResidual T M f t) ^ 2

def physicalDerivativeError (T : ℝ) (M : ℕ)
    (f first : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, (first t - nativeProjectedDerivative T M f t) ^ 2

/-- The SINGLE remaining physical variational Green relation. For
supported classical C2 tests with f(±T)=0, this follows by integration
by parts for the physical residual and the interior second derivative.
Its proof is not smuggled in via the source's finite spectral estimate. -/
def NativeVariationalIBP (T : ℝ) (M : ℕ)
    (f first second : ℝ → ℝ) : Prop :=
  physicalDerivativeError T M f first =
    -(∫ t : ℝ, nativeResidual T M f t *
      (second t - projectedSecondMode T M f t))

/-- The genuine finite-sine orthogonality removes ALL projected second
derivative terms from the physical integration-by-parts identity. -/
theorem physical_variation_eq_neg_source_second
    (T : ℝ) (hT : 0 < T) (f first second : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hs : MemLp second 2 volume)
    (M : ℕ) (hvar : NativeVariationalIBP T M f first second) :
    physicalDerivativeError T M f first =
      -(∫ t : ℝ, nativeResidual T M f t * second t) := by
  let e := nativeResidual T M f
  let pSecond := projectedSecondMode T M f
  have he : MemLp e 2 volume :=
    hf.sub (finiteSine_memLp T (sineCoordinates T M f))
  have hp : MemLp pSecond 2 volume :=
    finiteSine_memLp T _
  have hES : Integrable (fun t : ℝ => e t * second t) :=
    he.integrable_mul hs
  have hEP : Integrable (fun t : ℝ => e t * pSecond t) :=
    he.integrable_mul hp
  have hsplit :
      (∫ t : ℝ, e t * (second t - pSecond t)) =
      (∫ t : ℝ, e t * second t) -
        (∫ t : ℝ, e t * pSecond t) := by
    calc
      _ = ∫ t : ℝ, e t * second t - e t * pSecond t := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := integral_sub hES hEP
  have hzero := nativeResidual_orthogonal_projectedSecond
    T hT f hf M
  change physicalDerivativeError T M f first =
    -(∫ t : ℝ, e t * (second t - pSecond t)) at hvar
  rw [hsplit, hzero, sub_zero] at hvar
  exact hvar

/-- Weighted Young inequality integrated on the ACTUAL real L2 source.
No cosine Parseval or sqrt-normalization is used. The exact cross source
term is paid by the nonnegative square (w^2 * e + second)^2. -/
theorem physical_gradient_young_bound
    (w : ℝ) (_hw : 0 < w)
    (e second : ℝ → ℝ)
    (he : MemLp e 2 volume)
    (hs : MemLp second 2 volume)
    (Denergy : ℝ)
    (hvari : Denergy = -(∫ t : ℝ, e t * second t))
    (hL2rate :
      w ^ 4 * (∫ t : ℝ, e t ^ 2) ≤ ∫ t : ℝ, second t ^ 2) :
    w ^ 2 * Denergy ≤ ∫ t : ℝ, second t ^ 2 := by
  have he2 : Integrable (fun t : ℝ => e t ^ 2) := he.integrable_sq
  have hs2 : Integrable (fun t : ℝ => second t ^ 2) := hs.integrable_sq
  have hmix : Integrable (fun t : ℝ => e t * second t) :=
    he.integrable_mul hs
  have ha : Integrable (fun t : ℝ => w ^ 4 * e t ^ 2) :=
    he2.const_mul (w ^ 4)
  have hb : Integrable (fun t : ℝ => (2 * w ^ 2) *
    (e t * second t)) := hmix.const_mul (2 * w ^ 2)
  have hSquareNonneg :
      0 ≤ ∫ t : ℝ, (w ^ 2 * e t + second t) ^ 2 :=
    integral_nonneg (fun t => sq_nonneg _)
  have hSquare :
      (∫ t : ℝ, (w ^ 2 * e t + second t) ^ 2) =
        (w ^ 4) * (∫ t : ℝ, e t ^ 2) +
        (2 * w ^ 2) * (∫ t : ℝ, e t * second t) +
        (∫ t : ℝ, second t ^ 2) := by
    calc
      _ = ∫ t : ℝ, (w ^ 4 * e t ^ 2 +
          (2 * w ^ 2) * (e t * second t)) +
          second t ^ 2 := by
        apply integral_congr_ae
        filter_upwards [] with t
        ring
      _ = _ := by
        rw [integral_add (ha.add hb) hs2, integral_add ha hb,
          integral_const_mul, integral_const_mul]
  rw [hSquare] at hSquareNonneg
  rw [hvari]
  nlinarith only [hSquareNonneg, hL2rate]

/-- The physical sharp H1 estimate follows from just TWO explicit
analytic inputs: true interval variational IBP and the source L2 tail
rate. The orthogonality and weighted real-variable inequality are proved
here on the literal coefficient projection. -/
theorem physical_H1_error_le_of_variational
    (T : ℝ) (hT : 0 < T) (M : ℕ)
    (f first second : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hs : MemLp second 2 volume)
    (hvar : NativeVariationalIBP T M f first second)
    (hL2rate :
      (sourceModeFrequency T M) ^ 4 * physicalL2Error T M f ≤
        ∫ t : ℝ, second t ^ 2) :
    physicalL2Error T M f + physicalDerivativeError T M f first ≤
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 4 +
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 2 := by
  let w := sourceModeFrequency T M
  let e := nativeResidual T M f
  have hw : 0 < w := sourceModeFrequency_pos T hT M
  have he : MemLp e 2 volume :=
    hf.sub (finiteSine_memLp T (sineCoordinates T M f))
  have hvariation :=
    physical_variation_eq_neg_source_second
      T hT f first second hf hs M hvar
  have hD :
      w ^ 2 * physicalDerivativeError T M f first ≤
        ∫ t : ℝ, second t ^ 2 := by
    apply physical_gradient_young_bound w hw e second he hs
      (physicalDerivativeError T M f first)
    · exact hvariation
    · simpa only [w, e, physicalL2Error] using hL2rate
  have hL2div :
      physicalL2Error T M f ≤
      (∫ t : ℝ, second t ^ 2) / w ^ 4 :=
    (le_div_iff₀ (pow_pos hw 4)).2 (by simpa only [w] using hL2rate)
  have hDdiv :
      physicalDerivativeError T M f first ≤
      (∫ t : ℝ, second t ^ 2) / w ^ 2 :=
    (le_div_iff₀ (pow_pos hw 2)).2 hD
  exact (add_le_add hL2div hDdiv)

/-- Identify the existing finite high-tail Fin N summation with the
corresponding original source coefficient half-open index range M to N. -/
private theorem finiteHighL2Tail_eq_source_Ico
    (T : ℝ) (f : ℝ → ℝ) (M N : ℕ) :
    finiteHighL2Tail T f M N =
      ∑ n ∈ Finset.Ico M N, sineCoefficient T f (n + 1) ^ 2 := by
  unfold finiteHighL2Tail
  simp only [Fin.sum_univ_eq_sum_range, sineCoordinates_eq_sineCoefficient]
  rw [← Finset.sum_filter]
  congr 1
  ext i
  simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ico]
  omega

/-- NO new L2-rate premise is necessary once the actual odd source
Parseval and the already-proved finite fourth-moment Bessel estimates
are available. The uniformly bounded high partial sums converge
to the PHYSICAL squared L2 projection residual. -/
theorem physical_L2_fourth_moment_rate
    (T : ℝ) (hT : 0 < T) (M : ℕ)
    (f second : ℝ → ℝ)
    (hf : MemLp f 2 volume)
    (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hs : MemLp second 2 volume)
    (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Icc (-T) T → second t = 0)
    (hgreen : SourceSecondSineGreen T f second) :
    (sourceModeFrequency T M) ^ 4 * physicalL2Error T M f ≤
      ∫ t : ℝ, second t ^ 2 := by
  let w := sourceModeFrequency T M
  let a : ℕ → ℝ := fun n => sineCoefficient T f (n + 1) ^ 2
  let S : ℝ := ∫ t : ℝ, second t ^ 2
  let E : ℝ := ∫ t : ℝ, f t ^ 2
  let head : ℝ := ∑ n ∈ Finset.range M, a n
  have hfinite (N : ℕ) (hMN : M ≤ N) :
      w ^ 4 * ((∑ n ∈ Finset.range N, a n) - head) ≤ S := by
    have h := (finite_high_mode_spectral_bounds T hT f second
      hs hoddSecond hsupportSecond hgreen M N).1
    rw [finiteHighL2Tail_eq_source_Ico] at h
    have hsplit : head +
        (∑ n ∈ Finset.Ico M N, a n) =
          ∑ n ∈ Finset.range N, a n := by
      exact Finset.sum_range_add_sum_Ico a hMN
    change w ^ 4 *
      (∑ n ∈ Finset.Ico M N, a n) ≤ S at h
    linarith
  have hparseval := hasSum_source_sineCoefficient_sq
    T hT hf hodd hsupport
  have hmass : (∫ t : ℝ, ‖f t‖ ^ 2) = E := by
    apply integral_congr_ae
    filter_upwards [] with t
    simp only [Real.norm_eq_abs, sq_abs]
  rw [hmass] at hparseval
  have hpartial : Tendsto
      (fun N : ℕ => ∑ n ∈ Finset.range N, a n)
      Filter.atTop (nhds E) :=
    hparseval.tendsto_sum_nat
  have hlim : Tendsto
      (fun N : ℕ => w ^ 4 *
        ((∑ n ∈ Finset.range N, a n) - head))
      Filter.atTop (nhds (w ^ 4 * (E - head))) :=
    (hpartial.sub tendsto_const_nhds).const_mul _
  have heventually :
      ∀ᶠ N : ℕ in Filter.atTop,
        w ^ 4 * ((∑ n ∈ Finset.range N, a n) - head) ≤ S :=
    (Filter.eventually_ge_atTop M).mono hfinite
  have hlimitBound : w ^ 4 * (E - head) ≤ S :=
    le_of_tendsto hlim heventually
  have hresidual := source_sine_L2_residual_identity T hT f hf M
  change w ^ 4 * (∫ t : ℝ,
    (f t - finiteSine T (sineCoordinates T M f) t) ^ 2) ≤ S
  rw [hresidual]
  simpa only [E, head, a, w, S,
    Fin.sum_univ_eq_sum_range, sineCoordinates_eq_sineCoefficient]
    using hlimitBound

/-- For supported real odd tests, Green + the ACTUAL finite-sine Parseval
and fourth-moment Bessel supply the physical L2 rate. The only remaining
analytic assumption for the sharp PHYSICAL H1 estimate is the precise
variational integration-by-parts identity. -/
theorem physical_H1_error_le_of_green_and_variational
    (T : ℝ) (hT : 0 < T) (M : ℕ)
    (f first second : ℝ → ℝ)
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hs : MemLp second 2 volume) (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Icc (-T) T → second t = 0)
    (hgreen : SourceSecondSineGreen T f second)
    (hvari : NativeVariationalIBP T M f first second) :
    physicalL2Error T M f + physicalDerivativeError T M f first ≤
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 4 +
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 2 := by
  exact physical_H1_error_le_of_variational T hT M f first second
    hf hs hvari
    (physical_L2_fourth_moment_rate T hT M f second
      hf hodd hsupport hs hoddSecond hsupportSecond hgreen)

/-- The previous Green condition is supplied by the TRUE classical C2
derivative hypotheses and f(±T)=0 from WeilOddSineClassicalGreen.
The variational IBP identity remains explicitly quantified. -/
theorem physical_H1_error_le_of_classical_C2_and_variational
    (T : ℝ) (hT : 0 < T) (M : ℕ)
    (f first second : ℝ → ℝ)
    (hfder : ∀ t : ℝ, HasDerivAt f (first t) t)
    (hfirstDer : ∀ t : ℝ, HasDerivAt first (second t) t)
    (hsecondCont : Continuous second)
    (hleft : f (-T) = 0) (hright : f T = 0)
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hs : MemLp second 2 volume) (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Icc (-T) T → second t = 0)
    (hvari : NativeVariationalIBP T M f first second) :
    physicalL2Error T M f + physicalDerivativeError T M f first ≤
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 4 +
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 2 := by
  exact physical_H1_error_le_of_green_and_variational T hT M
    f first second hf hodd hsupport hs hoddSecond hsupportSecond
    (GRWTSK.NumberTheory.WeilQuadraticForm.OddSineClassicalGreen.
      sourceSecondSineGreen_of_classical_C2 T hT f first second
      hfder hfirstDer hsecondCont hleft hright)
    hvari

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineVariationalH1
