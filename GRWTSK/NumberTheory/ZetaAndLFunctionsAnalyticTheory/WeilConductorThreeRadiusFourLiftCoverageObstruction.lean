/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math@b4ee1b04d21ad0edab994c84b2cf5d8da0fdb8af.
Canonical grwtsk/noeaaeue proof-automation and structural skills read at
90a013780be6f5a55fa56e06f2799bd3ad9db979.
WRITTEN_ACTUAL_NATIVE_DOUBLE_SCHUR_LIFT_COVERAGE_OBSTRUCTION.
FINITE_EXACT_GUARDS_PASS; WHOLE_REMAINING_SIGN_AND_J3_OPEN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
No canonical source edit, Noe job, Git action or publication is performed.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourWeightedSchurSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourSparseShift

/-!
# A native true-Schur-lift obstruction to simultaneous sparse-cone coverage

Local attribution: grwtsk contributors.

## 1. Exact original objects and the new statement

The original target remains PrimitiveStageLower chi3 hp hn 3: EVERY original
real odd compactC2 admissible radius-four test must satisfy Q4(f)>=-E(f)/8.
The actual signed remaining finite form K_Z from WeightedSchurSource is still
OPEN on ALL original Z_F. This source does NOT prove that form positive or
negative. It proves that the new SparseShift positivity cones cannot cover
even the actual native double-Schur lifts, simultaneously over ALL their
permitted shell placements. It is an obstruction to that proposed full bridge,
not another sufficient condition substituted for K_Z.

Keep the REAL physical Hilbert space H of odd L2([-4,4],Lebesgue dt) classes,
with whole-line zero extension and E(f)=integral|f|^2. Use the positive-angular
Fourier convention Ff(xi)=integral f(t)exp(i xi t)dt, measure dxi/(2pi).
Every construction also complexifies to the existing odd complex carrier,
but the selected test below is real. No weighted or coefficient norm replaces E.

Retain actual primitive real nonprincipal chi3 modulo3, conductor3, parity1,
ALL458 unramified prime powers n=p^e<=2980,p!=3, no pole, and
 s4=log(3/pi)+Repsi(3/4+i xi/2)
      -2sum log(p)chi3(p^e)cos(xi log(p^e))/sqrt(p^e).
Keep PH7990/2820,hH=1/(2*10^25), PL19000/1425,hL=153/(2*10^9),
the actual w=PH^2(1-PL^2), and
 D={30000000<|xi|<35*10^24} minus the paid intervals
   +/-[18524227541662946/10^7-10,18524227541662946/10^7+10].
R is the SAME bounded residual K* (s4*w) K, B=124997987/10^9.

Let P=P23 be the SAME physical orthogonal projection onto the trace-zero
first23000000 sine modes psi_k(t)=sin(pi*k*t/4)/2, k>=1. Its rank is
 p=22999999. Put Q=I-P, A23=P(R+B I)P onPH, C23=PRQ:QH->PH.
The existing source proves A23>1/10 I, constructs A23^-1 on ALLPH, and
defines the actual original Schur operator
 S=Q(R+B I)Q-C23* A23^-1 C23 on ALLQH.
These real operators and inverses preserve the real odd sector.

Let L=420000000000000000000000000, and V be the span of ALL odd normalized
Legendre functions ell_n(t)=sqrt((2n+1)/8)P_n(t/4), n<L, on[-4,4].
Then D0=dimV=L/2=210000000000000000000000000. Use the ACTUAL F=QV.
The existing source proves Q|V injective, hence dimF=D0, with actual positive
physical Gram G, never identity. Set epsilon=5*10^-54, L_F=S_F-epsilon I_F.
The original U=Uold=Pi_F Xold has dimension u=15159001. Put
 Z_F=F intersect Uperp, so dimZ_F=r=D0-u.
The actual finite blocks are
 D_U=Pi_U L_F|U, B_U=Pi_U S_F|Z_F, T_Z=Pi_Z_F L_F|Z_F,
 K_Z=T_Z-B_U* D_U^-1 B_U on ALLZ_F.
The already proved D_U>=2/25 I constructs its true inverse on ALLU.
No sign of K_Z is a premise here.

For every allowed sixteen-vector delta with 0<=delta_j<=a=10^-6, let
 S_delta be the actual32 reflected intervals of SparseShift, positive side
 [3+j/16+delta_j,3+j/16+delta_j+h], j=0,...,15, h=2^-20.
Its positive leakage cone is H_out<=G_in/5, where
 G_in=||1_Sdelta f||, H_out=||1_Sdelta_complement f||.
Equivalently its nonzero vectors must have G_in^2/E(f)>=25/26.

We construct ONE nonzero REAL original admissible test f that is the TRUE
double-Schur lift of a nonzero z in the SAMEZ_F and satisfies

       E(f)=1,   ||1_Sdelta f||^2<1/1000
       for EVERY permitted delta SIMULTANEOUSLY.             (NEW)

Thus f is outside EVERY listed sparse cone (all stricter d>=5 as well).
This supplies a concrete source-specific failure of the proposed universal
cone hypothesis for actual lifts. It says nothing negative about K_Z[z] for
the corresponding z inZ_F.

## 2. The exact source lift, its left inverse and source identity

For EVERY z inZ_F define
 y(z)=z-D_U^-1 B_U z inF subsetQH,
 Tz=y(z)-A23^-1 C23 y(z)
   =z-D_U^-1 B_U z-A23^-1 C23(z-D_U^-1 B_U z).           (1)

The first subtraction lies inU; the second lies inPH. Both are the ACTUAL
minimizers supplied by the corresponding physical square completions.
All domains are explicit: B_U:Z_F->U, D_U^-1:U->U,
C23:QH->PH, A23^-1:PH->PH. Since U is orthogonal toZ_F insideF, and
PH is orthogonal to the wholeF, physical orthogonal projection gives

                  Pi_Z_F Tz=z.                           (2)

Consequently T is a genuine real linear injective map with ||Tz||>=||z||.
Its range R_lift is a closed finite-dimensional physical subspace of rankr.
It is contained in the ambient A_space=PH+V: F=QV subsetPH+V, and both
subtractions in(1) remain in PH+F=PH+V. A_space is NOT the source operator
A23, and its orthogonal projections below use the PHYSICAL metric.

For all z the SAME exact source identities give

 <(R+B I)Tz,Tz>=<S y(z),y(z)>
  =<L_F y(z),y(z)>+epsilon E(y(z))
  =<K_Z z,z>+epsilon E(y(z)).                            (3)

The last equality uses the true old-U minimizer, not an arbitrary inverse
or a Euclidean coefficient lift. Identity(3) retains the epsilon term and
the actual physical norm of y(z); neither is replaced by E(z) or E(Tz).
It is a SOURCE RETURN with UNKNOWN K_Z SIGN, not a proof of that sign.

## 3. A large actual native-C2 space of TRUE lifts

Every element of A_space has on the interior[-4,4] a unique analytic function
description as a finite odd polynomial plus finite sine sum; equality of such
descriptions on the interval is the usual real-analytic identity. These
representatives give well-defined LINEAR endpoint functionals on R_lift:
 f(4), f'(4), f''(4).
Define N_lift as the common kernel of those THREE functionals in R_lift.
Finite rank-nullity gives

 d=dim N_lift >=r0=D0-u-3
   =209999999999999999984840996>0.                       (4)

No endpoint-rank equality is assumed; rank may be less than3. This is a lower
bound on the actual whole kernel. Since f is odd, the three traces also vanish
at-4. Extending byzero therefore produces an ACTUAL real odd compact C2
function onR, supported in[-4,4]. All such functions are original admissible
tests. In particular gamma is finite: for small shifts,
 ||tau_r f-f||^2<=r^2||f'||^2,
and for every r it is <=4E(f). The native parity-one kernel is O(1/r) near0
and integrable at infinity. Integrating min(r^2||f'||^2,4E(f)) proves the
entire finite gamma law; no hard L2 projection is assumed gamma-invariant.

The physical Schur lift on N_lift remains EXACTLY(1): for f in this space,
z=Pi_Z_F f and f=Tz by(2) and membership in R_lift. Thus this step does not
invent a different source test or use a non-native discontinuous polynomial.

## 4. Primary Bernstein inequality in the exact normalization

Let S_star be the union of ALL allowed placement envelopes: its positive
intervals are [3+j/16,3+j/16+h+a], j=0,...,15, and their reflections.
They are pairwise disjoint. EVERY S_delta is contained inS_star, with

 mu=|S_star|=32(h+a)=32009/512000000.                    (5)

Every point of S_star satisfies
 |t|<=63/16+h+a<127/32.

Use the primary standard Bernstein bound in NIST DLMF18.14.E3, alpha=beta=0,
https://dlmf.nist.gov/18.14.E3 . It is the Jacobi/Legendre case of the cited
Chow et al.1994 inequality, with n any nonnegative integer and -1<x<1:

 ((1-x^2)/4)^(1/4)|P_n(x)|<=1/[sqrt(pi)*sqrt(n+1/2)].

For x=t/4 this gives IN THE ACTUAL PHYSICAL NORMALIZATION

 ell_n(t)^2 <=1/[2pi sqrt(1-(t/4)^2)] <64/45<2
              for EVERY t inS_star and EVERY odd n<L.     (6)

Indeed sqrt(1-(127/128)^2)=sqrt(255)/128>15/128 and pi>3.
The factor(2n+1)/8 in ell_n is essential: no unnormalized polynomial or
weighted-L2 Bernstein bound is substituted. Inequality(6) is uniform over
ALLD0 Legendre basis functions and every point of the placement envelopes.

## 5. Complete physical trace and construction of the test

Let M_star be multiplication by1_Sstar onH. It is a positive physical
contraction. OnV, whose displayed ell_n are orthonormal, Tonelli for this
FINITE but entire basis gives

 tr(Pi_V M_star|V)=sum_(odd n<L)int_Sstar ell_n^2
                     <=2D0*mu.                           (7)

Decompose the ACTUAL ambient space orthogonally as
 A_space=V orthogonal-sum (I-Pi_V)PH.
The second space has dimension at mostp; this upper bound needs no angle,
conditioning or inverse estimate. Each normalized basis vector there has
shell mass at most1. Hence

 tr(Pi_Aspace M_star|A_space)<=2D0*mu+p.                 (8)

Since N_lift is a physical subspace of A_space, positivity of M_star and
extension of an orthonormal basis give the SAME trace upper bound for its
compression. This is trace monotonicity of the true orthogonal subspaces,
not coordinatewise monotonicity of a nonorthogonal Gram matrix.

The ordinary EXACT rational guard proves

                 2D0*mu+p<r0/1000.                      (9)

Choose an orthonormal REAL basis of the ENTIRE N_lift. If every unit basis
vector had shell mass at least1/1000, its trace would be at leastd/1000,
contradicting(4),(8),(9). Thus there exists a REAL unit f inN_lift with
 ||1_Sstar f||^2<1/1000.
Equivalently, construct f as a unit eigenvector for the minimum eigenvalue
of the actual concentration compression in Section6; its finite variational
minimum is bounded by trace/d. Both constructions refer to the actual source
space, not an unevaluated assertion of K_Z positivity.

For THIS ONE f and EVERY allowed delta, inclusionS_delta subsetS_star gives
 ||1_Sdelta f||^2<1/1000<25/26.
This proves(NEW), uniformly over all independently placed shells. With
z=Pi_Z_F f, (2) shows z!=0 and f is exactlyTz. It cannot satisfy H_out<=G_in/5,
nor any stricter d>=5 cone. No claim that Q4(f) or K_Z[z] is negative is made.

## 6. Actual concentration-compression heat and exact source return

There is a genuine source-bound finite spectral heat on the precise physical
space N_lift, with domain ALLN_lift. Define
 C_star=Pi_Nlift M_star|N_lift.
It is the ACTUAL selfadjoint nonnegative contraction0<=C_star<=I on this
space, not a gamma operator or assumed signed-source positive block.
All its d physical modes are retained. The bounded exponential
 H_t=exp(-t C_star), t>=0,
has H_0=I, H_t H_s=H_(t+s), is a positive selfadjoint contraction, and returnsI
in operator norm as t decreases tozero. Finite-dimensional spectral expansion
is over EVERY j=1,...,d, with weights exp(-t lambda_j); no unobserved mode is
discarded. For a partial displayed index set, the entire remaining squared
norm is sum_(unobserved j)exp(-2t lambda_j)|a_j|^2.

Every H_t f is STILL a true nativeC2 double-Schur lift, because it remains in
N_lift. Put z_t=Pi_Z_F H_t f and y_t=z_t-D_U^-1 B_U z_t. The exact source
return(3) holds for EVERY t>=0:

 <(R+B)H_t f,H_t f>=<K_Z z_t,z_t>+epsilon E(y_t).          (10)

All maps on these fixed finite spaces are bounded. Thus t->0 returns the
physical vectors, their exact norms and both sides of(10). The original
FULLQ4 also returns on this finite space: choose any physical orthonormal
nativeC2 basis e_j. Its finite derivative Gram bounds ||v'||^2<=Cder E(v).
The complete min(r^2 Cder,4) shift bound proves the gamma form bounded here;
the458 prime forms are already bounded. Consequently Q4(H_t f)->Q4(f)
within this actual finite native carrier. No false globalL2 gamma continuity
or commutation with a Dirichlet/gamma heat is used.

For nonzero f, the concentration Rayleigh quotient of H_t f is nonincreasing: in its finite
spectral probability distribution its derivative is minus twice the variance
of lambda. In particular a selected minimum-eigenvector stays in its same
direction, with shell fraction below1/1000 after normalization. This heat
describes concentration and native source-return ONLY. Its nonnegative weights
do not establish any arithmetic source sign, and no inverse or uniform positive
concentration gap is assumed or needed.

## 7. Coverage, lossless data, evidence and the unchanged missing lemma

Every type retains its carrier/domain and physical normalization above: actual
finite source blocks, PH,V,F,U,Z_F, rangeT and N_lift; polynomial+sine endpoint
representatives; support envelopes, projection/multiplication operators and
the actual concentration compression. Source parameters and all quantified
delta, trace, coefficient and full spectral-index ranges remain explicit.
For representable finite proof/source data reuse PaidPacket.RetainedEvidence
and its full dependent codec; decodeRetained(encode(data))=data preserves the
source tag, type/binder information, constants, certificates and every error.
Arbitrary semantic realL2 functions and huge uncomputed Gram entries are not
asserted finitely encoded. Finite descriptions do not eliminate domain or tail
obligations. The standalone guard records all exact rational inputs/inequalities
and source-byte identities at their actual scope.

Branch coverage separately reuses WeightedStage pi_j=2^(-j-1), j>=0, with total1
and unobserved tail2^-J, plus its exact inverse source-return. This covers finite
descriptors/branches; it does not turn them into arithmetic theorems. The only
actual spectral semigroup added here is concentration heat from the ALREADY
PROVED nonnegative C_star. Original infiniteW, all its mixed corrections and all
remaining Z_F vectors remain in their source contracts; none is removed.

The exact dependency advance is actualSchur inverses -> true liftT and its
left inverse -> native endpoint kernel of dimension at least(4) -> primary
physical Legendre bound -> complete finite trace -> ONE native true lift outside
ALL SparseShift cones simultaneously. This discharges the coverage-obstruction
claim. It DOES NOT discharge the actual remaining signed estimate
 <K_Z z,z>>=0 for EVERY original z inZ_F.
That is still the next mathematical lemma required by this source route.

The exact cofinal consumer remains dirichletGRH_of_source_chains: RH AND
PrimitiveNegativeWitness AND ALL SmallConductorStages for every primitive
nonprincipal Dirichlet character are required. Its target family is ALL
complex Dirichlet characters modulo EVERY positive integer, including
principal and imprimitive characters; every zero with0<Re(s)<1 must have
Re(s)=1/2. The obstruction above supplies no completedj3 or other stage.

Universal mathematics above: complete WRITTEN proof. Independent scalar and
source readback guards: exact ordinary arithmetic, not Lean evidence. The Lean
declarations below are only finite scalar/rank/algebra/codec candidates.
Compilation, fresh kernel, transitive axiom and independent human-review
statuses: NOT_RUN. No full remaining sign, original chi3 radius-four j3,
cofinal family, RH or DirichletGRH completion is claimed.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLiftCoverageObstruction

def gramDimension : ℕ := ConductorThreeRadiusFourLegendreTail.finitePhysicalDimension
def originalHeadDimension : ℕ := ConductorThreeRadiusFourResidualHead.nativeHeadRank - 1
def oldSectorDimension : ℕ := ConductorThreeRadiusFourGramMomentSector.sectorDimension
def liftDimension : ℕ := gramDimension - oldSectorDimension
def nativeRankLower : ℕ := liftDimension - 3
def shellWidth : ℚ := 1 / 2 ^ (20 : ℕ)
def placementAllowance : ℚ := 1 / 10 ^ (6 : ℕ)
def envelopeMeasure : ℚ := 32 * (shellWidth + placementAllowance)
def physicalTraceUpper : ℚ :=
  2 * (gramDimension : ℚ) * envelopeMeasure + (originalHeadDimension : ℚ)

/-- Rational proof-data parameters bind the existing REAL source shell interface. -/
theorem native_shell_parameter_bindings :
    (shellWidth : ℝ) = ConductorThreeRadiusFourSixteenShells.shellWidth ∧
      (placementAllowance : ℝ) =
        ConductorThreeRadiusFourSixteenShells.shellShiftAllowance := by
  norm_num [shellWidth,placementAllowance,
    ConductorThreeRadiusFourSixteenShells.shellWidth,
    ConductorThreeRadiusFourSixteenShells.shellShiftAllowance]

theorem exact_rank_and_envelope_guards :
    liftDimension = 209999999999999999984840999 ∧
      nativeRankLower = 209999999999999999984840996 ∧
      0 < nativeRankLower ∧ envelopeMeasure = 32009 / 512000000 := by
  norm_num [liftDimension, nativeRankLower, gramDimension, oldSectorDimension,
    envelopeMeasure, shellWidth, placementAllowance,
    ConductorThreeRadiusFourLegendreTail.finitePhysicalDimension,
    ConductorThreeRadiusFourLegendreTail.degreeCutoff,
    ConductorThreeRadiusFourLegendreTail.frequencyStop,
    ConductorThreeRadiusFourResidualHead.nativeHeadRank,
    ConductorThreeRadiusFourGramMomentSector.sectorDimension,
    ConductorThreeRadiusFourGramMomentSector.modeCount,
    ConductorThreeRadiusFourGramMomentSector.momentCount,
    ConductorThreeRadiusFourGramMomentSector.originalRank]

theorem all_shell_endpoint_and_Bernstein_scalars :
    (63 / 16 : ℚ) + shellWidth + placementAllowance < 127 / 32 ∧
      (15 / 128 : ℚ) ^ 2 < 1 - (127 / 128 : ℚ) ^ 2 ∧
      (64 / 45 : ℚ) < 2 := by
  norm_num [shellWidth, placementAllowance]

/-- Finite exact arithmetic only; the full physical trace proof is written above. -/
theorem actual_native_lift_trace_guard :
    physicalTraceUpper < (nativeRankLower : ℚ) / 1000 := by
  norm_num [physicalTraceUpper, gramDimension, originalHeadDimension,
    nativeRankLower, liftDimension, oldSectorDimension, envelopeMeasure,
    shellWidth, placementAllowance,
    ConductorThreeRadiusFourLegendreTail.finitePhysicalDimension,
    ConductorThreeRadiusFourLegendreTail.degreeCutoff,
    ConductorThreeRadiusFourLegendreTail.frequencyStop,
    ConductorThreeRadiusFourResidualHead.nativeHeadRank,
    ConductorThreeRadiusFourGramMomentSector.sectorDimension,
    ConductorThreeRadiusFourGramMomentSector.modeCount,
    ConductorThreeRadiusFourGramMomentSector.momentCount,
    ConductorThreeRadiusFourGramMomentSector.originalRank]

theorem sparse_cone_fraction_separation : (1 / 1000 : ℚ) < 25 / 26 := by
  norm_num

/-- The epsilon source term is retained, never replaced by an input norm. -/
theorem source_shift_algebra (qR qK Ephys Ey budget epsilon : ℝ)
    (h : qR + budget * Ephys = qK + epsilon * Ey) :
    qR = qK + epsilon * Ey - budget * Ephys := by
  linarith

theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

theorem entire_branch_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourLiftCoverageObstruction
