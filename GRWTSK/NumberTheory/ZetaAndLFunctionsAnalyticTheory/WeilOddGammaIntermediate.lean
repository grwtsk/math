/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPairedGammaTailCompensation
import Mathlib.Tactic

/-!
# Intermediate odd gamma: finite exponential extraction and exact source return

Source inspected: grwtsk/math@a0457ba3557ff76b4832f11f5fccc87e4cdc228b;
original investigation source c73ed88419dc254d12a3b8186196a13636b3a9fc.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, Lean v4.34.1.
Consumer: DirichletStageChain.PrimitiveStageLower, especially j=0, T=1.
Reuse the whole-line energy, gammaCorrectionDensity, parityKernel,
primitiveArithmeticValue, original real lift and signed twistedPrime.
No graph surrogate, prime-power omission, phase erasure or pole deletion.

## Analytical argument and exact formal boundary

For odd f supported in [-1,1], K_1(r)=sum_{j>=0} exp(-alpha_j*r),
alpha_j=3/2+2j. Every density is nonnegative. The finite kernel comparison
and integral extraction below have no oddness or source-positivity premise.
Put k=13/6. On odd L2[-1,1], the exponential kernel
A_alpha(t,s)=exp(-alpha*|t-s|) has norm <=2alpha/(alpha^2+k^2).
Written proof: restriction to (0,1) is the kernel
exp(-alpha|x-y|)-exp(-alpha(x+y)), the Green kernel for
2alpha*(-d2/dx2+alpha^2)^(-1) with u(0)=0,
u'(1)+alpha*u(1)=0. Its derivative jump is -2alpha; these boundary
conditions and coercivity give the inverse uniquely. For v(x)=sin(k*x),
positive on (0,1], the ground-state identity is
 int |u'|^2+alpha*|u(1)|^2-k^2 int |u|^2
 =int v^2*|(u/v)'|^2+(alpha+k*cot(k))*|u(1)|^2 >=0.
Start with smooth u vanishing at 0 and extend in H1 by density. The boundary
term at 0 vanishes in that initial class. At alpha>=3/2, positivity of the
Robin boundary coefficient follows from k*cos k+(3/2)*sin k>0.
The rational lower Taylor polynomials s7 and c10 below give
k*c10+(3/2)*s7=28011531795923/1316517956812800>0.
The alternating remainders are positive at k; sin(k)>0 since 0<k<pi.

Fubini, L2 Cauchy and translation invariance give
 int_0^infinity exp(-alpha*r)*||tau_r f-f||^2 dr
 =2E/alpha-<f,A_alpha f> >=2k^2/[alpha*(alpha^2+k^2)]*E.
The first eight such bounds yield Gamma>=L8*E with L8>23/20.
The formal theorem gamma_ge_eightTerm_of_exponential_bounds STILL REQUIRES
these eight bounds explicitly. The Green-kernel identification, Robin
form-domain/density theorem, shift-energy/correlation identity, and Taylor
remainder estimates have NOT been formalized here. Their written argument
is not represented as Lean verification. Oddness/support are necessary
for that intended instantiation; the generic finite extraction itself
works for any complex source satisfying its stated integral hypotheses.

Source return stays CONDITIONAL: even the improved separate estimate gives
c-M+H+23/20 approximately -2.76406 at conductor three, T=1, below the
stage-zero requirement -1. The original SIGNED prime correlations must be
controlled, preferably jointly with the gamma remainder. No stage sign,
RH, Dirichlet GRH, universal primitive positivity or uniform gap is claimed.

Hostile check: for the C2 zero-extended odd polynomial t*(1-t^2)^3,
C_f(r)<0 when 1<r<2. Hence q=5, with chi_3(5)=-1, contributes negatively
to Q: negative character data are not automatically beneficial. Companion
WeilOddSignedCorrelation retains that sign mechanism on the real source.
Sine quadrature (not C2 admissibility) and a C2 polynomial family support
small positive finite-space minima only; no numerical result is used here.

Prior mathematics: standard geometric series, exponential Green kernels,
Robin variational comparison and ground-state identity. Novelty NOT_ASSESSED.
Original source attribution remains Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)-(3.20), and Fiorilli--Miller,
Low-lying zeros of Dirichlet L-functions, 2012 manuscript, (2.2), as in
WeilOddRootProjection. This module does not establish the completed explicit
formula. Human-supplied research direction; assistant-generated source and
analytical synthesis; exact rational calculations corroborated separately.
No independent referee review, compilation or kernel/axiom receipt exists.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaIntermediate
open OddRootProjection SourcePrimeCorrelation DirichletStageChain CharacterWindow
open PairedGammaTailCompensation OddConductorThreeObstruction

def oddRate (j : ℕ) : ℝ := 3/2 + 2*(j:ℝ)
def robinFrequency : ℝ := 13/6

def exponentialKernelPiece (j : ℕ) (r : ℝ) : ℝ :=
  Real.exp (-(3/2:ℝ)*r) * Real.exp (-2*r)^j

def exponentialDensity (j : ℕ) (f : ℝ → ℂ) (r : ℝ) : ℝ :=
  exponentialKernelPiece j r * energy (fun t => f (t+r)-f t)

def exponentialGamma (j : ℕ) (f : ℝ → ℂ) : ℝ :=
  ∫ r in Ioi (0:ℝ), exponentialDensity j f r

def oddGammaFloorTerm (j : ℕ) : ℝ :=
  2*robinFrequency^2 /
    (oddRate j * ((oddRate j)^2+robinFrequency^2))

def eightTermOddFloor : ℝ := ∑ j ∈ Finset.range 8, oddGammaFloorTerm j

theorem oddRate_pos (j : ℕ) : 0 < oddRate j := by
  unfold oddRate
  positivity

theorem exponentialKernelPiece_eq (j : ℕ) (r : ℝ) :
    exponentialKernelPiece j r = Real.exp (-oddRate j*r) := by
  unfold exponentialKernelPiece oddRate
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  congr 1
  ring

/-- Exact finite geometric identity; the positive remainder is retained. -/
theorem finite_geometric_identity (b : ℝ) (n : ℕ) :
    (1-b)*(∑ j ∈ Finset.range n, b^j) = 1-b^n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, mul_add, ih, pow_succ]
    ring

theorem finite_geometric_le {b : ℝ} (hb : 0 ≤ b) (hb1 : b < 1) (n : ℕ) :
    (∑ j ∈ Finset.range n, b^j) ≤ 1/(1-b) := by
  apply (le_div_iff₀ (sub_pos.mpr hb1)).2
  have h := finite_geometric_identity b n
  have hp := pow_nonneg hb n
  nlinarith

/-- Unconditional comparison against the original odd gamma kernel. -/
theorem finite_kernel_le_parityKernel (n : ℕ) {r : ℝ} (hr : 0 < r) :
    (∑ j ∈ Finset.range n, exponentialKernelPiece j r) ≤ parityKernel 1 r := by
  have hb : Real.exp (-2*r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have hg := finite_geometric_le (Real.exp_nonneg (-2*r)) hb n
  have hm := mul_le_mul_of_nonneg_left hg (Real.exp_nonneg (-(3/2:ℝ)*r))
  have hkernel : parityKernel 1 r =
      Real.exp (-(3/2:ℝ)*r)/(1-Real.exp (-2*r)) := by
    unfold parityKernel
    norm_num
  rw [hkernel]
  simpa [exponentialKernelPiece, ← Finset.mul_sum, div_eq_mul_inv] using hm

theorem finite_density_le_gammaDensity (n : ℕ) (f : ℝ → ℂ)
    {r : ℝ} (hr : 0 < r) :
    (∑ j ∈ Finset.range n, exponentialDensity j f r) ≤
      gammaCorrectionDensity 1 f r := by
  have hE : 0 ≤ energy (fun t => f (t+r)-f t) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have h := mul_le_mul_of_nonneg_right (finite_kernel_le_parityKernel n hr) hE
  simpa [exponentialDensity, gammaCorrectionDensity, Finset.sum_mul] using h

/-- Finite extraction, with all Bochner integrability assumptions explicit. -/
theorem finite_exponentialGamma_le_gamma (n : ℕ) (f : ℝ → ℂ)
    (hpieces : ∀ j ∈ Finset.range n,
      IntegrableOn (exponentialDensity j f) (Ioi 0))
    (harch : IntegrableOn (gammaCorrectionDensity 1 f) (Ioi 0)) :
    (∑ j ∈ Finset.range n, exponentialGamma j f) ≤
      ∫ r in Ioi (0:ℝ), gammaCorrectionDensity 1 f r := by
  have hsum : IntegrableOn
      (fun r => ∑ j ∈ Finset.range n, exponentialDensity j f r) (Ioi 0) :=
    integrable_finsetSum (Finset.range n) hpieces
  have hle :
      (∫ r in Ioi (0:ℝ), ∑ j ∈ Finset.range n, exponentialDensity j f r) ≤
      ∫ r in Ioi (0:ℝ), gammaCorrectionDensity 1 f r := by
    apply integral_mono_ae hsum harch
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact finite_density_le_gammaDensity n f hr
  rw [integral_finsetSum (Finset.range n) hpieces] at hle
  exact hle

/-- Exact rational certificate, not floating-point quadrature. -/
theorem eightTermOddFloor_gt : (23/20:ℝ) < eightTermOddFloor := by
  norm_num [eightTermOddFloor, oddGammaFloorTerm, oddRate, robinFrequency,
    Finset.sum_range_succ]

/-- The rational Robin boundary subcertificate. Remainder comparisons to sin/cos
are separate continuum obligations, not inferred from this arithmetic fact. -/
def sinLowerPolynomial (x : ℝ) : ℝ := x-x^3/6+x^5/120-x^7/5040

def cosLowerPolynomial (x : ℝ) : ℝ :=
  1-x^2/2+x^4/24-x^6/720+x^8/40320-x^10/3628800

theorem robin_boundary_rational_certificate :
    (0:ℝ) < robinFrequency*cosLowerPolynomial robinFrequency +
      (3/2:ℝ)*sinLowerPolynomial robinFrequency := by
  norm_num [robinFrequency, sinLowerPolynomial, cosLowerPolynomial]

/-- Scalar resolvent algebra, independent of any asserted kernel identification. -/
theorem exponential_floor_of_resolvent_bound
    {a k E A J : ℝ} (ha : 0 < a) (hk : 0 < k)
    (hidentity : J = 2*E/a-A)
    (hbound : A ≤ 2*a/(a^2+k^2)*E) :
    2*k^2/(a*(a^2+k^2))*E ≤ J := by
  have hd : a^2+k^2 ≠ 0 := ne_of_gt (by positivity)
  have heq : 2*k^2/(a*(a^2+k^2))*E =
      2*E/a-(2*a/(a^2+k^2))*E := by
    field_simp [ne_of_gt ha, hd]
    <;> ring
  rw [heq, hidentity]
  linarith

/-- The eight ORIGINAL exponential integrals are the explicit missing analytic
inputs. This theorem does not construct their Robin resolvent estimates. -/
theorem gamma_ge_eightTerm_of_exponential_bounds (f : ℝ → ℂ)
    (hpieces : ∀ j ∈ Finset.range 8,
      IntegrableOn (exponentialDensity j f) (Ioi 0))
    (harch : IntegrableOn (gammaCorrectionDensity 1 f) (Ioi 0))
    (hresolvent : ∀ j ∈ Finset.range 8,
      oddGammaFloorTerm j * energy f ≤ exponentialGamma j f) :
    eightTermOddFloor * energy f ≤
      ∫ r in Ioi (0:ℝ), gammaCorrectionDensity 1 f r := by
  calc
    eightTermOddFloor * energy f =
        ∑ j ∈ Finset.range 8, oddGammaFloorTerm j * energy f := by
          rw [eightTermOddFloor, Finset.sum_mul]
    _ ≤ ∑ j ∈ Finset.range 8, exponentialGamma j f :=
      Finset.sum_le_sum hresolvent
    _ ≤ _ := finite_exponentialGamma_le_gamma 8 f hpieces harch

theorem gamma_ge_twentyThree_twentieths_of_exponential_bounds (f : ℝ → ℂ)
    (hpieces : ∀ j ∈ Finset.range 8,
      IntegrableOn (exponentialDensity j f) (Ioi 0))
    (harch : IntegrableOn (gammaCorrectionDensity 1 f) (Ioi 0))
    (hresolvent : ∀ j ∈ Finset.range 8,
      oddGammaFloorTerm j * energy f ≤ exponentialGamma j f) :
    (23/20:ℝ)*energy f ≤
      ∫ r in Ioi (0:ℝ), gammaCorrectionDensity 1 f r := by
  have hE : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  exact (mul_le_mul_of_nonneg_right eightTermOddFloor_gt.le hE).trans
    (gamma_ge_eightTerm_of_exponential_bounds f hpieces harch hresolvent)

/-- Retain the full gamma remainder and ORIGINAL signed prime response. -/
theorem source_remainder_identity
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1) (T b : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue chi hp hn T f =
      (gammaConstant N (gammaParity chi)+b)*energy f +
      ((∫ r in Ioi (0:ℝ), gammaCorrectionDensity (gammaParity chi) f r)-b*energy f)-
      twistedPrime T chi (fun n => correlation f (Real.log (n:ℝ))) := by
  unfold primitiveArithmeticValue
  ring

/-- Conditional source return at the exact original stage, with no mass or
phase replacement. The gamma estimate and signed-prime estimate are separate. -/
theorem stage_of_gamma_and_signed_prime
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1) (j : ℕ) (b : ℝ)
    (hgamma : ∀ f : ℝ → ℝ, Admissible chi ((j:ℝ)+1) f →
      b*energy (liftReal f) ≤
        ∫ r in Ioi (0:ℝ), gammaCorrectionDensity (gammaParity chi) (liftReal f) r)
    (hprime : ∀ f : ℝ → ℝ, Admissible chi ((j:ℝ)+1) f →
      twistedPrime ((j:ℝ)+1) chi
        (fun n => correlation (liftReal f) (Real.log (n:ℝ))) ≤
      (gammaConstant N (gammaParity chi)+b+(1/2:ℝ)^j)*energy (liftReal f)) :
    PrimitiveStageLower chi hp hn j := by
  intro f hf
  have hg := hgamma f hf
  have hp' := hprime f hf
  unfold primitiveArithmeticValue
  nlinarith

/-- Stronger gamma coefficient combined with the PREEXISTING paired upper-band
surplus. The hgamma hypothesis is not discharged by finite arithmetic alone. -/
theorem source_ge_pairedBand_of_gamma
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T b : ℝ) (f : ℝ → ℝ) (hf : MemLp (liftReal f) 2 volume)
    (hsupport : ∀ t, t ∉ Icc (-T) T → liftReal f t = 0)
    (hgamma : b*energy (liftReal f) ≤
      ∫ r in Ioi (0:ℝ), gammaCorrectionDensity (gammaParity chi) (liftReal f) r) :
    (gammaConstant N (gammaParity chi)-pairedPrimeMass chi T+
      pairedUpperBandWeight chi T+b)*energy (liftReal f) ≤
      primitiveArithmeticValue chi hp hn T (liftReal f) := by
  have hPair := pairedUpperBand_energy_le_pairedSurplus chi T hf hsupport
  rw [primitive_real_paired_phaseSurplus_identity chi hp hn T f hf]
  nlinarith

/-- Initial odd conductor-three consumer. The missing Robin bounds are
quantified only on the actual admissible class. No all-stage claim is made. -/
theorem odd_three_stage_zero_of_exponential_and_signed_bounds
    (chi : DirichletCharacter ℂ 3) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (hodd : gammaParity chi = 1)
    (hpieces : ∀ f : ℝ → ℝ, Admissible chi 1 f →
      ∀ j ∈ Finset.range 8,
        IntegrableOn (exponentialDensity j (liftReal f)) (Ioi 0))
    (hresolvent : ∀ f : ℝ → ℝ, Admissible chi 1 f →
      ∀ j ∈ Finset.range 8,
        oddGammaFloorTerm j * energy (liftReal f) ≤ exponentialGamma j (liftReal f))
    (hprime : ∀ f : ℝ → ℝ, Admissible chi 1 f →
      twistedPrime 1 chi (fun n => correlation (liftReal f) (Real.log (n:ℝ))) ≤
        (gammaConstant 3 1+(23/20:ℝ)+1)*energy (liftReal f)) :
    PrimitiveStageLower chi hp hn 0 := by
  apply stage_of_gamma_and_signed_prime chi hp hn 0 (23/20:ℝ)
  · intro f hf
    have hf1 : Admissible chi 1 f := by simpa using hf
    have harch := hf1.2.2.2.2.2.2
    rw [hodd] at harch ⊢
    exact gamma_ge_twentyThree_twentieths_of_exponential_bounds
      (liftReal f) (hpieces f hf1) harch (hresolvent f hf1)
  · intro f hf
    have hf1 : Admissible chi 1 f := by simpa using hf
    simpa [hodd] using hprime f hf1

end GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaIntermediate
