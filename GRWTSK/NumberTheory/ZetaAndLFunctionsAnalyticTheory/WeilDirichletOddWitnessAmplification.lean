/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Sources: H. Yoshida, "On Hermitian forms attached to zeta functions"
(1992), Proposition 1 (as described by M. Suzuki, arXiv:2606.09096v3,
Section 1.1); D. Fiorilli and S. J. Miller, "Low-lying zeros of
Dirichlet L-functions" (2012), equation (2.2); NIST DLMF 25.15.4--5.
Actual GRWTSK completed-pair and odd radical source:
WeilOddRootProjection.lean and OddZeroOrbitWitness.lean.
Zeta phase-aligned amplification prior source: supplied
odd-weil-lower-growth-amplification-of-a-hypothetical-off-line-zero.md.

WRITTEN_ANALYTIC_ARGUMENT / INDEPENDENT_REVIEW_NOT_RUN
LEAN_FINITE_CANDIDATE / COMPILATION_NOT_RUN
FRESH_KERNEL_REPLAY_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRootProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# A nonprincipal Dirichlet off-line zero forces exponential odd Weil instability

## Exact target and carrier

Scope is the genuine primitive nonprincipal Dirichlet character chi of
conductor q and parity a, together with its conjugate chi-bar. The
COMPLETED root source is the actual even real entire product
  Psi_chi(z)=Lambda_chi(1/2+i z)*Lambda_chibar(1/2+i z).
The source is the REAL conjugate-pair Weil form
  Q_pair(f) = c_chi ||f||_2² + E_a(f)
      -2 sum_(n>=2) Lambda(n)/sqrt(n) Re(chi(n)) C_f(log(n)),
on REAL odd compact smooth tests with zero extension, Lebesgue L²(dt),
Fourier fhat(z)=integral f(t)exp(-i z t)dt, and no zeta pole.
The zero pairing has the indispensable coefficient eta_chi=1/2:
  Q_pair(f,g)= (1/2) sum_(Psi_chi(z)=0) mult(z) *
                       conj(fhat(conj(z)))*ghat(z).
All these source formulas retain the written analytic scope of
WeilOddRootProjection; this module does not reprove them in Lean.

Primitive principal zeta is separately handled by the previous
zeta amplification source with eta_zeta=1, both actual poles and
its original support-return bounds. Imprimitive characters return
through the actual inducing identity: the extra Euler factors are
nonzero for Re(s)>0, by DLMF 25.15.4. No arbitrary Hecke or automorphic
GRH is claimed.

## New written theorem (primitive nonprincipal paired sector)

Suppose L(s,chi) has a nontrivial zero rho with
   b=|Re(rho)-1/2|>0.
For every 0<theta<1 there exist c_chi,rho,theta>0 and T0 such that
for EVERY T>=T0 there is a real odd f_T in C_c^infty([-T,T])
with ||f_T||_2<=H_chi,rho<infinity and
  Q_pair(f_T) <= -c_chi,rho,theta *
                     exp(2*b*(1-theta)*T).
Thus the infimum of its ACTUAL supported odd Rayleigh quotients
satisfies the same exponential upper bound divided by H².

Proof: the product Psi is real even entire with the completed
multiplicities retained. For a nonreal root a=x+i b, x*b!=0,
remove its FULL four-point orbit to get the entire G:
  Psi(z)=[(z²-a²)(z²-conj(a)²)]^m G(z).
The already formalized OddZeroOrbitWitness selector
  F(z)=i*z*(c+d*z²)*G(z)
takes values (-1,+1,+1,-1) at
(a,conj(a),-a,-conj(a)), and vanishes at all other zeros.
Its inverse transform h is real odd, rapidly decreasing with
all fixed exponential weighted Sobolev norms, as justified in
WeilOddRootProjection. The exact paired source gives Q_pair(h)=-2m.

For R>=0 let h_R(t)=(h(t-R)+h(t+R))/2.
Its transform is cos(Rz)F(z), so all other zero terms remain zero.
The COMPLEX zero pairing, rather than absolute-square replacement,
gives the exact formula
  Q_pair(h_R)=-m*[1+cos(2*x*R)*cosh(2*b*R)].
For the aligned sequence R=k*pi/|x| this equals
  -2*m*cosh(b*R)^2.
The sign can reverse at misaligned phases: when
cos(2*x*R)=-1, the same expression is +m*(cosh(2bR)-1).
This is why phase alignment is essential; a positive heat kernel or
pointwise absolute values do not supply the source sign.

For an axial root a=i*b, b>0, use the TWO-point denominator
(z²+b²)^m and the existing axial selector F. The source yields
  Q_pair(h_R)=-m*cosh(bR)^2
for every R>=0. This covers possible real (exceptional) zeros.

To recover the ORIGINAL compact test domain, fix a smooth even cutoff
chi_T supported in [-T,T], equal to one on [-T+1,T-1],
and with derivative uniformly bounded. Choose
  R_T=(pi/|x|)*floor(|x|*(1-theta)*T/pi)
for x!=0, or R_T=(1-theta)*T for the axial case.
Then 0<=R_T<=(1-theta)T and
  R_T>=(1-theta)T-pi/|x| (four-point case).
Set f_T=chi_T*h_(R_T). For each alpha>1/2 and nu>0, the ACTUAL
weighted H1 source continuity norm N_alpha satisfies
  N_alpha(h_R-f_T)
     <=C exp(alpha*R-nu*(T-1-R))*N_(alpha+nu)(h),
  N_alpha(h_R)+N_alpha(f_T)<=C exp(alpha*R)N_alpha(h).
The original full prime response and gamma kernel have the
sector-dependent support-independent continuity bound
  |Q_pair(f)-Q_pair(g)|
    <=C_chi,alpha N_alpha(f-g)(N_alpha(f)+N_alpha(g)).
Choose alpha=1 and nu>2/theta. Then the compact cutoff source
error decays exponentially, while the aligned negative term has
size at least a positive constant exp(2*b*(1-theta)*T).
Every prime power outside the compact support is controlled by the
weighted norm argument: it is NOT silently truncated in the rapid
intermediate source. Since ||f_T||_2<=||h||_2, the asserted estimate
holds for every sufficiently large T, including all intermediate
supports, not just an aligned subsequence.

## Quantitative all-character consuming implication

Let B_chi(T_j)>=0 be genuine source LOWER budgets for EVERY smooth
compact real odd test in [-T_j,T_j], along T_j->infinity:
  Q_pair(f)>=-B_chi(T_j)*||f||_2².
If
  limsup_j [log(1+B_chi(T_j))/T_j] <= sigma_chi,
then no zero in this primitive sector can have
  |Re(rho)-1/2| > sigma_chi/2.
Indeed choose theta with 2b(1-theta)>sigma_chi.
The proved exponentially negative tests force
B_chi(T_j)>=c*exp(2b(1-theta)T_j), a contradiction.
For sigma_chi=0, all this character's nontrivial zeros lie on the
critical line. Doing this for EVERY primitive nonprincipal character
and using the SEPARATE zeta result yields exactly Dirichlet GRH.
This is a quantitative SOURCE RETURN, not the missing universal
subexponential lower budget. No such B_chi has been proved here.

The proof is written mathematics from the identified completed source
and weighted-continuity inputs, NOT a new Lean-checked analytic theorem.
The executable finite algebra below only retains the selected pairing
sign, multiplicity and half-weight. Source root localization, global
Fourier inversion, cutoff and weight growth remain written arguments.

## All branch data interfaces

Representable sector descriptors retain source revision, q, chi and
chi-bar table, parity, orbit, multiplicity, support, Fourier convention,
normalization, test certificate and every error. They are encoded as a
dependent Sigma tagged source/payload via the EXISTING Lossless codec.
Every encoded record is exactly recovered. Every representable branch
has positive stage coverage, and the ENTIRE unobserved dyadic tail
is 2^-J. This branch heat is NOT finite Euler sign heat and NOT the
actual source semigroup. It does not prove the missing sign budgets.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletOddGrowth

open GRWTSK.ComplexAnalysis.OddZeroOrbitWitness
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-- The paired zero formula counts a FOUR-point root orbit with factor
1/2. Aligned real Fourier amplitudes retain the negative pairing,
without replacing it by positive absolute squares. -/
theorem aligned_paired_quartet (m : ℕ) (c : ℝ) :
    ((m : ℂ) / 2) *
      (pairingTerm (c : ℂ) (-(c : ℂ)) +
       pairingTerm (-(c : ℂ)) (c : ℂ) +
       pairingTerm (-(c : ℂ)) (c : ℂ) +
       pairingTerm (c : ℂ) (-(c : ℂ))) =
      -2 * (m : ℂ) * (c : ℂ) ^ 2 := by
  simp [pairingTerm]
  ring

/-- A possible exceptional real zero gives TWO distinct product-divisor
points, still with the actual 1/2 paired coefficient. -/
theorem aligned_paired_axial (m : ℕ) (c : ℝ) :
    ((m : ℂ) / 2) *
      (pairingTerm (c : ℂ) (-(c : ℂ)) +
       pairingTerm (-(c : ℂ)) (c : ℂ)) =
      -(m : ℂ) * (c : ℂ) ^ 2 := by
  simp [pairingTerm]
  ring

/-- A source-negative compact witness forces a corresponding lower-budget
cost on the *same* physical L² carrier. This does not assert existence of
an off-line root or such a witness. -/
theorem paired_witness_forces_budget
    (B mass normCap amplitude q : ℝ)
    (hB : 0 ≤ B) (_hmass : 0 < mass) (hcap : mass ≤ normCap)
    (hnegative : q ≤ -amplitude)
    (hlower : -B * mass ≤ q) :
    amplitude ≤ B * normCap := by
  have hBM := mul_le_mul_of_nonneg_left hcap hB
  linarith

/-! Unchanged exact representable-data and exhaustive branch heat. -/

def pairedGrowthRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

theorem pairedGrowthRecord_roundtrip
    (r : Sigma (fun _ : List ℕ => List ℚ)) :
    pairedGrowthRecordCodec.decode (pairedGrowthRecordCodec.encode r) =
      some r :=
  pairedGrowthRecordCodec.roundtrip r

theorem pairedGrowthRecord_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n)
    (r : Sigma (fun _ : List ℕ => List ℚ)) :
    ∃ n, Encodable.decode n = some r ∧
      0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm r

theorem pairedGrowthCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletOddGrowth
