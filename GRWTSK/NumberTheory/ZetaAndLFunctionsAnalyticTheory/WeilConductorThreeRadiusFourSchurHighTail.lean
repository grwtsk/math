/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source math fe3fd586707c81fdd693a076c4971bea6fbe51e8;
canonical Noe context9d456d64a0137289cddc416ea78f043cf345873a.
WRITTEN_ACTUAL_INFINITE_SCHUR_COMPRESSION_PROOF;
FINITE_BRIDGE_MIXED_SCHUR_SIGN_AND_WHOLE_J3_OPEN.
FINITE_EXACT_GUARDS_PASS; LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / NOVELTY_NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourResidualHead
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourPaidPacket

/-!
# A coercive entire infinite high block of the actual residual Schur complement

Local attribution: grwtsk contributors. Math source fe3fd586707c81fdd693a076c4971bea6fbe51e8; Noe context9d456d64a0137289cddc416ea78f043cf345873a. Current math instructions and canonical proof-automation/structural skills were read. These are complete WRITTEN operator/Fourier proofs with exact rational guards, not Noe execution, repository publication, Lean compilation, kernel checking or axiom auditing.

## Actual source and physical types

Let H be the real odd subspace of physical L2([-4,4],Lebesgue dt), with the same complexification for Hermitian forms when needed. Zero extension and angular Fourier transform use F_f(xi)=integral f(t)exp(i xi t)dt and frequency measure dxi/(2pi). E(f)=||f||² is always the ORIGINAL unweighted physical energy.

Use the exact existing residual domain D=D_res from ResidualHead:30m<|xi|<Rstop, Rstop=35*10^24, with the actual already-paid R10 mirrored pair removed. The symbol on D is the original s4*PH²*(1-PL²), with original primitive real odd chi3 modulo3, conductor3, gamma parity1, ALL458 native unramified atoms, current high7990/2820 at hH=1/(2*10^25), and current low19000/1425 at hL=153/(2*10^9). Let
 K_D:H->L2(D,dxi/(2pi)), K_Df=F_f|D.
This is a physical-norm contraction. Let R be the ACTUAL bounded selfadjoint compressed residual operator K_D* M_(s4 PH²(1-PL²)) K_D. Its multiplier is real even, so the odd carrier is preserved. The proved source floor and filter laws give
 <Rf,f>>=-213||K_Df||² for EVERY f in H.                    (1)
The actual source norm bound||R||<=300 supplies bounded operator domains on all H. No original gamma unbounded-form domain is substituted in this finite-frequency residual.

Put N=23000000 and let P=P_N^0 be the ACTUAL physical orthogonal projection onto the native finite sine head satisfying sum_(k<=N)(-1)^k k a_k=0. Its dimension is N-1. Put Q=I-P. The previously PROVED Fourier-tail calculation, not merely the signed head lower bound, gives
 ||K_Du||²<=(d/213)||u||², EVERY u in PH,                   (2)
where the exact rational d is ResidualHead.nativeHeadPrice, computed with piUpper22/7. Its value is approximately.12480356914019602. The fact that (1)-(2) imply the head residual bound does NOT make the converse valid; (2) is retained as its separate analytic dependency.

Let B=124997987/10^9, eta=B-d>1/10000, and define on their displayed physical spaces
 A=P(R+B I)P|PH, C=PRQ:QH->PH, T=Q(R+B I)Q|QH.
Equation(1)-(2) give A>=eta I. Thus A is a genuine finite-dimensional positive invertible operator on ALL PH and||A^-1||<10000. C and T are bounded on their whole indicated domains. The actual Schur complement is
 S=T-C* A^-1 C on ALL QH.                                 (3)
No sign for S is a field or hypothesis of this construction.

## Minimize over the paid head without losing source or norm

For u in PH and v in QH, physical orthogonality gives E(u+v)=E(u)+E(v). Apply(1), the triangle inequality for K_D, and(2):
 <(R+B I)(u+v),u+v>
 >=(B-d)||u||²+B||v||²
       -2sqrt(213d)||u||||K_Dv||-213||K_Dv||².               (4)
Both head/tail mixed terms are paid. In particular the positive part of the arithmetic source is never discarded by an absolute bound on C followed by a false norm exchange.

For fixed v, minimize eta r²-2sqrt(213d)r||K_Dv|| over r>=0. Completing its scalar square gives the lower bound-213d||K_Dv||²/eta. On the ACTUAL left side, completing the head operator square gives
 inf_(u in PH)<(R+B I)(u+v),u+v>=<Sv,v>,
with minimizer u=-A^-1Cv. Consequently, for EVERY v in QH,
 <Sv,v>>=B E(v)-[213 B/(B-d)]||K_Dv||².                   (5)
The coefficient is213(1+d/eta)=213B/eta; it is not213+213B/eta. The exact guards prove213B/eta<266250. This conclusion applies to the genuine consuming Schur complement, not a new operator with a presumed sign.

An operator-order check confirms the same coefficient with shared premises. From R+B I>=B I-213K_D*K_D, monotonicity of Schur complements follows by taking the same infimum over u. The head of the latter operator is positive by(2). Its direct Schur expression is bounded below by B I_Q-213B/(B-d) K_Q*K_Q, since ||K_P||²<=d/213. This is an algebraic audit of (5), sharing (1)-(2), not a claimed independent arithmetic theorem.

## The entire physical high-mode leakage

The physical odd orthonormal sine basis is
 psi_k(t)=sin(omega_k t)/2 on[-4,4], omega_k=pi k/4, k>=1,
with zero extension. Its native-plus Fourier transform is
 Phi_k(xi)=i(-1)^k omega_k sin(4xi)/(xi²-omega_k²).           (6)
The negative-angular convention changes only the global sign on this odd carrier. No normalization changes. Define the CLOSED infinite carrier
 H_hi=closure span{psi_k:k>=M}, M=10^32.
Since M>N, H_hi is genuinely contained in QH. It has no additional native-C2 trace premise; the bounded residual and Schur forms above are already defined on its entire L2 domain.

The exact scalar separation pi>3 and3M/4>=2Rstop imply omega_k>=2Rstop for EVERY k>=M. Thus for EVERY xi in the actual D,
 |Phi_k(xi)|<=4/(3omega_k)=16/(3pi k).
For finite partial sums v=sum_(k=M)^J a_k psi_k, Cauchy-Schwarz in physical coefficient energy gives
 |F_v(xi)|²<=[256/(9pi²)] E(v) sum_(k=M)^J k^-2.
The ENTIRE unobserved mode tail is controlled by
 sum_(k=M)^infinity k^-2<=integral_(M-1)^infinity x^-2dx=1/(M-1).
This follows termwise from monotonicity on each interval[k-1,k], then monotone convergence. It is not finite passing evidence.

The actual residual D has ordinary measure at most2Rstop, including both signs and all its masks. Therefore its angular measure is at mostRstop/pi, and
 ||K_Dv||²<=beta_M E(v),
 beta_M=256Rstop/[9pi³(M-1)]<=256Rstop/[243(M-1)].           (7)
The factorRstop/pi already accounts for the TWO frequency signs; no further2 is lost. For arbitrary v in H_hi, its partial sums converge in physical L2 and K_D is bounded, so (7) passes to the limit. This proves the whole infinite carrier result, with ALL k>=M retained.

## Actual infinite Schur positivity and its precise consumer

Insert(7) into(5). The exact rational guards prove
 B-266250*[256Rstop/(243(M-1))]
 =.02682514749382716...>1/40.
Hence
 <Sv,v>>=(1/40)E(v) for EVERY v in H_hi.                   (8)
Using the actual rational213B/(B-d) gives the stronger display.07450300745966823; the simple1/40 bound in(8) is the retained robust result. All acceptance comparisons are exact rational inequalities, not rounded decimals.

Equation(8) means the COMPRESSION S_hi=Pi_hi S Pi_hi|H_hi is positive coercive on ALL H_hi. It does NOT assert that S itself maps high modes into high modes. S_hi is bounded selfadjoint and S_hi>=I/40, hence it is an actual boundedly invertible operator on H_hi with||S_hi^-1||<=40. Surjectivity follows, for example, from its positive spectral gap; or from closed range plus zero orthogonal complement for its selfadjoint range. No unbounded inverse domain is hidden.

The full remaining Q carrier is the orthogonal sum of H_hi and the FINITE physical bridge
 H_mid=span{the actual boundary direction from P_N^0, psi_k:N<k<M}.
Its dimension is M-N, not M-N-1: the boundary direction is essential. The full Schur form still has a mixed H_mid/H_hi block. Define S_mid=Pi_mid S Pi_mid|H_mid and D_mid=Pi_hi S Pi_mid:H_mid->H_hi. The remaining source sign is the actual finite-bridge Schur sign
 S_mid-D_mid* S_hi^-1 D_mid>=0 on ALL H_mid.                (9)
This is OPEN; neither (8) nor a blockwise positivity assertion silently pays it. The huge finite bridge and its true interaction with the entire high tail remain the next missing source connection. Only after that sign, the existing head square, paid pair and source return imply the full original j3 stage. No cofinal stages, RH or GRH are claimed complete.

## Source return, heat and lossless finite proof data

Heat is not used to infer(8). AFTER the actual source proof, the compressed positive operator S_hi constructs a genuine spectral semigroup
 U_t=exp(-t S_hi), t>=0, on ALL H_hi.
Since S_hi is bounded selfadjoint and S_hi>=I/40, its functional calculus gives U_0=I, U_tU_s=U_(t+s), U_t*=U_t, positivity, and||U_t||<=exp(-t/40). The generator is the ACTUAL bounded S_hi on ALL H_hi, not a Dirichlet or gamma-source generator. Its finite-time inverse is exp(t S_hi), bounded for fixedt. The exponential series converges in operator norm, and U_t->I in operator norm. Thus <S_hi U_tv,U_tv>-><S_hi v,v> for everyv in H_hi.

The exact physical source return retains the minimizing head: Wv=v-A^-1Cv. Then W is bounded into the original physical H and
 <(R+B I)Wv,Wv>=<S_hi v,v>.
Hence WU_tv->Wv physically and the corresponding bounded residual-source forms converge. E(Wv)=E(v)+E(A^-1Cv), by physical orthogonality; it is NOT silently identified with E(v). The entire original-source low/high return is still needed to reach the original primitive form, and finite-bridge positivity remains OPEN.

The positive inverse is also an actual construction, with its ENTIRE unobserved time tail:
 S_hi^-1=integral_0^infinity U_t dt,
 S_hi integral_0^T U_tdt=I-U_T,
 ||S_hi^-1-integral_0^T U_tdt||<=40 exp(-T/40).
These are operator-norm Bochner integrals: the spectral gap makes the whole integral absolutely norm-convergent, and differentiating the bounded exponential proves the displayed source law. This is not a finite passing heat computation or positivity inferred from its weights.

There is separately a restricted Dirichlet spectral heat on H_hi, diagonalpsi_k->exp(-t omega_k²)psi_k for ALLk>=M. It is a different semigroup, with its own unbounded generator domain sum omega_k^4|a_k|²<infinity. It is not substituted for U_t. The native finite trace head need not be Dirichlet-heat invariant. Keeping these carriers and generators distinct is essential.

The existing natural-code branch coverage is a THIRD role, not either spectral semigroup. On complete dependent finite descriptors indexed by n, pi_n=2^(-n-1)>0, sum pi_n=1, and sum_(n>=J)pi_n=2^-J. For summable signed branch masses x, Kx=(x+(sumx)pi)/2 has exact source return x=2Kx-(sumKx)pi. Geometric summation and substitution prove these laws. Every k>=M is separately indexed exhaustively by k=M+j,j>=0; no unobserved physical mode is replaced by the coding-weight tail. None of these coverage laws proves an arithmetic sign.

Finite representable proof data retain source/character/parity, the exact D and original filters, the physical carriers/projections/compressions, N,M,H,Rstop,B,d,eta,beta, inverse bounds, all normalization and convergence/summability laws and separate evidence statuses. The infinite mode variable k>=M is bound syntax with its complete proven reciprocal-tail law, not a finite list purporting to exhaust it. Reuse the ACTUAL PaidPacket.retainedCodec/decodeRetained on its dependent total RetainedEvidence carrier. The native full_roundtrip theorem gives decodeRetained(retainedCodec.encode(x))=x for EVERY retained x, without a sign premise. Canonical JSON encoding and decoding separately roundtrip EVERY actual finite guard field; this does not encode arbitrary semantic L2 values or manufacture (9).

The independent audit verified (4)-(8), the physical projections and domains, exact Fourier factor, both frequency signs, the role of the separate head-leak law, and compression versus invariance. The methods are elementary Fourier integration, Cauchy-Schwarz, complete square, reciprocal-series domination and bounded selfadjoint inversion. Novelty beyond the source-bound quantitative instance is not assessed. The full universal analytic result is WRITTEN; exact scalar guards passed under Python-O; Lean compilation, fresh kernel and transitive axiom audits remain NOT_RUN.

The source-bound exact guard is /tmp/q3_radius_four_schur_high_tail_20261108.py,
SHA f8517d370d1ae8c0e5fb773d9a33f50e0dd690ad60d54a8a1a5e61ef9281c8c6;
its completed Python-O payload is
4ce9ba24349863d5fe69810e1e3ad6b049f9c127c053133c05f1bcce037f667c.
The declarations below record finite scalar/coding laws ONLY. They do not
formalize the universal Hilbert-space proof above or claim kernel replay.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSchurHighTail

def firstHighMode : ℕ := 10 ^ 32
def outerCutoff : ℚ := 35 * 10 ^ 24

def headGap : ℚ :=
  ConductorThreeRadiusFourResidualHead.residualBudget -
    ConductorThreeRadiusFourResidualHead.nativeHeadPrice

def schurPenalty : ℚ :=
  213 * ConductorThreeRadiusFourResidualHead.residualBudget / headGap

def coarsePenalty : ℚ := 266250

def highLeakageUpper : ℚ :=
  256 * outerCutoff / (243 * ((firstHighMode : ℚ) - 1))

def highCoercivityLower : ℚ :=
  ConductorThreeRadiusFourResidualHead.residualBudget -
    coarsePenalty * highLeakageUpper

def safeHighCoercivity : ℚ := 1 / 40

/-- The head is the existing actual native trace head, not a new sign field. -/
theorem exact_head_gap : (1 / 10000 : ℚ) < headGap := by
  simpa [headGap] using
    ConductorThreeRadiusFourResidualHead.exact_native_head_gap.2

/-- Exact integer index law; all k>=firstHighMode remain in the high carrier. -/
theorem high_index_exceeds_head :
    ConductorThreeRadiusFourResidualHead.nativeHeadRank < firstHighMode := by
  norm_num [ConductorThreeRadiusFourResidualHead.nativeHeadRank, firstHighMode]

/-- Together with pi>3 this proves omega_M>=2*outerCutoff. -/
theorem exact_frequency_separation :
    2 * outerCutoff ≤ (3 : ℚ) * firstHighMode / 4 := by
  norm_num [outerCutoff, firstHighMode]

theorem exact_schur_penalty : schurPenalty < coarsePenalty := by
  norm_num [schurPenalty, coarsePenalty, headGap,
    ConductorThreeRadiusFourResidualHead.residualBudget,
    ConductorThreeRadiusFourResidualHead.nativeHeadPrice,
    ConductorThreeRadiusFourResidualHead.upperRatioSquared,
    ConductorThreeRadiusFourResidualHead.sixthPowerPolynomial,
    ConductorThreeRadiusFourResidualHead.nativeHeadRank,
    ConductorThreeRadiusFourResidualHead.frequencyFrontier,
    ConductorThreeRadiusFourResidualHead.piUpper,
    ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice]

theorem high_leakage_pos : 0 < highLeakageUpper := by
  norm_num [highLeakageUpper, outerCutoff, firstHighMode]

/-- Finite exact coercivity constant; the universal Fourier/Schur return is WRITTEN. -/
theorem exact_high_coercivity : safeHighCoercivity < highCoercivityLower := by
  norm_num [safeHighCoercivity, highCoercivityLower, coarsePenalty,
    highLeakageUpper, outerCutoff, firstHighMode,
    ConductorThreeRadiusFourResidualHead.residualBudget,
    ConductorThreeRadiusFourMiddleReturn.cleanMiddleBudget,
    ConductorThreeRadiusFourPaidPacket.pairPacketPrice,
    ConductorThreeRadiusFourPaidPacket.singlePacketPrice]

/-- One boundary direction plus every N<k<M, with no lost endpoint mode. -/
theorem exact_finite_bridge_dimension :
    firstHighMode - ConductorThreeRadiusFourResidualHead.nativeHeadRank =
      (firstHighMode - (ConductorThreeRadiusFourResidualHead.nativeHeadRank + 1)) + 1 := by
  norm_num [firstHighMode, ConductorThreeRadiusFourResidualHead.nativeHeadRank]

/-- Existing full dependent source/proof/guard/checker byte roundtrip. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

/-- Complete coding-coverage tail, separate from the actual infinite physical tail. -/
theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSchurHighTail
