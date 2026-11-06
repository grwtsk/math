/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.OddZeroOrbitWitness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticRootProjection
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurObserverCertificate

/-!
# Actual arithmetic roots, character pairing, and odd Fourier projections

## Exact consumer and source status

The primary specification is Alain Connes, arXiv:2602.04022v1, Sections 4.1
and 6.1--6.6. Its simple-even-ground and normalized-minimizer convergence
obligations are not proved here. A DIFFERENT allowed route is odd-test Weil
positivity: H. Yoshida (1992), Proposition 1, as explicitly reported in
M. Suzuki, arXiv:2606.09096v3, Section 1.1. This is established prior mathematics,
not a newly discovered RH criterion. The attached limiting-kernel factor-four
issue is not used: Xi below has its classical completed-function definition.

Zeta source: Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.19)--(3.20).
Character source comparison: D. Fiorilli and S. J. Miller, "Low-lying zeros
of Dirichlet L-functions", author manuscript dated June 18, 2012, equation
(2.2), with its individual primitive character, conductor and gamma parity
retained BEFORE averaging. Its scaling parameter can be set to exp(1) to
recover the unscaled logarithmic formula used below. No family-averaged or
GRH-dependent density asymptotic is imported. DLMF 25.15.4--25.15.6 supply the
standard inducing-character and conjugate functional equations. Public source
attribution is retained; no upstream code is copied.

The concurrent ArithmeticRootProjection and CharacterWeilWindowBounds sources
at 635e70573275f02da4f14966206066ebdb6dd5dd are REUSED: the complete Hurwitz
root and its character readouts, and the original conjugated twistedPrime.
Their historical verification status is unchanged. No independent root model
or independent one-character prime response is introduced.

The Lean bodies cover actual LFunction/Euler-source product identities,
conjugate-character arithmetic, literal integral-defined finite sine matrices,
and finite error/certificate algebra. The CONTINUUM ARGUMENT below is written
mathematics, not a claim that the infinite explicit formula, inverse Fourier
construction, or complete root-to-matrix theorem has been checked by Lean.
No replacement RiemannHypothesis/DirichletGRH predicate is introduced.

## A. Same root source and arithmetic form

For primitive nonprincipal chi of conductor q and parity a=0 or 1, put
 Lambda_chi(s)=(q/pi)^((s+a)/2)*Gamma((s+a)/2)*L(s,chi),
 Psi_chi(z)=Lambda_chi(1/2+iz)*Lambda_barchi(1/2+iz).
The functional equations and epsilon_chi*epsilon_barchi=1 make Psi even;
conjugation makes it real entire. There is no central-value normalization.
Its divisor is the SUM, with multiplicities, of the two completed divisors.
The gamma/exponential factors are nonzero in the open critical strip.

Averaging the TWO explicit formulas, not merely erasing phases, gives the real
Hermitian form on real tests
 Qpair(f)=c_chi*||f||^2+int_0^infty kappa_a(r)||tau_r f-f||^2 dr
          -2*sum_{n>=2} Lambda(n)/sqrt(n)*Re(chi(n))*C_f(log n),
 c_chi=log(q/pi)+digamma(1/4+a/2),
 kappa_a(r)=exp(-(a+1/2)*r)/(1-exp(-2*r)).
There are NO pole terms for primitive nonprincipal chi. For zeta a=0,q=1,
retain BOTH poles Mplus(f)*Mminus(g)+Mminus(f)*Mplus(g). In the odd real
sector their quadratic value is NEGATIVE, -2*|<sinh(t/2),f>|^2.

With the minus-sign Fourier transform the zero identity is
 Qzeta(f,g)=sum_z mult(z)*conj(fhat(conj z))*ghat(z),
 Qpair(f,g)=(1/2)*sum_{Psi_chi(z)=0} mult(z)*conj(fhat(conj z))*ghat(z).
The one-half in the second line is essential. On real odd tests the convolution
is even, so equation (2.2)'s even-test formula applies. Changing the Fourier
sign reindexes the complete symmetric paired divisor; it never changes a
multiplicity. The sums converge absolutely on the rapidly decreasing tests
below. An unpaired nonreal character is NOT assumed real or reflection invariant.
For imprimitive characters use the ACTUAL inducing identity. Each extra factor
1-chi_star(p)*p^(-s) is nonzero for Re(s)>0 since its subtracted term has norm<1.
The primitive principal case is zeta, with poles handled separately.

## B. Support-independent continuity, retaining every prime

For b>1/2 define
 N_b(f)^2=int_R exp(2*b*|t|)*(|f(t)|^2+|f'(t)|^2)dt.
This is a WEIGHTED H1 norm, not an L2 spectral lower bound. Let sigma=b+1/2,
r=2^(1-sigma), D_sigma=log(2)*r*(2-r)/(1-r)^2, and
 J0=7/12+8*exp(-1/2)/(1-exp(-2)),
 p_b=1/(2*b-1)+1/(2*b+1).
For the full zeta form
 |Q(f,g)| <= C_b*N_b(f)*N_b(g),
 C_b=|digamma(1/4)-log(pi)|+J0+2*D_sigma+2*p_b.                 (A)
For the primitive pair replace the constant term by |c_chi| and omit 2*p_b.

Proof: |<f,tau_u g>|<=exp(-b*|u|)*N_b(f)*N_b(g), by
|t|+|t+u|>=|u| and weighted Cauchy--Schwarz. Every prime is retained using
0<=Lambda(n)<=log n and the dyadic bound
 sum_{n>=2}log(n)/n^sigma <= log(2)*sum_{k>=1}(k+1)*r^k=D_sigma.
On (0,1), kappa_0(u)<=1/(2*u)+exp(-u/2) and the H1 translation estimate
||tau_u f-f||<=u*||f'|| give 1/4+1/3=7/12. On [1,infinity), use 2||f||
for each difference and integrate the exponential bound, giving the other
term of J0. For odd gamma parity kappa_1<=kappa_0. Each pole moment is at
most sqrt(p_b)*N_b(f), and both signed pole products cost 2*p_b. These
arguments also prove absolute convergence and continuity on weighted H1;
they do NOT introduce a positive global L2 operator. Polarization yields
 |Q(f)-Q(g)|<=C_b*N_b(f-g)*(N_b(f)+N_b(g)).                    (B)

## C. A root gives an odd negative test, then a finite arithmetic vector

Use Psi=Xi for zeta, with xi(s)=s(s-1)*pi^(-s/2)*Gamma(s/2)*zeta(s)/2;
use Psi_chi for the primitive pair. Suppose a nonreal root a exists. In the
four-point case Re(a)*Im(a)!=0, remove its FULL common orbit multiplicity m:
 G(z)=Psi(z)/[(z^2-a^2)*(z^2-conj(a)^2)]^m.
Evenness and reality make G even and real entire, with G(a)!=0. Set
 w=I/(a*G(a)), d=Im(w)/Im(a^2), c=Re(w)-d*Re(a^2),
 g(z)=z*(c+d*z^2)*G(z), F(z)=I*g(z).
Then g(a)=I, g(conj(a))=-I, and oddness supplies the other values. The
companion module checks this selector algebra and the sign of each pairing.
F vanishes at every other completed zero. Thus Qzeta(h)=-4*m and
Qpair(h)=-2*m, where h is the inverse Fourier transform of F.
For a=iy, y!=0, use G=Psi/(z^2+y^2)^m and g=z*G/(y*G(iy)); G(iy) is real
and nonzero. This gives Qzeta(h)=-2*m or Qpair(h)=-m. It does NOT omit a
possible exceptional real zero of a Dirichlet L-function.

Analytic justification: on every fixed horizontal strip, the completed
functions and their derivatives have exponential decay in |Re z|, by the
classical Gamma vertical-strip bound and polynomial L-function bounds.
Removing finitely many roots leaves an entire quotient; outside a compact
set it changes that estimate only by a polynomial factor. Multiplying by the
selector does the same. Fourier inversion followed by contour shifting to
arbitrarily high fixed horizontal lines therefore gives a smooth h with
N_b(h^(k))<infinity for every fixed b,k. The identity
F(-conj z)=conj F(z) and oddness imply h real and odd. Its convolutions satisfy
the explicit formula's decay conditions. Zero counting O(R log R) makes
the spectral sum absolute. For the rapidly decreasing extension of the explicit
formula, integrate the completed logarithmic derivative against the entire
test H(z)=conj(F(conj z))*F(z) on vertical rectangles in the s-plane. Choose
heights avoiding the discrete zeros; exponential test decay removes the
horizontal sides. The right side is expanded only at Re(s)>1, where its
prime series is absolutely convergent. The functional equation supplies the
left side and the gamma and pole residues, with exactly the constants in A.
This construction is a CONTRAPOSITIVE witness,
not a root-finding algorithm or a ground-state-dependent projection.

Choose a fixed even smooth cutoff chi, 0<=chi<=1, supported strictly inside
[-1,1], equal to one on [-1/2,1/2], and set h_T(t)=chi(t/T)*h(t). For nu>0,
 d_T=N_b(h-h_T)<=(2+||chi'||_infinity/T)*exp(-nu*T/2)*N_(b+nu)(h).
The product rule and weighted tail integrals prove this bound; (B) gives
 |Q(h_T)-Q(h)|<=C_b*d_T*(2*N_b(h)+d_T).
Choose T (an integer is sufficient) so this is smaller than one quarter of
the absolute negative value. No omitted prime tail is assigned zero.

Let P_M^- use the ACTUAL orthonormal s_n(t)=sin(pi*n*t/T)/sqrt(T), 1<=n<=M.
For Omega=pi*(M+1)/T, twice integration by parts and Parseval give
 e_TM=N_b(h_T-P_M^-h_T)
       <=exp(b*T)*sqrt(Omega^(-4)+Omega^(-2))*||h_T''||_2.       (C)
The sine polynomials vanish at both support endpoints, so their zero extensions
belong to H1. This is not true for arbitrary cosine cutoffs. Approximation
by odd smooth compact tests and (A) justifies the full-form return to the
integral-defined matrix below. For large enough M, another application of (B)
keeps the projected quadratic value strictly negative. Every prime power with
log n<2T is present; the endpoint log n=2T has zero overlap measure. Therefore
an off-line root produces a FINITE negative vector for the actual odd arithmetic
matrix. Approximate observations preserve that sign only after the full
omega*||x||^2 allowance is smaller than its negative margin.

## D. Paired-character high complement from the same source

The paired character matrix is not imported by analogy with the zeta matrix.
Periodize kappa_a on [-T,T] exactly as in WeilPeriodicBoundary. Its image
kernel G_a is bounded by the original positive-kernel majorant because
0<=kappa_a<=kappa_0. The same Carleman argument gives
 ||G_a||<=C_bd(T)=pi+2+4*exp(-T)/(1-exp(-4*T)).
Expanding kappa_a=sum_{j>=0}exp(-(2*j+a+1/2)*r) shows G_a is nonpositive
on odd vectors. The diagonal multiplier is
 m_a(xi)=2*sum_{j>=0}xi^2/[alpha_j*(alpha_j^2+xi^2)], alpha_j=2*j+a+1/2.
It is increasing in |xi|, with
 m_a(xi)>=(1/2)*log(1+xi^2/(a+1/2)^2).
The last inequality is the decreasing-summand integral test with spacing two.
Set K_chi(T)=2*sum_active |Lambda(n)*Re(chi(n))/sqrt(n)|. Every supported
prime shift has norm at most one. Consequently the COMPLETE odd complement
outside sine modes 1,...,N has the unconditional lower bound
 cminus_chi(T,N)=c_chi+m_a(pi*(N+1)/T)-K_chi(T)-C_bd(T).          (D)
There is no negative zeta pole to add in this nonprincipal case. To obtain a
floor b>=0 it suffices, for example, that
 N+1 >= (T*(a+1/2)/pi)*exp(b+K_chi(T)+C_bd(T)-c_chi).
This only controls the HIGH complement. The negative root witness cannot be
excluded by (D): its sufficiently accurate projection may lie in the finite
head. The same maximal-form-domain comparison and bounded perturbation proof
as the original periodic note gives the canonical source domain and compact
resolvent; no ground-state premise is used. Exact completion of the high
square then returns each finite Schur lower certificate to this SAME pair
form. Its low-block sign is not supplied by the derivation of (D).

## E. Exact missing estimate, not a claimed solution

Odd nonnegativity on every compact test suffices for RH (Yoshida). The proof
above supplies the paired-character extension and a quantitative finite sine
return at the written-argument level. Cofinal lower bounds
 Q_Tj^-(f)>=-epsilon_j*||f||^2, T_j->infinity, epsilon_j->0,
for EVERY odd vector imply that nonnegativity by fixing a compact test and
passing to the limit. Reuse the existing cofinal closure argument; it is not
new mathematics. For certificates, take beta_j=-epsilon_j and prove the WHOLE
odd lower Schur matrix nonnegative after every observer, finite-residual and
remote-tail allowance. There is no even trial or ground-state convergence
premise in this alternative route. The universal odd arithmetic lower sign
is STILL UNPROVED. A failed lower certificate does not prove a negative mode.

The proof bodies below do not formalize (A)--(C), the completed explicit formula,
or the unconditional classical zero correspondence. These are analytical
arguments submitted for review. The actual EulerSource import supplies an
additive source identity, not a missing positive lower bound. The two root and
projection uses retain the SAME character; completion/source correspondence
is explicit above, not inferred from matching names. No root aggregate import,
pin migration or parallel checker is introduced.

Elaboration, fresh kernel replay, transitive axiom audit, certified arithmetic
spectral computation and independent analytical review: NOT_RUN.
Novelty: no new criterion claimed; quantitative specialization UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

open GRWTSK.NumberTheory.Conditional.CharacterEuler
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

variable {q : ℕ} [NeZero q]

/-- Use Mathlib's actual character functor, not a surrogate character type. -/
def conjugateCharacter (χ : DirichletCharacter ℂ q) : DirichletCharacter ℂ q :=
  χ.ringHomComp (starRingEnd ℂ)

@[simp] theorem conjugateCharacter_apply (χ : DirichletCharacter ℂ q) (n : ZMod q) :
    conjugateCharacter χ n = star (χ n) := rfl

/-- The uncompleted root source is literally the product of actual LFunctions.
Completion factors are separately nonvanishing on the open critical strip. -/
def pairedLFunction (χ : DirichletCharacter ℂ q) (s : ℂ) : ℂ :=
  χ.LFunction s * (conjugateCharacter χ).LFunction s

theorem pairedLFunction_zero_iff (χ : DirichletCharacter ℂ q) (s : ℂ) :
    pairedLFunction χ s = 0 ↔
      χ.LFunction s = 0 ∨ (conjugateCharacter χ).LFunction s = 0 := by
  exact mul_eq_zero

/-- Both factors are readouts of the SAME complete continued Hurwitz root.
The all-one zeta readout remains the existing `zeta_source`, not a new function. -/
open GRWTSK.NumberTheory.Conditional.ArithmeticRootProjection in
theorem pairedLFunction_eq_shared_root (χ : DirichletCharacter ℂ q) (s : ℂ) :
    pairedLFunction χ s =
      readout (fun j => χ j) (source q s) *
        readout (fun j => conjugateCharacter χ j) (source q s) := by
  simp only [pairedLFunction, character_source]

/-- Multiplication retains BOTH complete tails and their product. -/
theorem paired_euler_source_identity (χ : DirichletCharacter ℂ q) (M : ℕ)
    (s : ℂ) (hhalf : -2 < s.re) (hpole : s ≠ 1) :
    pairedLFunction χ s - model χ M s * model (conjugateCharacter χ) M s =
      completeTail χ M s * model (conjugateCharacter χ) M s +
      model χ M s * completeTail (conjugateCharacter χ) M s +
      completeTail χ M s * completeTail (conjugateCharacter χ) M s := by
  have h1 := source_identity χ M s hhalf hpole
  have h2 := source_identity (conjugateCharacter χ) M s hhalf hpole
  have e1 : χ.LFunction s = model χ M s + completeTail χ M s := by
    linear_combination h1
  have e2 : (conjugateCharacter χ).LFunction s =
      model (conjugateCharacter χ) M s + completeTail (conjugateCharacter χ) M s := by
    linear_combination h2
  unfold pairedLFunction
  rw [e1, e2]
  ring

/-- Exact conjugate-pair arithmetic, before any absolute value is taken. -/
theorem real_conjugate_pair (c z : ℂ) :
    (c * z).re + (star c * z).re = 2 * c.re * z.re := by
  simp [Complex.mul_re]
  <;> ring

def pairedPrimeWeight (χ : DirichletCharacter ℂ q) (n : ℕ) : ℝ :=
  primeWeight n * (χ (n : ZMod q)).re

theorem abs_pairedPrimeWeight_le (χ : DirichletCharacter ℂ q) (n : ℕ) :
    |pairedPrimeWeight χ n| ≤ primeWeight n := by
  have hc : |(χ (n : ZMod q)).re| ≤ 1 :=
    (Complex.abs_re_le_norm _).trans (χ.norm_le_one _)
  unfold pairedPrimeWeight
  rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
  exact mul_le_of_le_one_right (primeWeight_nonneg n) hc

/-- Literal absolute mass for the paired source, with no prime-power omissions. -/
def pairedPrimeMass (χ : DirichletCharacter ℂ q) (T : ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T, |pairedPrimeWeight χ n|

theorem pairedPrimeMass_le (χ : DirichletCharacter ℂ q) (T : ℝ) :
    pairedPrimeMass χ T ≤ primeMass T := by
  unfold pairedPrimeMass primeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  exact Finset.sum_le_sum (fun n _ => abs_pairedPrimeWeight_le χ n)

/-- Average the TWO existing, source-conjugated prime responses. This quantity
is SUBTRACTED from the paired form; no phase-erasing replacement is made. -/
def pairedPrimeResponse (χ : DirichletCharacter ℂ q) (T : ℝ)
    (correlation : ℕ → ℂ) : ℝ :=
  (CharacterWindow.twistedPrime T χ correlation +
    CharacterWindow.twistedPrime T (conjugateCharacter χ) correlation) / 2

theorem pairedPrimeResponse_native (χ : DirichletCharacter ℂ q) (T : ℝ)
    (correlation : ℕ → ℂ) :
    pairedPrimeResponse χ T correlation =
      2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight χ n * (correlation n).re := by
  unfold pairedPrimeResponse CharacterWindow.twistedPrime
  change (2 * (∑ n ∈ activePrimePowers T,
      primeWeight n * (star (χ (n : ZMod q)) * correlation n).re) +
    2 * (∑ n ∈ activePrimePowers T,
      primeWeight n * (star (conjugateCharacter χ (n : ZMod q)) * correlation n).re)) / 2 = _
  calc
    _ = ∑ n ∈ activePrimePowers T, primeWeight n *
        ((star (χ (n : ZMod q)) * correlation n).re +
          (star (conjugateCharacter χ (n : ZMod q)) * correlation n).re) := by
      simp only [mul_add, Finset.sum_add_distrib]
      ring
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      rw [conjugateCharacter_apply, star_star]
      have h := real_conjugate_pair (χ (n : ZMod q)) (correlation n)
      unfold pairedPrimeWeight
      rw [add_comm, h]
      ring

/-- No magnitude substitution: negative real character data have opposite sign. -/
theorem paired_weight_is_not_magnitude :
    ((-1 : ℂ) * 1).re + (star (-1 : ℂ) * 1).re = -2 ∧
      (2 : ℝ) * ‖(-1 : ℂ)‖ = 2 := by norm_num

/-! Literal finite projections. These definitions keep the source integrals;
no diagonalization or undocumented Fourier correspondence is used to define them.
Their integrability and equality to the canonical form are explained above.
The odd basis starts at n=1 and includes EVERY sine mode through M. -/

def zeroExtendedSine (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  if t ∈ Set.Icc (-T) T then Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T
  else 0

def sineCorrelation (T : ℝ) (m n : ℕ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T n (t + r)

def sineShiftEntry (T : ℝ) (m n : ℕ) (r : ℝ) : ℝ :=
  sineCorrelation T m n r + sineCorrelation T n m r

theorem sineShiftEntry_symmetric (T : ℝ) (m n : ℕ) (r : ℝ) :
    sineShiftEntry T m n r = sineShiftEntry T n m r := by
  unfold sineShiftEntry
  ring

def sineArchimedeanEntry (T c : ℝ) (a m n : ℕ) : ℝ :=
  c * (∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T n t) +
    ∫ r in Set.Ioi (0 : ℝ), parityKernel a r *
      (∫ t : ℝ, (zeroExtendedSine T m (t + r) - zeroExtendedSine T m t) *
        (zeroExtendedSine T n (t + r) - zeroExtendedSine T n t))

def sinePoleMoment (T u : ℝ) (n : ℕ) : ℝ :=
  ∫ t : ℝ, zeroExtendedSine T n t * Real.exp (u * t)

/-- Both source pole orientations, NOT a pair of positive squares. -/
def sinePoleEntry (T : ℝ) (m n : ℕ) : ℝ :=
  sinePoleMoment T (1 / 2) m * sinePoleMoment T (-1 / 2) n +
    sinePoleMoment T (-1 / 2) m * sinePoleMoment T (1 / 2) n

/-- Literal full zeta sine compression, independent of any numerical observer. -/
def zetaSineMatrix (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j =>
    sineArchimedeanEntry T (gammaConstant 1 0) 0 (i.val + 1) (j.val + 1) +
    sinePoleEntry T (i.val + 1) (j.val + 1) -
    ∑ n ∈ activePrimePowers T,
      primeWeight n * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))

/-- A primitive NONPRINCIPAL pair has its own conductor and gamma kernel and
NO pole term. These proof arguments enforce the source scope at construction. -/
def primitivePairSineMatrix (χ : DirichletCharacter ℂ q)
    (_hprimitive : χ.IsPrimitive) (_hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j =>
    sineArchimedeanEntry T (gammaConstant q (gammaParity χ)) (gammaParity χ)
      (i.val + 1) (j.val + 1) -
    ∑ n ∈ activePrimePowers T, pairedPrimeWeight χ n *
      sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log (n : ℝ))

/-- Actual projection coordinates of a supplied real function, not labels or
adjacency traces. Negative witnesses require the analytical form return. -/
def sineCoordinates (T : ℝ) (M : ℕ) (f : ℝ → ℝ) : Fin M → ℝ :=
  fun i => ∫ t : ℝ, zeroExtendedSine T (i.val + 1) t * f t

/-! Quantitative finite return; no nonreal zero or negative test is postulated
as existing. The constants below retain both successive approximation errors. -/

def continuityPrice (C d n : ℝ) : ℝ := C * d * (2 * n + d)

theorem negative_survives_two_comparisons {v w p a b k : ℝ}
    (hroot : v ≤ -k) (h1 : |w - v| ≤ a) (h2 : |p - w| ≤ b)
    (hmargin : a + b < k) : p < 0 := by
  have h1' := (abs_le.mp h1).2
  have h2' := (abs_le.mp h2).2
  linarith

/-- A genuine negative projection forces its correct shifted lower matrix to
be negative when the permitted defect is smaller than the witness margin. -/
theorem negative_obstructs_lower {actual lower epsilon mass k : ℝ}
    (hnegative : actual ≤ -k) (hsource : lower ≤ actual + epsilon * mass)
    (hmargin : epsilon * mass < k) : lower < 0 := by linarith

/-- Reuse the original checker. A source-exact negative vector contradicts a
passing LOWER certificate, not merely an unsuccessful numerical solve. -/
theorem negative_excludes_passing_check {ι ν : Type*}
    [Fintype ι] [DecidableEq ι] [Fintype ν]
    (A : Matrix ι ι ℝ) (C : Certificate ℝ ι Empty Empty ν)
    (x : ι → ℝ) (hnegative : quadratic A x < 0) :
    check (matrixProblem A) C ≠ true := by
  intro hcheck
  have hnonnegative := checked_matrix_nonneg A C hcheck x
  linarith

/-- Equality is not sufficient for a strict negative sign after observation. -/
theorem equality_budget_can_erase_negative :
    ((-1 : ℝ) < 0) ∧ |(0 : ℝ) - (-1)| ≤ 1 ∧ ¬ (0 : ℝ) < 0 := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
