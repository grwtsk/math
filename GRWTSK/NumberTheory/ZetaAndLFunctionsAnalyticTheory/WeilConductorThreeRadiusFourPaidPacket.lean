/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

Actual certificate source: grwtsk/mathc779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Native core inspected on main12e3471d075669ca7ff09c41b8df7e5ab64f18fc;
the consumed StageChain, character and codec contracts are unchanged.
Only tracked native stage/character/coverage/codec modules are imported.
No untracked radius-four module, execution runner or mutable cache is imported.

WRITTEN_ANALYTIC_PAID_PACKET_PROOF / RECORDED_EXACT_CERTIFICATE_PASS
UNIVERSAL_ANALYTIC_LEAN_PROOF_NOT_CLAIMED
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreePrimitiveGauss
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# One actual radius-four middle packet, paid on the full physical carrier

The ORIGINAL consumer is `DirichletStageChain.PrimitiveStageLower
modThreeQuadratic modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`:
for EVERY original `DirichletStageChain.Admissible modThreeQuadratic 4 f`,
the actual primitive source must satisfyQ_chi3,4(f)>=-E(f)/8.
The carrier is REAL odd compactC2, zero off[-4,4], physical LebesgueL2 mass,
with its original finite parity-one gamma form. This source supplies ONE
actual paid pair of middle intervals. The whole signed middle and hence
stagej=3 remain OPEN. A conditional typed consumer below keeps that premise
visible rather than presenting the local packet as a stage theorem.

## 1. Exact local theorem and its source

Fix

 T=2001503/500000=4.003006,
 C=18524227541662946/10000000=9262113770831473/5000000,
 R=10, N=104, Iplus=[C-R,C+R], Iminus=[-C-R,-C+R].

The local carrier is ALL COMPLEX L2([-T,T],Lebesgue dt), zero extended.
E(u)=integral_R |u(t)|^2dt is the ORIGINAL physical mass. Its angular
Fourier transform isF_u(xi)=integral_R u(t)exp(-i*xi*t)dt, with frequency
measure dxi/(2pi). There is no weighted norm, derivative bound, parity
restriction or finite-mode test carrier. The complete written theorem is

 integral_Iplus s4(xi)|F_u(xi)|^2 dxi/(2pi)>=-10^-6 E(u),       (P)

for EVERY suchu. The recorded actual price is<2.38419709*10^-7. The same
bound holds onIminus, so the SAFE single mirrored-pair price is2*10^-6.
There is no multiplication by an unproved exhaustive packet count.

The actual character is the primitive nonprincipal realchi3=(0,1,-1)
modulo3, conductor3 and gamma parity1, with no principal pole. Write

 s4(xi)=A(xi)-P4(xi),
 A(xi)=log(3/pi)+Re psi(3/4+i*xi/2),
 P4(xi)=2 sum_(n=p^e<exp8,p!=3)log(p)*chi3(n)*cos(xi*log n)/sqrt(n).

This is the native `CharacterWindow.twistedPrime 4 modThreeQuadratic`
source, not the old93-atom radius-three symbol. Original2980<exp8<2981;
the last nonzero atom is2971. Exact support comparisons prove
log2971<2T<log2999, and exhaustive factorization gives no prime powers in
2972..2998. Thus the enlarged physical carrier has EXACTLY the same458
unramified prime-power atoms as radius4. Prime3 is absent because its
actual character value iszero. No support or arithmetic tail is dropped.

The genuine physical Hilbert carrier is an almost-everywhere quotient.
Restriction to[-T,T] and zero extension back are inverse isometries on its
supportedL2 class. On this finite intervalL2 is included inL1 by
Cauchy--Schwarz, so each displayed Fourier value is a bounded linear
functional, independent of the representative. This justifies applying
the actual operator to every physicalL2 class, without a hiddenH1 premise.

## 2. Accurate gamma comparison and the complete physical basis

SetG=2060049/100000=20.60049 andy=(C-R)/2. The exact checker proves

 log(3y/pi)>G+10^-8, and (5/9)/y<10^-8.

Binet's integral[DLMF5.9.15] forz=3/4+iv gives
|psi(z)-log z+1/(2z)|<=1/(18|v|), because
|t^2+z^2|>=2*(3/4)*|v| andintegral t/(exp(2pi*t)-1)dt=1/24.
In particularRe psi(z)>=log|v|-(5/9)/|v|. At everyxi inIplus the
logarithm increases and this correction decreases from the left endpoint.
ThusA(xi)>=G throughoutIplus. The literal REAL signed minorant is

 ell(s)=G-sum_n a_n cos((C+s)log n), |s|<=R,
 a_n=2log(p)*chi3(n)/sqrt(n).

The full source absolute mass is<211, so|ell|<232. A positive gamma
floor alone proves no arithmetic sign; the ACTUAL signed matrix is paid next.

For arbitrary originalu putv(t)=exp(-i*C*t)u(t). This preserves support and
physical energy exactly and givesF_v(s)=F_u(C+s). Use the complete basis

 e_n(t)=i^n sqrt((2n+1)/(2T))P_n(t/T), n>=0,
 Phi_n(s)=Fourier(e_n)(s)=sqrt(2T(2n+1))*j_n(Ts).

The phase convention is the negative-angular convention stated above.
Its orthonormality follows from the exact Legendre norm2/(2n+1).
Completeness follows because the Legendre spans are all polynomials,
polynomials are dense in continuous functions on the compact interval,
and continuous functions are dense in physicalL2. Multiplication by the
unit phasesi^n preserves this complete Hilbert basis. The integral formula
for sphericalBessel givesPhi_n real andPhi_n(-s)=(-1)^n Phi_n(s).
LetQ project onto ALL n=0,...,103; complex coefficients of BOTH parities
are retained. The exact Galerkin matrix is

 H_ij=integral_[-R,R] ell(s)Phi_i(s)Phi_j(s)ds/(2pi).           (G)

## 3. Outward192-node quadrature and every entry error

All96 positiveP192 root boxes are isolated by exact homogeneous integer
Legendre sign reversals on the384-bit grid. Their disjoint reflections
give192 distinct roots, exhausting the polynomial degree. The positive
weights usew=2/((1-x^2)P192'(x)^2) and
P192'(x)=192*P191(x)/(1-x^2) at the root. Exact midpointP191 is padded by
its ENTIRE variation: max|P191'|<=191*192/2, midpoint radius1/(2*2^384).
Thus the actual node and weight uncertainty is present in every entry.

The sphericalBessel series is evaluated through256 terms, with|Ts|<41.
Its first omitted absolute ratio, and every later one, is<1/100; the whole
omitted series is therefore bounded by the final included absolute term/99.
The leading powerx^n/(2n+1)!! and its error remain in the interval. Source
logs use48 atanh terms with the full geometric remainder; this is not the
coarser24-term Schur recipe. Every pi, root, square-root, log, trig,
large-center phase and arithmetic rounding uncertainty is retained.

For a positive nodex, s=Rx, weightw andb=Rw/(2pi), let
c_n=cos(C log n), d_n=sin(C log n). Pairing reflected Gauss nodes gives

 value_even=2b[G-sum_n a_n*c_n*cos(s log n)],
 value_odd =2b sum_n a_n*d_n*sin(s log n).

Use the first fori+j even and the second fori+j odd. These are exactly
ell(s) andell(-s) after physical parity, with the actual character signs.
No phase-erased or absolute prime multiplier substitutes for the source.
If the node value has midpointv0 and errorev, and every physicalPhi_i has
midpoint bounded byp and error boundede, its whole entry-product error is

 ev*(p+e)^2+|v0|*(2pe+e^2).

Summing the actual96 nodes bounds every entry, including dependent products.
The midpoint products and sums are exact integers on the common2^1152 grid.

The complete Gauss remainder is also included. Physical Cauchy--Schwarz
gives|Phi_n^(k)|<=sqrt(2T)*T^k. Hence the384th derivative of
ell*Phi_i*Phi_j is bounded by2100*(16.01)^384, because
2T+8<16.01 and2T*(G+sum|a_n|)<2100. The standard Gauss192 remainder is

 [2100*(16.01)^384*R^385*2^385*(192!)^4]/[6*385*(384!)^3].

This follows from the double-node Hermite remainder and the squared norm
of the monic Legendre polynomial; seeDLMF3.5(v). The denominator6 is a
lower bound for2pi. Combining ALL node/series/interval and full quadrature
errors gives a uniform entry bound

 delta_entry<2073/10^25=2.073*10^-22.                           (E)

## 4. Retained exact104-by104 Gram certificate

LetM be the symmetric midpoint matrix, retained as ALL104-by104 integer
entries with common denominatorS^3,S=2^384. A numerical routine proposed
a binary64 lowerL forM+sigma*I,sigma=2^-22. Its numerical origin proves
nothing and is irrelevant to the acceptance argument.

The ENTIRE104-by104 factor binary file is retained, including its zero
upper triangle. Each finite binary64 lower entry is decoded as an exact
dyadic rationalLI_ij/D. The certificate additionally retains ALL104 lower
integer rows, lengths1,...,104, and the common exactD. Every lower entry of

 LL^T-(M+sigma*I)

is recomputed by exact INTEGER arithmetic on a common dyadic grid. Symmetry
retains every upper entry too. Its maximum exact residual is

 residual<1087/10^17=1.087*10^-14.                             (F)

No floating-point,BLAS, sampled-vector or approximate-eigenvalue residual
is accepted. For a complex vectora, a^*LL^T*a=||L^T*a||^2>=0. A symmetric
matrix whose entries have error<=epsilon has operator norm<=N*epsilon,
by(sum|a_i|)^2<=N*sum|a_i|^2. Thus(G),(E),(F) prove

 H>=-[sigma+104*(delta_entry+residual)]I                        (HEAD)

for EVERY complex coefficient vector in the complete104-mode core.
Its coefficient norm is precisely||Qv||_2^2 by orthonormality, not an
uninspected coordinate Gram metric. The stronger head observation with
that projected physical mass is retained; replacing it byE(v) below is
only a safe single-packet bound.

## 5. The ENTIRE unobserved physical basis and source return

Forx<=41 andn>=104, the convergent spherical series gives

 |j_n(x)|^2<=x^(2n)/((2n+1)!!)^2*exp(x^2/(2n+3))
            <=3^8*41^(2n)/((2n+1)!!)^2,

since1681/211<8 andexp8<3^8. LetK be angular Fourier restriction to[-R,R]
with measureds/(2pi). By Plancherel||K||<=1. The ratio of successive tail
terms including2n+1 is at most1681/(209*211)<1/25. Therefore its FULL
Hilbert--Schmidt tail is bounded by

 ||K(1-Q)||_HS^2 <=
 [196830*209*41^208/(209!!)^2]*(25/24)
       <2.119*10^-54 <10^-52.                                 (TAIL)

Here196830=30*3^8 and2RT/pi<30, using2T<9 andpi>3. This is the sum over
EVERY n>=104, justified by the geometric series and complete physical
basis, not a check of finitely many tail modes. Put tau=10^-26.

Splitv=Qv+(1-Q)v. Its head uses(HEAD); both cross terms are retained and
bounded by2*232*||KQv||*||K(1-Q)v||. The full tail square costs
232*||K(1-Q)v||^2. Consequently

 integral ell(s)|F_v(s)|^2 ds/(2pi)
 >=-[sigma+104*(delta_entry+residual)+464*tau+232*tau^2]E(u).

The exact rational guards prove this bracket<10^-6 (recorded actual
display2.384197089943394*10^-7). Since actualA>=G, (P) follows on the
FULL physical carrier. Every support, normalization, source sign, matrix
entry uncertainty, cross term and unobserved mode has returned to it.

Actuals4 is even. For the reflected interval useell_minus(s)=ell(-s).
Its head isD H D withD_nn=(-1)^n, a unitary diagonal, so it has the same
bound; its full tail and norm comparisons are unchanged. Thus the single
mirrored pairIplus unionIminus costs at most2*10^-6 E(u). The intervals
are disjoint. This does not assert an all-frequency floor or globalGRH.

For an actual compact variance/filter family from originalf, with EACH
component supported in[-T,T] and averaged PHYSICAL mass<=E(f), apply(P)
to every component and average its nonnegative coefficient measure. This
returns the same pair price2*10^-6 E(f) for the actual weighted pair.
The radius-four high/low variance components have radius<4.002917<T here,
so their458-atom source matches this theorem. The pair lies wholly inside
the new middle domain30m<|xi|<3.5*10^25; no oldB-mask is involved.

## 6. Hostile comparison and the unresolved remainder

The separately exact negativeR=5.5 packet supplies a useful comparison:
its physical envelopeh has the recorded64 rational Legendre coefficients.
The actual complex source test isg(t)=exp(i*C*t)h(t), soF_g(C+s)=F_h(s)
andE(g)=E(h). On that smaller interval its source form is<-0.29E(g).
The SAMEg is in the present physical carrier. By(P), the intervening
annulus between radii5.5 and10 therefore contributes
>(0.29-10^-6)E(g). Positive surrounding frequencies are essential.
The small packet could not simply be assigned the old tiny loss.
This is a source observation about restricted intervals, not a negative
FULL source test or counterexample to the original radius-four stage.
An exploratory full-source numerical value about22.09 is not used.

LetP(f) be this actual filtered mirrored-pair contribution andR(f) the
ENTIRE remaining signed middle, with all positive and negative pieces
retained. The original whole-middle allowance isCmid=124999987/10^9.
After this paid pair, the next still-OPEN sign is

 R(f)>=-[Cmid-2*10^-6]E(f) for EVERY original Admissiblechi3 4 f.

The conditional native-stage theorem below requires that premise AND
the actual source return AND the paid-pair observation. It neither
manufactures a universal analytical Lean declaration nor asserts that
the remaining middle has been paid. The original Dirichlet target is
ALL complex Dirichlet characters modulo EVERY positive integer; one
localchi3 pair does not supply all cofinal stages, other sectors or the
separate zeta/RH branch.

## 7. Explicit coverage laws and source-preserving lossless reuse

Heat has ONLY branch-coverage role. For the two mathematical observations
(paidPair,entireResidual), usepi=(1/2,1/2) and the actual positive kernel
K=(I+Pi)/2. ExplicitlyK(p,r)=((3p+r)/4,(p+3r)/4). It preserves the sum,
and the exact source return is

 (p,r)=2K(p,r)-(sum K(p,r))*(1/2,1/2).

These laws are proved by ring below, for SIGNED observations as well.
They recover the entire residual value; positive coverage does not
establish its arithmetic sign. This is not an Euler sign certificate
or the spectral heat semigroup of the original Weil form.

For countably many later representable branches, reuse the ACTUAL
`WeightedStage.stageCoverageWeight`, `stageCoverageWeight_pos`,
`tsum_stageCoverageWeight`, `stageCoverageWeight_tail`, and
`every_representable_branch_covered`. They provide exhaustive codes,
positive weights2^(-n-1), total1 and the ENTIRE unobserved tail2^(-J)
at every cutoffJ. The finite pair grouping above is not a lossless
encoding of arbitrary individual future branches: the complete branch
descriptions, invalid-code statuses and whole unobserved tail remain
retained. No completed exhaustive radius-four family is claimed.

Codec recommendation: reuse
`WeightedStage.dependentProofCodec` fromWeilWeightedFirstStage on the
dependent TOTAL type, whose native interface is
`GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.Lossless`.
Its proved field isroundtrip and the source theorem isEncodable.encodek.
The same namespace suppliesLossless.encode_injective andLossless.comp.
Encode the source/type descriptor TOGETHER with its payload; do not
replace it with a hash or encode only matrix maxima. The unrelated
zero-binding/process interfaces ofHeatFlowLosslessCompressionCover are
not needed to justify this finite certificate.

The concrete retained carrier below is a dependent pair: its descriptor
bytes contain the complete written source/declaration/binder/type context;
its payload contains the COMPLETE canonical certificate bytes and COMPLETE
factor bytes. Such finite lists are Encodable. The actual files instantiate
this constructor, not merely their displayed hashes. Descriptor fields
retain source revision, original character/conductor/parity, full physical
carrier and norm, Fourier convention, T,C,R,N, all quadrature/precision
parameters,458 atom intervals, all96 root/weight/Phi node records, ALL
104-by104 midpoint integers, ALL exact factor rows, binary factor bytes,
common denominators, exact residual, every error and the ENTIRE tail laws.
It also retains dependencies and the distinct written/computational/formal
statuses. No arbitrary semanticL2 function is claimed finitely encoded;
its universal binder/source definition is retained as finite syntax.

The native partial decoder obeysdecode(encode x)=some x. We explicitly
totalize it with a default only OUTSIDE its encoder image and prove
decodeRetained(encode x)=x below from the native roundtrip. This full
roundtrip assumes NO desired arithmetic conclusion. It preserves every
retained byte and hence every validly parsed dependent field. It does not
make malformed data valid, establish an unchecked sign or remove the
Bessel/domain/convergence obligations proved above. If a further byte
compression is used, compose only with a separately proved roundtrip.

## 8. Exact evidence and verification scope

The canonical publication manifest is
documentation/mathematics/_verification/specifications/NumberTheory/
ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourPaidPacket/manifest.json.
Its complete retained files aredata/certificate.json anddata/factor.f64le,
relative to that manifest directory. These are the full byte artifacts,
not hashes standing in for arrays. The original construction paths below
record provenance and do not assert that scratch storage is publication.

Certificate/tmp/q3_radius_four_paid_packet_20261107/certificate.json:
SHA256e39896120a620e4f91976cfa6ee790e984e1a3a7c6f7ee5bf7787df53b2e94d5.
Full104-by104 factor filefactor.f64le,86528 bytes:
SHA25607e15233ee709b24f71311d34658cb84293aff7ea58a307c92d78fe92da9603b.
Exact checker/tmp/q3_radius_four_paid_packet_exact_20261107.py:
SHA25654cd4e929972fc674112e0797e4ceaa42fde5de388cda405f9c2604052aabec6.
Written proof source/tmp/q3_radius_four_paid_packet_proof_20261107.md:
SHA2569308a99ab62dfc1f8c34aaadb77ef8e34799cd61bf01f7328787be1b7333d5a2.

The full certificate and factor are retained, in contrast with historical
transient factors that were not archived. The checker uses numerical
factorization only as a proposal; its accepted Gram residual is exact
integer arithmetic against the retained factor and midpoint matrix. The
independent written review checked parity, angular normalization, operator
entry error, Gram return and complete tail. This is agent mathematical
feedback, not invented independent human or kernel evidence. Compilation,
fresh kernel and transitive axiom audit of this source areNOT_RUN.
Only finite scalar and codec/conditional declarations follow; the universal
analytic operator theorem(P) is the complete WRITTEN proof above.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourPaidPacket

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open DirichletStageChain SourcePrimeCorrelation
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

def physicalRadius : ℚ := 2001503 / 500000
def packetCenter : ℚ := 9262113770831473 / 5000000
def packetRadius : ℚ := 10
def gammaFloor : ℚ := 2060049 / 100000
def diagonalShift : ℚ := 1 / 2 ^ 22
def entryErrorUpper : ℚ := 2073 / 10 ^ 25
def exactResidualUpper : ℚ := 1087 / 10 ^ 17
def tailNormUpper : ℚ := 1 / 10 ^ 26
def singlePacketPrice : ℚ := 1 / 10 ^ 6
def pairPacketPrice : ℚ := 2 * singlePacketPrice
def middleAllowance : ℚ := 124999987 / 10 ^ 9
def sourceReturnPrice : ℚ :=
  597531 / (5 * 10 ^ 13) + 1 / 10 ^ 64 + 426 / 10 ^ 40 + 213 / 10 ^ 20

theorem exact_physical_and_frequency_guards :
    (4 : ℚ) < physicalRadius ∧ physicalRadius * packetRadius < 41 ∧
      30000000 < packetCenter - packetRadius ∧
      packetCenter + packetRadius < 35 * 10 ^ 24 := by
  norm_num [physicalRadius, packetCenter, packetRadius]

theorem actual_packet_price_margin :
    diagonalShift + 104 * (entryErrorUpper + exactResidualUpper) +
      464 * tailNormUpper + 232 * tailNormUpper ^ 2 < singlePacketPrice := by
  norm_num [diagonalShift, entryErrorUpper, exactResidualUpper,
    tailNormUpper, singlePacketPrice]

theorem infinite_tail_scalar_guards :
    (1681 / (209 * 211) : ℚ) < 1 / 25 ∧
      (1681 / 211 : ℚ) < 8 ∧ (196830 : ℚ) = 30 * 3 ^ 8 := by
  norm_num

theorem source_budget_margin :
    middleAllowance + sourceReturnPrice < (1 / 8 : ℚ) := by
  norm_num [middleAllowance, sourceReturnPrice]

/-- Two-branch coverage ONLY; its algebra does not prove either source sign. -/
def coveragePaid (paid residual : ℝ) : ℝ := (3 * paid + residual) / 4
def coverageResidual (paid residual : ℝ) : ℝ := (paid + 3 * residual) / 4

theorem coverage_mass (paid residual : ℝ) :
    coveragePaid paid residual + coverageResidual paid residual = paid + residual := by
  unfold coveragePaid coverageResidual
  ring

theorem coverage_source_return (paid residual : ℝ) :
    2 * coveragePaid paid residual -
        (coveragePaid paid residual + coverageResidual paid residual) / 2 = paid ∧
      2 * coverageResidual paid residual -
        (coveragePaid paid residual + coverageResidual paid residual) / 2 = residual := by
  constructor <;> unfold coveragePaid coverageResidual <;> ring

/-- The entire unobserved dyadic tail remains present at every cutoff. -/
theorem entire_unobserved_coverage (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

/-- Descriptor/context bytes, full certificate bytes and full factor bytes.
All three are retained; validity is not inferred from representability. -/
abbrev RetainedEvidence := Sigma (fun _ : List ℕ => List ℕ × List ℕ)

def retainedCodec : Lossless RetainedEvidence ℕ :=
  WeightedStage.dependentProofCodec (fun _ : List ℕ => List ℕ × List ℕ)

def retainEvidence (sourceAndTypeBytes certificateBytes factorBytes : List ℕ) :
    RetainedEvidence :=
  ⟨sourceAndTypeBytes, (certificateBytes, factorBytes)⟩

theorem partial_roundtrip (data : RetainedEvidence) :
    retainedCodec.decode (retainedCodec.encode data) = some data :=
  retainedCodec.roundtrip data

/-- Default decoding outside the encoder image creates no accepted evidence. -/
def decodeRetained (code : ℕ) : RetainedEvidence :=
  (retainedCodec.decode code).getD ⟨[], ([], [])⟩

theorem full_roundtrip (data : RetainedEvidence) :
    decodeRetained (retainedCodec.encode data) = data := by
  unfold decodeRetained
  rw [retainedCodec.roundtrip data]
  rfl

theorem complete_files_roundtrip
    (sourceAndTypeBytes certificateBytes factorBytes : List ℕ) :
    decodeRetained (retainedCodec.encode
      (retainEvidence sourceAndTypeBytes certificateBytes factorBytes)) =
        retainEvidence sourceAndTypeBytes certificateBytes factorBytes :=
  full_roundtrip _

/-- A typed native-stage consumer, conditional on the actual pair, ENTIRE
residual and source-return observations. It asserts no universal analytic
packet or middle hypothesis by an instance, axiom or default field. -/
theorem stage_three_of_pair_residual_and_source
    (localPair entireResidual : (ℝ → ℝ) → ℝ)
    (hpair : ∀ f : ℝ → ℝ, Admissible modThreeQuadratic 4 f →
      -(pairPacketPrice : ℝ) * energy (liftReal f) ≤ localPair f)
    (hresidual : ∀ f : ℝ → ℝ, Admissible modThreeQuadratic 4 f →
      -((middleAllowance - pairPacketPrice : ℚ) : ℝ) * energy (liftReal f) ≤
        entireResidual f)
    (hsource : ∀ f : ℝ → ℝ, Admissible modThreeQuadratic 4 f →
      localPair f + entireResidual f - (sourceReturnPrice : ℝ) * energy (liftReal f) ≤
        primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_primitive
          modThreeQuadratic_nonprincipal 4 (liftReal f)) :
    PrimitiveStageLower modThreeQuadratic modThreeQuadratic_primitive
      modThreeQuadratic_nonprincipal 3 := by
  unfold PrimitiveStageLower
  intro f hf
  norm_num at hf ⊢
  have hE : 0 ≤ energy (liftReal f) := by
    unfold energy
    exact integral_nonneg (fun _ => sq_nonneg _)
  have hp := hpair f hf
  have hr := hresidual f hf
  have hs := hsource f hf
  have hprice : (middleAllowance : ℝ) + (sourceReturnPrice : ℝ) ≤ 1 / 8 := by
    norm_num [middleAllowance, sourceReturnPrice]
  have hscale := mul_le_mul_of_nonneg_right hprice hE
  norm_num [pairPacketPrice, singlePacketPrice, middleAllowance, sourceReturnPrice]
    at hp hr hs hscale
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourPaidPacket
