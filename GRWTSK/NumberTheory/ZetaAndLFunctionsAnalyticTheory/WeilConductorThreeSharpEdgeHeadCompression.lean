/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual mathematical source inspected: grwtsk/math
eef4e69aac22d8e6495052b391ed381b80f5eda0.
Current canonical Noe instructions read at
0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
WRITTEN_ACTUAL_HEAD_COMPRESSION_PROOF_COMPLETE_AT_STATED_SCOPE.
Both original whole-tail inverse debts are retained exactly.
FINITE_LEAN_COMPILATION_PASS / FINITE_AXIOM_AUDIT_PASS:10 declarations only.
ENTIRE_ACTUAL_EFFECTIVE_HEAD / ORIGINAL_j3 / RH / DIRICHLET_GRH: OPEN.
Continuum formalization, separate fresh kernel replay and independent human
review NOT_RUN. Worldwide novelty NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourInventory
import Mathlib.Tactic

/-!
# A large positive compression of the actual effective sharp-edge head

## 1. The exact consumer and the non-vacuous new result

The original target remains
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
 modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
It demands Q4(f)>=-E(f)/8 for EVERY original real odd compact C2 radius-four
Admissible input, with physical L2 and original parity-one finite gamma.
The immediate consumer here is the SAME actual finite effective head in
SharpEdgeComplementTail(14), with N=2^349000:

 H_eff=A_N-C_N*D_N^(-1)C_N on F_N, dim(F_N)=N-2.                    (1)

No finite-core or finite-tail inverse is substituted in(1). The new result
constructs an ACTUAL linear map L:F_N->Complex^(K-1), K=2^87, and proves

 <f,H_eff f>>=(1/40)||f||^2 for EVERY f in X=ker(L),
 codim_(F_N)(X)<=K-1, dim(X)>=N-K-1>0.                            (2)

This is a positive compression of the genuine head, with its ENTIRE
infinite-tail inverse subtraction already paid. It is not positivity on
all F_N, and X is not assumed invariant or reducing. A remaining actual
Schur sign on at most K-1 dimensions, including ALL its X coupling, stays
OPEN. The enormous bound K-1 is stated, not presented as an evaluated
matrix or a completed finite sign certificate.

All spaces are complex physical Lebesgue L2(dt), with antilinear-first
inner products. H=L2((0,4),dt), H0=L2((0,3),dt), H1=L2((3,4),dt).
For the odd zero extension O4, E(O4u)=2||u||^2 and
 m[u]=Q4(O4u)/2+||u||^2/8. These normalizations are unchanged.

## 2. Genuine whole-source high DD coercivity

The source character is the original chi3=(0,1,-1), conductor3,
primitive nonprincipal, gamma parity1, with no pole. Write
 c3=log(3/pi)+psi(3/4), c0=c3+1/8,
 k(r)=exp(-3r/2)/(1-exp(-2r)),
 Gamma(f)=integral_(r>0)k(r)||f(.+r)-f||^2dr.
The full native prime operator P4 is characterized by

 <u,P4u>=sum_native458 [log p/sqrt(n)]chi3(n)
                    Re C_(O4u)(log n), n=p^e<=2980,p!=3.

Thus m=G4+c0 I-P4, where G4[u]=Gamma(O4u)/2. There are exactly
458 native triples, including all30 higher powers,428 primes,93 old core
and365 new entries. The source cutoff and exponent tail are justified by
2980<exp8<2981 and2^12>2980. Geometric zero tags stay in the inventory.

The complete458-atom/4096-row physical Schur construction in
RadiusFourHighFilter(2)--(3) has actual exact row quotient
 18053610188579/312600000000<1444/25.
It applies to ALL complex physical inputs supported in the slightly larger
native window. The weighted 2ab proof bounds ABSOLUTE correlations before
using chi3 signs, so it proves |<g,P_full g>|<=(1444/25)||g||^2 as well as its
displayed upper inequality. Restriction to[-4,4] and the isometric odd map
Uu=O4u/sqrt2 therefore construct a bounded selfadjoint P4 with

                         ||P4||<=1444/25.                         (3)

Omega in that proof is an auxiliary positive Schur weight; its OUTPUT is
the unweighted physical norm. It is NOT a pointwise Fourier-symbol bound
Pchi4(xi)<=1444/25. The original all458 row data and analytic source linkage
retain their recorded exact-computation/written proof evidence levels.

For every T>0, GammaComparison(9) proves on the ENTIRE common domain
 G_T=phi(H_DD,T)-Cplus,T, 0<=Cplus,T<=(pi/2)I,
 phi(lambda)=sum_(j>=0)2lambda/[a_j(a_j^2+lambda)], a_j=3/2+2j.
All j and all DD modes are retained by Tonelli. For T=4, the complete
physical DD basis is b_l(x)=sin(l*pi*x/4)/sqrt2, l>=1, and
 phi(H_DD,4)[u]=sum_(l>=1)g(l*pi/4)|<b_l,u>|^2,
 g(xi)=sum_(j>=0)2xi^2/[a_j(a_j^2+xi^2)].
The complete gamma boundary comparison gives

 m>=phi(H_DD,4)+c0 I-(pi/2)I-(1444/25)I.                          (4)

Let P_<K be physical orthogonal projection onto b_1,...,b_(K-1),
H_high=ker(P_<K), K=2^87. For l>=K the actual Binet source bound is
 g(l*pi/4)+c3>=log(l*pi/4)-3/4.
It holds at frequencies>=100, as derived from the digamma integral
https://dlmf.nist.gov/5.9.E15 in the native source. Since pi>3 and
exp(3/10)>1+3/10+(3/10)^2/2>4/3, log(pi/4)>-3/10. Use
log2>693/1000 and pi/2<11/7.
The lower log bound follows already from the three positive atanh terms
2*(1/3+1/81+1/1215)=842/1215>693/1000, with the whole omitted tail positive.
Thus EVERY full-source finite-gamma u in H_high satisfies

 m[u]>=(121/3500)||u||^2>=(1/40)||u||^2,
 87*(693/1000)-3/10-5/8-11/7-1444/25=121/3500>1/40.             (5)

The zero case is included non-strictly. This proof treats the WHOLE infinite
physical high tail, not a sampled set of vectors. The restricted source
form on H_high is dense and closed: finite DD tail sums are dense, and
the DD gamma domain equivalence makes the restricted form norm complete.
Its genuine selfadjoint operator M_high satisfies
 M_high>=(1/40)I, ||exp(-tau M_high)||<=exp(-tau/40), EVERY tau>=0.
Its exact arithmetic return is Q4(O4u)>=-E(O4u)/10 on this carrier;
the inverse time-tail after T is<=40exp(-T/40)||z||^2. This restriction is not
asserted reducing for the full source.

## 3. Constructing the head-to-original-source map, with both debts

Retain ALL actual objects and evidence of ComplementTail and SmoothDirection:
 A0>=3I/40 on H0, B:H1->H0 bounded with all458 native masks and signs,
 s[v]=m11[v]-<Bv,A0^(-1)Bv>, v*(3+r)=4sin(pi*r)^3/sqrt5,
 a=s[v*]>3/40, t=(I-v* tensor v*)S v*,
 d[w]=s[w]-|<t,w>|^2/a on Dedge intersect v*perp.
The core bound and the proved directional estimates keep their recorded
WRITTEN COMPUTER-ASSISTED evidence; no discarded historical Gram factors
are reconstructed and no conclusion of the universal head sign is assumed.

Let e_n(r)=sqrt2 sin(n*pi*r), n>=1. The actual edge tail is
 Htail=closed span{e_n:n>=N}, N=2^349000,
 F_N=span{e_1,...,e_(N-1)} intersect v*perp, dim(F_N)=N-2.
Here v*=(3e_1-e_3)/sqrt10, so the stated decomposition is physical
orthogonal. The complete paid tail form d_N has actual operator D_N>=100I.
Let C_N:F_N->Htail be the actual bounded mixed block of d, so the head
is(1). Each f in F_N lies in the full gamma operator domain. Define

 Rf=f-D_N^(-1)C_N f in Dedge intersect v*perp,
 c(w)=-<t,w>/a,
 v(w)=c(w)v*+w,
 Jw=(-A0^(-1)Bv(w)) on(0,3), v(w) on(3,4).

Every expression is constructed from the ACTUAL sources, not an assumed
interface providing a sign. D_N^(-1) maps all Htail into Dom(D_N), hence
Rf has finite original gamma. A0^(-1)Bv(w) lies in Dom(A0). The bounded
mixed-gamma block/domain identity in EdgeSchur identifies the original
full-source form domain with D3 direct-sum Dedge. Thus J Rf is an actual
full-source form vector without imposing C2, derivative or endpoint traces
on a general input. Original admissible vectors are a permitted subcarrier.

The exact tail completion, then the exact rank-one completion, then the
exact core completion prove in that order

 d[Rf]=<f,H_eff f>,
 s[v(Rf)]=d[Rf],
                    m[J Rf]=<f,H_eff f>.                            (6)

No whole-tail inverse term is lost in(6). In the first equality, the
tail component is precisely-D_N^(-1)C_N f; in the second c cancels the
same actual <t,Rf>/a; in the third the core is precisely-A0^(-1)Bv(Rf).
Their domains justify every completion. Each map is linear and bounded
on the finite-dimensional F_N; both actual inverse operators are bounded.

The PHYSICAL norm comparison is also exact:

 ||J Rf||^2
 =||A0^(-1)Bv(Rf)||^2+|c(Rf)|^2+||Rf||^2
 >=||Rf||^2=||f||^2+||D_N^(-1)C_N f||^2>=||f||^2.                    (7)

All equalities use the actual disjoint core/edge split, v*perp and
F_N orthogonal Htail. No weighted norm or normalized-coefficient norm is
substituted. J R is injective, but is NOT asserted unitary or isometric.

## 4. A large positive actual-head compression and its heat

Construct the ACTUAL map and subspace

 L=P_<K J R:F_N->span{b_1,...,b_(K-1)}, X=ker L.

The range has dimension at most K-1. Rank-nullity gives
 codim_(F_N)X=rank(L)<=K-1,
 dim(X)>=N-K-1>0, since349000>87 and both cutoffs are powers of2.
This is a genuine nonzero instance, even though a numerical table for L
has not been evaluated. For EVERY f in X, the constructed J Rf belongs
to H_high and the full source domain. Equations(5)--(7) give

 <f,H_eff f>=m[J Rf]>=(1/40)||J Rf||^2>=(1/40)||f||^2.             (8)

This proves(2) on the entire actual compression, not finitely many passing
head vectors. Both whole inverse debts have already been paid in(6).
The true finite compression H_X=P_X H_eff|X is selfadjoint and >=I/40.
Thus ||exp(-tau H_X)||<=exp(-tau/40), EVERY tau>=0, and
 <f,H_eff f>=||H_X^(1/2)f||^2 for ALL f in X.
Its inverse heat integral converges on all X, with complete time-tail
after T at most40exp(-T/40)||z||^2. No invariance of X under H_eff is assumed.

There is a second, distinct physical source restriction on Z=J R(X).
This is a closed finite-dimensional subspace of H, since J R is injective
and X finite-dimensional. Its source operator M_Z is >=I/40 by(5).
Its actual source heat likewise has norm<=exp(-tau/40) and arithmetic return
Q4(O4u)>=-E(O4u)/10 for EVERY u in Z. Congruence of the source forms in(6)
does NOT identify these two heat semigroups: J R is not a physical isometry.
Both generators and source-return laws use their own declared physical metrics.

## 5. The exact smaller remaining head, all mixed terms retained

Let Y=X^perp inside F_N, r=dim(Y)=rank(L)<=K-1. Relative to the PHYSICAL
orthogonal split F_N=X direct-sum Y, the actual H_eff has blocks
 H_X on X, H_Y=P_Y H_eff|Y on Y, T_XY=P_X H_eff|Y:Y->X.
Since H_X>=I/40, its genuine inverse exists on all X with norm<=40.
For EVERY x in X and y in Y, ordinary finite-dimensional completion gives

 <x+y,H_eff(x+y)>
 =<x+H_X^(-1)T_XY y,H_X(x+H_X^(-1)T_XY y)>
  +<y,(H_Y-T_XY*H_X^(-1)T_XY)y>.                                   (9)

Consequently the actual entire head(1) is positive IF AND ONLY IF

 H_Y-T_XY*H_X^(-1)T_XY>=0 on EVERY y in the actual r-dimensional Y.   (10)

Equation(10) is STILL OPEN. Its source definitions retain BOTH original
whole inverse debts in H_eff and the NEW positive-compression inverse debt
in(9). Its actual rank r may be smaller than K-1; it is not padded with
invented zero observations. The bound r<=2^87-1 is a rigorously discharged
dimension reduction, not a sign computation on that remaining matrix.
No signed filtered-residual Schur complement, other character sector,
positive coverage weight, local diagonal sum or free gamma absorption is
substituted for(10).

If(10) is proved, (9) proves H_eff>=0, the full-tail completion proves d>=0,
the actual rank-one completion proves s[v]>=0 for EVERY finite-gamma edge v,
and core completion gives m[u]>=0 for every full form vector. The exact
source law Q4(O4u)=2m[u]-E(O4u)/8 then closes the original j=3 all-test bound.
These return implications are complete, but(10), full j=3, RH and GRH remain
OPEN. RH is the separate Mathlib RiemannHypothesis with the pole-inclusive
zeta source; this primitive chi3 sector has no pole. The exact GRH family
is GRWTSK.NumberTheory.Conditional.DirichletGRH: ALL complex Dirichlet
characters modulo EVERY positive integer, principal/imprimitive included,
and all zeros0<Re(s)<1. Native dirichletGRH_of_source_chains still consumes
RH AND PrimitiveNegativeWitness AND SmallConductorStages for EVERY primitive
nonprincipal character, both parities and genuinely complex sectors.

## 6. Heat, lossless types and evidence boundaries

Every used type retains its carrier, domain, hypotheses, quantifiers, physical
metric, source/normalization, parameters and evidence: the native full form
and DD4 basis; actual edge/core forms and whole inverses; actual finite head
F_N and R,J,L,X,Y,Z and all three Schur blocks; finite native triples and
finite source/proof syntax. Their finite typed DESCRIPTION coverage uses
pi_j=2^(-j-1) on exhaustive natural source codes, with full tail2^(-J).
On ell1, Kx=(x+mass(x)pi)/2 has exact inverse2Kx-mass(Kx)pi.
Reference coverage of these descriptions is not a physical arithmetic sign.
Actual spectral heat is constructed for M_high,H_X,M_Z above. The unchanged
actual A0 and D_N heat have gaps3/40 and100 with their complete inverse
time-tails. The remaining finite Hermitian operator(10) has genuine finite
spectral heat but its contractivity/native sign is OPEN, not an interface field.

Representable proof data use finite tagged source/binder/context records.
Constructor and length recursion prove decode(encode x)=x on the encoder
image, retaining full parameters, all458 atoms, source identities, both
infinite inverse descriptions, whole-tail error laws and distinct statuses.
The Lean codec below supplies this exact law for its finite record carrier.
Arbitrary semantic Hilbert vectors, spectra and actual source inverse kernels
remain exact bound expressions, not finite arrays or sampled substitutes.
A finite recipe for L or(10) is not a completed proof of its OPEN sign.

The primary argument is an exact source-preserving pullback through both
already constructed Schur optimizers, followed by a full physical DD4 source
bound. Its independent norm check(7) is essential: no heat or positivity is
transported through a fictitious isometry. The historical signed/unsigned
prime and source norms agree by the weighted2ab bound in(3), not by a
pointwise symbol comparison. The inherited row/core/smooth inputs retain
their recorded computational/written analytical assurance. No independent
replay of missing historical core Gram factors, human review or worldwide
novelty assessment is claimed. The Lean declarations below concern finite
scalar/inventory/codec facts only, not the continuum proofs(5)--(10).
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeHeadCompression

def sourceHighExponent : ℕ := 87
def originalEdgeTailExponent : ℕ := 349000

def originalSourceHighFloor : ℚ :=
  (sourceHighExponent : ℚ) * (693 / 1000) - 3 / 10 - 5 / 8 - 11 / 7 - 1444 / 25

theorem physical_prime_row_price :
    (18053610188579 / 312600000000 : ℚ) < 1444 / 25 := by norm_num

theorem complete_log_two_lower_guard :
    (2 * (1 / 3 + 1 / 81 + 1 / 1215) : ℚ) = 842 / 1215 ∧
      (693 / 1000 : ℚ) < 842 / 1215 := by norm_num

theorem physical_pi_quarter_log_guard :
    (4 / 3 : ℚ) < 1 + 3 / 10 + (3 / 10) ^ 2 / 2 := by
  norm_num

theorem complete_original_source_floor :
    originalSourceHighFloor = 121 / 3500 ∧ (1 / 40 : ℚ) < originalSourceHighFloor := by
  norm_num [originalSourceHighFloor, sourceHighExponent]

theorem genuine_compression_exponent_gap :
    sourceHighExponent < originalEdgeTailExponent := by
  norm_num [sourceHighExponent, originalEdgeTailExponent]

theorem exact_original_source_return : (1 / 40 - 1 / 8 : ℚ) = -(1 / 10) := by norm_num

/-- Only the scalar order step in the written physical-norm pullback. -/
theorem physical_pullback_order (head source norm : ℝ)
    (hidentity : head = source) (hsource : norm ≤ source) : norm ≤ head := by
  simpa only [hidentity] using hsource

abbrev ProofData := List String × (List (ℕ × ℕ × ℕ) × List ℚ)

local instance : Encodable Char :=
  Encodable.ofLeftInverse Char.toNat Char.ofNat Char.ofNat_toNat

local instance : Encodable String :=
  Encodable.ofLeftInverse String.toList String.ofList
    (fun _ => String.ofList_toList)

noncomputable def proofDataCoding : ProofData ≃ Set.range (Encodable.encode (α := ProofData)) :=
  Equiv.ofInjective _ Encodable.encode_injective

theorem proofDataCoding_roundtrip (x : ProofData) :
    proofDataCoding.symm (proofDataCoding x) = x :=
  proofDataCoding.symm_apply_apply x

def headCompressionPacket : ProofData :=
  (["grwtsk/math", "eef4e69aac22d8e6495052b391ed381b80f5eda0",
    "grwtsk/noeaaeue", "0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753",
    "radiusFour.sharpEdgeSchur.paidComplement.finiteEffectiveHead;native458",
    "physical-L2-dt;DD4-bk=sin(k*pi*x/4)/sqrt2;all-original-gamma",
    "Heff=AN-CNstar-DNinv-CN;R=f-DNinv-CNf;Jw=(-A0invBv,v)",
    "X=ker(P_DD4_less2pow87*J*R);codimX<=2pow87minus1;Heff_compression>=I/40",
    "Y_actual_rank_and_ALL_mixed_debt_retained;reduced_Y_sign_OPEN",
    "WRITTEN_analytic_compression;continuum_kernel_NOT_RUN;j3_RH_GRH_OPEN"],
   (ConductorThreeRadiusFourInventory.inventory 2980,
    [3, 4, 2980, 458, 428, 30, 93, 365, 87, 349000, 693 / 1000,
     3 / 10, 5 / 8, 11 / 7, 1444 / 25, 121 / 3500, 1 / 40, -(1 / 10),
     3 / 40, 40 / 3, 100, 1 / 100, 1 / 180, 3 / 40, 40]))

theorem packet_retains_all_native_atoms : headCompressionPacket.2.1.length = 458 := by
  change (ConductorThreeRadiusFourInventory.inventory 2980).length = 458
  exact ConductorThreeRadiusFourInventory.native_atom_count

theorem headCompressionPacket_decode_encode :
    Encodable.decode (Encodable.encode headCompressionPacket) = some headCompressionPacket :=
  Encodable.encodek headCompressionPacket

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeSharpEdgeHeadCompression
