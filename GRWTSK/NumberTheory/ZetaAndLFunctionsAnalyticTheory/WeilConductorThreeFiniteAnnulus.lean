/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
Source inspected: grwtsk/math 654cefad38292ca96e54439902602e823382103a.
Consumed conductor-three sources unchanged from9404b5698d0da5ee97d289a830f76ab75e3ef84f.
Canonical Noe proof skill read at7d296238ef384288431b9c2b8c876349e6aa2554.
WRITTEN_COMPUTER_ASSISTED_PROOF_COMPLETE_AT_STATED_SCOPE.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
INDEPENDENT_HUMAN_REVIEW_NOT_RUN / WORLDWIDE_NOVELTY_NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeLowFilter
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreePhysicalPackets
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRawSourceReturn

/-!
# The full conductor-three finite annulus and original radius-three stage

## Completed original statements

Use the EXISTING character modThreeQuadratic, its original primitive/nonprincipal
proofs, gamma parity1, and every DirichletStageChain.Admissible chi3 3 f.
Its carrier is real odd compact C2, zero off[-3,3], physical Lebesgue L2(dt),
with the original finite gamma-correction form. E=energy(liftReal f)>=0.
No H1 ratio, mode restriction, weighted norm or character substitution is used.
All universal theorems in this commentary are WRITTEN, COMPUTER-ASSISTED
mathematical proofs. No universal analytic Lean declaration is claimed.
Only the rational constants and target type at the end are Lean candidates.

Theorems proved here, for EVERY such original f, are:

 (A) finiteAnnulusValue f >= -(7262543/200000000)*E
                         >= -(98136331/500000000)*E;
 (B) originalComplement f >= -(1/20)*E >= -(1/5)*E;
 (C) primitiveArithmeticValue chi3 hp hn 3 (liftReal f)>=-(1/20)*E;
 (D) DirichletStageChain.PrimitiveStageLower chi3 hp hn 2.

Here finiteAnnulusValue and originalComplement are EXACTLY the definitions of
ConductorThreeComplementTail. In particular (A)'s domain is
 Dprime={10000<|xi|<3500000000} minus B0,B1,B2,
with their original exact radius100 centers, V=1-sinc(xi/3000000)^12,
m=V*(A-P_arith), and HIGH filter P_H unchanged. The original requested
budget98136331/500000000 is discharged, not substituted by a relaxed6/25.

## Backward target and actual constructed connection

During concurrent main updates the complete source advanced to
47a076ba39c4e1246ef6d1b2b3bafe00d808b93c. The seven consumed character,
conductor, stage, filter, codec and source modules have IDENTICAL committed
blobs at that revision and the computational baseline654cefad. Repository
instructions are unchanged. The new AnnulusDual, AnnulusSineEnclosure and
StructuredAnnulus consumers retain the same original signed source and still
state separate head/dual obligations; this proof supplies the original signed
annulus bound directly. CofinalFlexibleHead is a ZETA/pole-sector adapter and
is not substituted for this nonprincipal-character return. Concurrent endpoint-
tail and other source work is preserved without being imported as proof.

The missing meeting point was the uniform signed finite head on an exhaustive
actual-source packet cover. The completed objects now supply precisely it:
3,470,000,000 integer frequency cells inspected, 5,848,049 disjoint positive
packets retained, their exact mirrors, all35 observed width classes, all93
original source atoms, and every finite head checked. The entire omitted
physical basis, both mixed terms, and all unverified zero tails are bounded.
The low/high/source consumers in the imports were conditional on these actual
heads. The present finite instance discharges that premise; it is not an
interface with the desired conclusion placed in a field.

The full CSV has SHA145ffa4fce694c98377b3f6f04125b1f501e3c7f6d1e4a8a975ddf022f66eb47.
It covers [30000000,3500000000], has widths11..44 or52, smallest center gap12,
first packet[30000170,30000182], last[3499999860,3499999871]. Exact rational
comparisons find NO crossings of ANY of the six removed-band endpoints.
The only contained packets are
 B2:[371368836,371368847], B0:[371369269,371369281],
 B1:[787009716,787009727]. All other5,848,046 packets lie wholly outside
all three bands. Thus domain restriction never borrows a removed positive
anchor. The scalar proof below proves source nonnegativity on the ENTIRE
unretained set; endpoint samples alone would not suffice.

The same finite heads are genuine instances on COMPLEX physical
L2([-T,T],dt), T=300612999/100000000. They use the full orthonormal Legendre
basis and exact Fourier measure dxi/(2*pi). Both signs are justified by the
exact parity congruence D H_c D, not by a numerical symmetry assumption.

## Scalar coverage and basic-operation finite-head proof

# Conductor-three scalar coverage and physical-head arithmetic return

Local attribution: grwtsk contributors. Source9404b5698d0da5ee97d289a830f76ab75e3ef84f; consumed sources unchanged in654cefad38292ca96e54439902602e823382103a.
Written proof of explicit floating-operation error bounds. This is not a kernel result or a claim that any unfinished scan passed. Execution results, exact cache certificates and all remaining domain/matrix obligations must be supplied separately.

Use binary64 round-to-nearest with unit roundoff u=2^-53, no overflow in the relevant bounded calculations, no contraction or reassociation, and the compiled loop source with -ffp-contract=off and no fast-math. The normal-result model is |fl(x op y)-(x op y)|<=u|x op y|; summing at mostk sequential products/additions gives gamma_k=ku/(1-ku). The separately proved absolute subnormal allowance below covers gradual underflow, flush-to-zero and denormals-are-zero in these actual controlled loops. It is not inferred from is_iec559. Controlled reference inputs/results are checked finite; the bounded scalar operands prove scalar finiteness. Integers through3.6e9, their half-integers, and the displayed integer operation denominators are exactly representable. It is the basic IEEE operations of the reference loops that are used, not an uninspected BLAS error guarantee.

## Paid absolute subnormal and flush error

Put B=2^40 and m=2^-1022, the smallest positive normal binary64 value. All scalar-loop operands are bounded in magnitude byB: the largest unreduced phase is<2.2e10, the source jets are<72.4*6^5<10^6, and the remaining coefficients/subdivision values are smaller. All divisions have NORMAL denominators at least1, including the2pi phase divisor; there is no division by a possibly flushed subnormal. Consequently flushing an input or output subnormal adds, besides ordinary normal rounding, at most

    epsilon_sub = 3*B*m = 3*2^40*2^-1022

absolute error in one elementary operation. For addition/subtraction this pays both input drops and the output drop. For multiplication the input-product change is at most2Bm+m^2, and an output drop adds at mostm; their sum is<3Bm becauseB>=2. Division by a normal denominator>=1 has the still smaller numerator/output error. The tiny change in the ordinary relative-rounding bound is also inside this loose allowance. Gradual underflow has error at most2^-1075, already much smaller. No transcendental library evaluation is used in the controlled scalar trig code.

For an ACCEPTED reference Gram factor, the positive diagonal sum check forces each represented |L_ik|<11 even under flushing: a normal magnitude>=11 has a rounded square>120 and hence its nonnegative diagonal accumulation cannot be<100. Tiny dropped nonnegative terms cannot conceal such an entry. Thus the Gram/source reference operands are bounded byB too (in fact the factors are<11, source coefficients<22 and exact cache columns are bounded as below). Their only arithmetic is addition, subtraction and multiplication; no small denominator occurs. BLAS/LAPACK is purely a proposal forL and does not need any rounding or underflow guarantee: every returnedL is checked by these reference loops.

Scalar state is reset after at most100000 rotations. Its subsequent source-jet/Bernstein conditioning is<10^6: the largest jet phase sum is<=72.4*6^5<10^6, and the final Bernstein phase sum is<72.4*10.15<10^3. Coefficient construction, the bounded Taylor loops and all subdivision operations are covered by an additional overhead factor10000. Each reference source/Gram observation has at most400 basic operations. Hence, conservatively, the entire additional subnormal/flush perturbation to ANY final scalar or reference residual observation is bounded by

    10^15 * epsilon_sub < 10^-270.

The last strict inequality is the exact integer comparison3*10^285<2^982. There is no multiplication by the number of packets: the error is a uniform bound for each observed scalar/head entry, while maxima select values without an accumulating sum. This10^-270 is paid INSIDE the existing deliberately loose allowances, not omitted from them: gamma_121*24 is far below1e-11; the displayed total scalar price is<.117071<1/8; gamma_400*101+gamma_400*169+1e-12+10^-270<1e-10. In particular the1e-6 scalar arithmetic reserve and1e-10 residual arithmetic reserve remain unchanged. No assumption about an unrecorded FTZ/DAZ control bit is required.

## Scalar finite cover

The exact source inventory/input guards prove93 original atoms, sum|a_n|<72.4, log n<6, |r_float-log n|<5e-16 and |a_float-a_n|<1e-11. It also proves each hexadecimal logarithm-table value is below its true logarithm. The actual scanner's input header SHA is c65e3ebedb6630b5eff445636c2152bae3ca08a5947658eec277fc1541c1194c. Its input-source guards and output enumeration are separate evidence.

For any positive phase argument a<=2.2e10, the scanner reduces fl(a) by an integer multiple of the hexadecimal2pi, then wraps into[-pi_float,pi_float]. The quotient magnitude is<3.6e9. At input a=c*r_float, c<=3.6e9, the source-log error is<1.8e-6; input multiplication error is<2.5e-6; rounded quotient/product and the2pi representation error contribute<6e-6 together. The quotient may differ by1 at a half-boundary; wrapping restores the chosen interval and changes the phase only by an integer2pi plus the same paid representation/rounding errors. All these bounds together are<2e-5, measured as distance modulo true2pi. For an increment r_float<6, the corresponding phase error is<1e-13.

The reduced sine/cosine Taylor recurrences through degree41/40 have total absolute term sums<24, since exp(22/7)<24. Each term uses at most100 elementary relative-error factors, and each accumulation uses at most21. Thus their total arithmetic error is<gamma_121*24<1e-11. The omitted sine/cosine tails at |y|<=22/7 are<1e-28 by the first omitted Taylor term and its geometric ratio. These elementary bounds are deliberately much larger than the true errors. At initialization the trig vector therefore differs from the true unit vector by<3e-5 in Euclidean norm. At each recurrence step its exact rotation matrix differs by operator norm<3e-11, including increment error and basic arithmetic. There are at most100000 rotations before an exact-index reset. Iterating gives error<exp(3e-6)*(3e-5+3e-6)<4e-5. In particular EVERY observed sine/cosine component differs from its actual source value by<5e-5.

For the first six derivatives of P, the weighted jet error from these phase components is bounded by72.4*6^k*5e-5. Source coefficient/power construction and summation of93 terms add<5e-9*6^k. The degree11 endpoint-Hermite Bernstein coefficients are
 b_j=sum_(k<=j) binom(j,k)/(11)_k P^(k)(a),
 b_(11-j)=sum_(k<=j) binom(j,k)/(11)_k (-1)^k P^(k)(a+1), 0<=j<=5.
The exact maximal amplification is sum_(k=0)^5 binom(5,k)6^k/(11)_k=3904/385<10.15. Their arithmetic and four de Casteljau subdivision levels together cost<1e-6 in addition to the jet phase price. The full Hermite remainder, with double endpoint multiplicity6, is
 72.4*6^12/(4096*12!)=395847/4928000<0.080327.
Consequently actual P on every subcell is below the computed maximal Bernstein coefficient plus
 0.080327+72.4*5e-5*10.15+1e-6 <1/8.
This is the scanner's explicit1/8 guard; it is not an experimentally selected tolerance.

For integer a>=30000000 write a=2^k v and m=floor(256(v-1)). The bit-index calculation is exact, and v>=1+m/256. The table gives lower bounds for log2 and log(1+m/256). The floor routine's rounding error is<1e-13 and its subtracted1e-12 more than pays it. The already proved Binet bound A(x)>=log x-.75 for x>=100 implies A(x)>=computed_floor(a) throughout[a,a+1]. Therefore every discarded scalar subcell has s=A-P>=0 throughout, not only at its sampled endpoints. Every failed cell is retained; the code expands each failed-cell cluster by5 and merges overlapping closed intervals. Thus the FINISHED output list, if its completed domain/count/hash is present, covers every possible negative point of s in[30m,3.5b]. Its reflected list covers the negative axis since the source is even. Boundaries have zero Lebesgue measure. No statement is made about matrix signs by this scalar argument.

## Actual packet-head source minorants

Let I_j=[a_j,b_j], center c_j, radius R_j. The exact cache contains the TRUE original93-atom integrals, using their actual logs and signed weights, not rounded source replacements. Its columns are K0, minus a_n times the cos((log n)x) matrix, plus a_n times the sin((log n)x) matrix. Evaluate center coefficients using the same bounded trig routine; source-log midpoint phase errors are already included. Each sine/cosine center component error is<5e-5, so the pointwise difference between the true prime symbol and the nominal addition-formula symbol is<2*72.4*5e-5<.01. Put g_j=computed_floor(a_j)-.02. Rounded subtraction costs<1e-13. Since A>=computed_floor(a_j), the nominal raw source
 l_j(x)=g_j - sum_n a_n [cos_center_n*cos(r_n x)-sin_center_n*sin(r_n x)]
is a TRUE lower minorant of s(c_j+x) on the whole packet. The unused margin exceeds.009. It satisfies |l_j|<100. The physical matrix of l_j is precisely the exact linear combination of the true cached columns with coefficient vector Z=(g_j,cos_center,sin_center,...). This is the source to be certified. The sum of absolute Z coefficients is<210.

## Finite Gram residual, independent of the BLAS implementation

For one packet let A denote the exact-real cached column array, Ahat its finite binary64 stored approximation, and delta an accepted uniform entry bound. A Gaussian/quadrature/physical-basis cache checker must prove |A-Ahat|<=delta for EVERY entry. Thus cache combination error is<210delta per matrix entry.

An arbitrary finite lower-triangular binary64 L is a genuine exact-real Gram factor LL^T>=0; its origin in a successful Cholesky routine is irrelevant. After obtaining L heuristically, recompute every lower entry of LL^T and every lower entry of Ahat*Z in CONTROLLED fixed-order basic-operation reference loops. Check every input/intermediate/output finite. Check every direct diagonal dot-product<=100, and check the maximum absolute observed residual of LL^T - (Ahat*Z + sigma*I) <=rmax. Direct normal/subnormal error guards must include the subtraction and diagonal shift.

For N<=180, each Gram dot uses at most360 basic operations. Since the positive diagonal sums imply exact row squares<101, Cauchy--Schwarz gives sum |L_ik L_jk|<101. A reference Gram dot has error<gamma_400*101<5e-12. A runtime source absolute-sum check below168 gives the exact sum below169 by the same rounding bound. A reference source dot has187 terms; the exact cached column bounds follow by Cauchy--Schwarz from ||K||<=1: |K0_nm|<=1 and each trigonometric source entry<=|a_n|. Thus its sum of absolute products is<22+2*72.4*(1+5e-5)+210delta<168, and its error<gamma_400*169<8e-12 for delta<=1e-12. Subtraction and sigma insertion add<1e-12. Using the deliberately looser whole arithmetic guard1e-10, EVERY exact residual entry is bounded by rmax+1e-10. Symmetrize the lower-entry reference matrix, so the induced operator error is<=N(rmax+1e-10).

It follows, for the ACTUAL physical source matrix,
 H_j >= -[sigma+N(rmax+1e-10+210delta)] I.
For sigma=5e-7, N<=180, rmax<=1e-9, delta<=1e-12, the bracket is<1e-6. This inference uses actual completed reference-loop checks, not only a BLAS residual observation. A single failed/nonfinite check leaves that packet UNPAID. The cache rank-tail proof, complete family coverage, all cut/band comparisons and physical variance return are separate required hypotheses. This note proves none of their unfinished instances by assumption.

## Source column identity and reflection

Cache columns are explicitly ordered by the ordered pairs (prime p, power n), p ascending then exponent ascending. The scanner header is n ascending. The accepted caller must carry and check the explicit permutation of the same93 (p,n) keys before any source coefficient combination. Equal cardinality is insufficient. On negative packets use the exact reflected minorant l_(-c)(x)=l_c(-x). Since Phi_n(-x)=(-1)^n Phi_n(x), its physical head is D H_c D with D_nn=(-1)^n. Thus the same certified head lower bound holds on the reflected packet; no floating symmetry assumption is required. All mirrored centers enter the actual large-sieve family with the same separation bound.

## Completed exact finite-head instance

# Actual complete conductor-three physical head family

Local attribution: grwtsk contributors. Math source654cefad38292ca96e54439902602e823382103a; original93-atom source interfaces unchanged from9404b5698d0da5ee97d289a830f76ab75e3ef84f. This records a written return from actual standalone controlled finite computations. No Noe job, Lean compilation, kernel result, or losslessly archived family of transient Cholesky factors is asserted.

The carrier is complex L2([-T,T],dt), T=300612999/100000000, physical norm E(u)=integral|u|². Its complete orthonormal basis is e_n(t)=i^n sqrt((2n+1)/(2T)) P_n(t/T). With F(xi)=integral u(t)exp(-i xi t)dt, Phi_n(s)=sqrt(2T(2n+1))j_n(Ts). Packet frequency integration uses ds/(2pi).

Use the actual primitive chi3=(0,1,-1) modulo3 and odd gamma parity1. The source is s(xi)=log(3/pi)+Re psi(3/4+i xi/2)-sum_(n=p^e<=403,p!=3)a_n cos(xi log n), a_n=2log(p)chi3(n)/sqrt(n). All93 prime-power atoms are retained. The source matrices are genuine N-by-N real symmetric matrices and hence act on all complex coefficient vectors as Hermitian forms. The source s is even; the negative-center minorant is l_{-c}(x)=l_c(-x). Since Phi_n(-x)=(-1)^n Phi_n(x), its matrix is D H_c D for D=diag((-1)^n). Thus each positive-center certificate rigorously supplies the corresponding negative-center head without an extra unverified numerical sector.

The completed scalar interval enumeration covers [30000000,3500000000]. Its disjoint positive-frequency packet list contains5848049 closed integer-endpoint packets, widths11..44 or52. Reflection supplies the negative-frequency packets. The exact input CSV SHA is145ffa4fce694c98377b3f6f04125b1f501e3c7f6d1e4a8a975ddf022f66eb47. The scalar coverage proof, including the full Hermite error rather than sample interpolation, is in q3_scalar_and_matrix_roundoff_20261107.md. Matrix runs do not by themselves prove scalar coverage.

For width w set R=w/2, N=48 for w11/12 and N=ceil(Tw)+20 otherwise; N<=177. Each packet [lo,hi] has c=(lo+hi)/2 and raw source lower minorant
 l_c(s)=g_c-sum a_n[C_n cos(s log n)-S_n sin(s log n)],
where g_c=gamma_floor(lo)-.02 and C_n,S_n are the inspected basic-operation trig routine at c times the source log midpoint. The exact phase error bound<5e-5 and sum|a_n|<72.4 make l_c<=s(c+s) on the whole packet. No sampled source sign is used as this lower-minorant proof.

The exact interval cache has187 kernel matrices in order K0,[-a_n cos((log n)s),+a_n sin((log n)s)] in prime-ascending/exponent-ascending order. Each entry is the actual integral of that kernel times Phi_i Phi_j/(2pi). The cache source logs and weights are genuine enclosures of the original arithmetic source; Gauss, spherical-series, root, and all quadrature remainder errors are included. Every cache entry error is <=delta=1e-12. The atom order differs from the scanner's n-ascending header: the explicit93-tagged permutation and its inverse are checked, so no source sector or atom permutation is silently substituted.

Let H_c be the exact physical Galerkin matrix of l_c, and Hhat the linear combination of the binary64 cache entries with the actual computed center coefficient vector Z. The heuristic matrix routine proposes L for Hhat+sigma I, sigma<=1/2000000. Every lower entry is then recomputed independently using controlled fixed-order scalar products of the exact stored binary64 values: one source dot has187 terms, and the Gram dot has<=177 terms. The full runner rejects nonfinite values, computed row squared norms>=100, source absolute dot sums>=168, and residuals>1e-9. The exact binary64 L is an arbitrary Gram factor; no numerical theorem about Cholesky or BLAS is needed in the return.

The independently inspected basic-operation arithmetic error is<1e-10 per residual entry. The cache combination error is<210delta per entry. Therefore
 H_c >= -[sigma+N(1e-9+1e-10+210delta)] I > -(1e-6)I.
This is an inequality for EVERY complex coefficient vector in the actual Galerkin space, proved by the finite Gram residual. It is not extrapolation from sampled test functions or eigenvectors.

Actual complete checks passed for all5848046 packets outside the three previously paid bands; all three fully contained packets passed separately using the same exact caches and sequential-dot reference return. There are no packet crossings of any removed band cut. Thus all5848049 scalar-cover packet heads have actual finite witnesses. Maximum observed controlled residual over the full family is5.6843418860808015e-14, computed L-row squared norm<30.04, and source absolute dot sum<36.79. No failed or nonfinite packet is omitted. The finite physical rank tails and the conversion to the original source are separate analytic obligations, consumed by q3_physical_packet_family and the low/high filter return; this head calculation alone is not the original complementary integral theorem.

All centers including reflections are11-separated. For packet-dependent ranks N_j<=177, Q_Nj<=Q177 as orthogonal projections. Thus the continuous large-sieve theorem gives the single full-family head price
 sum_j 1e-6 ||Q_Nj(exp(-ic_j t)u)||² <= [24063710839899/701430331000000] E(u) <.034307 E(u).
This uses the physical norm and a single all-center bound, rather than multiplying a per-packet norm error by millions of packets. Rank tails may be grouped by width with their complete unobserved basis tails retained. The root/zeta written family proof supplies those tails and the actual consuming source inequality.

Retained evidence: exact cache bytes plus complete interval/error manifests, exact atom permutation, completed source CSV, compiled finite program/source, run commands and all runtime guard reports. Their finite byte encodings are lossless and preserve source identity/error data. Transient L factors were checked then discarded; no claim is made that the retained data decode those old factors. Rerunning the finite verification is distinct from decoding an archived factor.

Code: q3_controlled_head_scan_v2_20261107.cpp, source SHA f5861dee0095da791f10d421e951193a31e3e50fb9fcbf064b30cd20e75d6387; binary SHA519fc66c7c04fa39e5cb6986227f28bcc0bb91299d64fc2bb35ca2feb01d1b70. Compiled Apple clang21.0.0 arm64, -O3 -std=c++17 -ffp-contract=off -framework Accelerate; no fast-math. VECLIB_MAXIMUM_THREADS=1; width11 uses3 reference workers,width12 uses2,other widths1. Basic IEEE reference operations, not opaque matrix-library guarantees, are the arithmetic premises.

The always-active final binding checker q3_full_head_return_binding_20261107.py verifies source/input/cache/header hashes, exact domain/count/cuts, all93 tagged source atoms and both permutations, width/rank/T/R/q identities, complete runtime counts, every accepted guard, and rational matrix-floor return. Its output is accepted only after the completed -O execution succeeds. The original RH/GRH cofinal target remains separate and unproved by this finite stage.

## Exact cache construction and complete Gaussian errors

# Exact physical packet cache return

Local attribution: grwtsk contributors. Mathematical source: grwtsk/math654cefad38292ca96e54439902602e823382103a, with the relevant chi3 source unchanged from9404b5698d0da5ee97d289a830f76ab75e3ef84f. Read-only. Ordinary standalone integer/rational calculation only, no Noe jobs. Written analytic quadrature proof and exact finite scalar/matrix enclosure evidence; Lean compilation, kernel replay and transitive axiom audit NOT_RUN.

The consuming finite head is the COMPLETE complex physical Legendre head on H=L2([-T,T],dt), T=300612999/100000000. Fourier normalization is F(xi)=integral f(t)exp(-i xi t)dt with dxi/(2pi). All n=0,...,N-1 are included, with e_n=i^n sqrt((2n+1)/(2T))P_n(t/T) and Phi_n=Fourier(e_n)=sqrt(2T(2n+1))j_n(Ts). This is the actual physical basis; it is not a local frequency-polynomial surrogate.

The exact source has93 atoms a_k=2log(p)/sqrt(p^e) chi3(p^e), r_k=e log(p), indexed by ascending prime p!=3 and then ascending e with p^e<=403. Each true a_k,r_k has an outward interval in the manifest. The cached matrices, in the stated order, are

    K0[i,j]=integral[-R,R] Phi_i(s)Phi_j(s) ds/(2pi),
    K(1+2k)[i,j]=integral[-R,R] -a_k cos(r_k s)Phi_i(s)Phi_j(s) ds/(2pi),
    K(2+2k)[i,j]=integral[-R,R] +a_k sin(r_k s)Phi_i(s)Phi_j(s) ds/(2pi).

Hence the exact head for the real source minorant gamma_floor minus the literal signed Euler cosine sum is

    gamma_floor K0 + sum_k [cos(c r_k)K(1+2k)+sin(c r_k)K(2+2k)].

The center-phase coefficients and gamma_floor comparison are NOT manufactured by this cache. Their approximation and source comparison errors remain distinct obligations for the caller. The finite physical head sign is also still to be proved at each actual packet.

## Exact quadrature data

For width w, R=w/2, use N48 for w11/12 and N=ceil(Tw)+20 otherwise; q=max(80,4w+32). The generic checker accepts11<=w<=52. Fine precision384bits. The original generic checker uses256spherical terms. Its faster identical-method variant uses max(112,3ceil(TR)+16) terms, validates its ACTUAL subsequent-term ratio, and reuses the leading Bessel prefactor by recurrence across n. The first independent w11 cache instead used256bits and112terms. Every cache's own manifest records those actual parameters and guards.

Decimal Newton iterations only locate potential positive roots of P_q. Every final dyadic box [a/2^b,(a+1)/2^b] is validated by exact opposite polynomial signs. Distinct positive boxes and their reflected negative boxes provide q distinct roots, exhausting the degree-q polynomial. Root validation uses D_n=n!v^nP_n(u/v), with integer recurrence

    D_0=1, D_1=u,
    D_(n+1)=(2n+1)u D_n - n^2 v^2 D_(n-1).

Thus no floating root guess becomes evidence without its exact sign check. The Legendre midpoint is evaluated as an exact rational. Since max[-1,1]|P_(q-1)'|<=(q-1)q/2, its value at the true root differs from the midpoint value by at most(q-1)q/(4*2^b). This gives the explicit midpoint padding. The identity P_q'(x)=qP_(q-1)(x)/(1-x^2) at a root then gives outward intervals for each positive Gauss weight2/[(1-x^2)P_q'(x)^2]. Positive weights are checked. All divisions have positive interval denominators.

For every n and quadrature node s, the spherical Bessel series is evaluated with outward dyadic arithmetic. For the original256term generic checker, |Ts|<79 and the subsequent absolute term ratios are bounded by79^2/[2*257*515]<1/20. In the faster variant the ACTUAL A=ceil(TR),K=max(112,3A+16) satisfy A^2/[2(K+1)(2K+3)]<1/20, checked exactly. Padding by the current absolute term divided by19 therefore covers the ENTIRE omitted infinite series in either variant. Multiplication by the outward leading factor (Ts)^n/(2n+1)!! gives the true Phi_n interval. No high-precision transcendental library value is trusted.

Pi is enclosed by Machin's arctangent identity with alternating-series remainder. Integer logarithms use range reduction and the convergent atanh series with its entire geometric tail; square roots are enclosed by integer-square tests. Sin/cos use outward range reduction by the true pi interval and Taylor's theorem on |argument|<4. The helper's fixed truncation remainders are explicitly padded and remain in every subsequent interval.

Parity is exact: Phi_n(-s)=(-1)^nPhi_n(s). Therefore K0 and every cosine column vanish exactly for i+j odd; every sine column vanishes exactly for i+j even. For permitted entries, the negative-root contributions equal the positive-root contributions, so the positive-node values include a factor2. This halves the work without deleting any source term.

## Complete Gaussian integration remainder

For any k>=0, Cauchy--Schwarz in the ORIGINAL physical norm gives

    |Phi_n^(k)(s)| <= integral[-T,T]|t|^k|e_n(t)|dt <=sqrt(2T)T^k.

The exponential-integral formula for Phi_n proves this for every n and s. Its product with Phi_m and cos(r s) or sin(r s) has kth derivative at most2T(2T+|r|)^k, by the Leibniz rule or directly by the product Fourier integral. Actual |r|<6, |a|<12, and2T+6<12013/1000. Thus an unweighted K0 entry has q-Gauss error at most

    E0=2T*(12013/1000)^(2q)*R^(2q+1)*2^(2q+1)*(q!)^4 /
            [6*(2q+1)*((2q)!)^3],

and each weighted sine/cosine entry at most12E0. Here6<2pi is used conservatively. This follows from the exact monic-Legendre q-Gauss remainder constant; it can also be obtained by Hermite interpolation at the q roots and integrating the squared node polynomial. Each scalar function is real and C^(2q) on the whole interval. Each width's exact rational check retains this whole remainder. At w52,q240 it is below4.4e-25; using13 in place of12013/1000 would be too expensive for that wider class.

For an explicit derivation, take the degree2q-1 Hermite polynomial matching a real scalar function and its derivative at all q nodes. Generalized Rolle gives a remainder bounded by sup|f^(2q)| times the squared node polynomial divided by(2q)!. Gauss exactness integrates the interpolant exactly. Since P_q has leading coefficient(2q)!/[2^q(q!)^2] and squared norm2/(2q+1), integrating that monic squared polynomial gives exactly the displayed constant. Scaling x=s/R gives R^(2q+1). The standard Gauss identities and hypotheses are also recorded by the primary NIST reference [DLMF3.5(v)](https://dlmf.nist.gov/3.5#v). The spherical Bessel series used above is [DLMF10.53.1](https://dlmf.nist.gov/10.53.E1); its successive-term ratio directly proves the retained infinite tail, rather than a finite passing check.

## Integer matrix summation and actual binary64 output

At a positive node, write actual Phi_i=p_i/2^b+e_i with |e_i|<=E/2^b and actual scalar node factor v=v_c/2^b+d_v with |d_v|<=E_v/2^b. Put P=max_i|p_i|. Every product differs from the integer center v_c p_i p_j/2^(3b) by at most

    [E_v(P+E)^2 + |v_c|(2PE+E^2)]/2^(3b).

This follows by expanding the three factors and applying the triangle inequality; it includes dependent root/value errors without claiming independence. Summing these nonnegative scalar bounds across nodes gives a common exact rational entry enclosure for each component. All center products and their sums are Python unbounded integers, so there is no integer overflow or floating accumulation error.

The fast64 variant first maps each fine384bit node/Phi interval outward onto a64bit dyadic grid, using floor on the lower endpoint and ceiling on the upper endpoint. The SAME product/error formula is then used with b64 and exact192bit-denominator products. Fine384bit intervals and coarse64bit intervals are BOTH retained, with `matrix_center_grid_bits=64` explicit in its manifest. This preserves all fine uncertainty and adds the finite quantization error; it does not replace a fine true value by an uncertified floating approximation. Consequently its binary64 matrices can differ by a few final bits from the full384bit-center cache while satisfying their own complete source enclosure. The checker source SHA captured at process start identifies the actual algorithm used for each cache; completed cache bytes remain immutable.

Each final exact rational center is converted once to a binary64 number. The checker then converts that number BACK to its exact rational value and measures the actual conversion residual. Adding this residual to the interval-product error and full Gaussian remainder encloses the STORED binary64 entry. No assumption about a library GEMM or implicit correct rounding is used for that conclusion. Every actual component is checked below1e-12 per entry, with actual observed errors around1e-16. The manifest retains separate errors for every component, not only the displayed decimal locator.

If B_b is the stored real symmetric matrix and |B_b-K_b| entrywise<=delta_b, then ||B_b-K_b||<=N delta_b by the maximum absolute row-sum bound. Consequently a center's combined exact source-head error is at most

    N[|gamma_floor|delta_0 + sum_k(delta_(1+2k)+delta_(2+2k))].

For |gamma_floor|<=22 and common delta, this is208N delta. Center-phase error, gamma comparison, runtime matrix formation error and finite SPD/Cholesky certification must still be added separately. Cache enclosure is not a head-sign theorem.

## Entire physical tail and original-source consumer

The matrices have finite physical rank; their finite descriptions do not eliminate n>=N. The complete rank-tail and countable packet-family return are proved in `/private/tmp/q3_variable_physical_packets_20261107/proof.md`, using spherical-Bessel tails, a continuous large sieve in angular normalization, and the original physical norm. Different radii/ranks may be aggregated by disjoint width classes with their entire tails retained. The actual compact variance components have the SAME stated support T and averaged physical energy at most that of the original test, so the resulting family price returns to the original norm once all actual finite heads and exact coverage are supplied.

## Evidence and lossless finite description

Each cache is187*N*N IEEE754 binary64 numbers, row-major and little-endian, and the checker validates its complete bitwise encode/decode roundtrip. The accompanying canonical JSON stores width, source pin, T,R,N,q,b, true atom intervals, every root bracket, Phi/weight/node-factor intervals, each error component and the cache SHA256. Canonical JSON encode/decode is checked on ALL finite fields. These constitute a dependent finite description: the dimensions and basis are bound to the same source and parameters, and every approximation/error is retained. No encoding of arbitrary L2 or real-valued functions is claimed. The mathematical dependence on the entire physical basis and all packet/rank tails remains in the analytic theorem.

This discharges the exact fixed-cache/source-head comparison. Remaining sign/coverage and runtime certification obligations are explicit above; no RH, GRH, full-annulus sign or stage-j2 completion follows from the cache alone.

## Physical family and every omitted rank

# Variable-radius physical packet return with the entire rank tail

Local attribution: grwtsk contributors. Source inspected: grwtsk/math `654cefad38292ca96e54439902602e823382103a`; relevant chi3 source unchanged from `9404b5698d0da5ee97d289a830f76ab75e3ef84f`. Read-only. Written proof plus exact rational guards; Lean parsing, kernel replay and axiom audit NOT_RUN. This discharges aggregation and full-rank-tail obligations conditional on actual packet-head floors; it does not assert those floors or exhaustive coverage.

Let H=L2([-T,T],dt), extended by zero, F(xi)=integral f(t)exp(-i xi t)dt, and use frequency measure dxi/(2pi). Let a finite or countable family I_j=[c_j-r_j,c_j+r_j] have disjoint interiors, 0<r_j<=R, and separately suppose |c_j-c_k|>=d>0. In particular d need not be at least2R. Let literal real minorants l_j(s)<=s_source(c_j+s) on [-r_j,r_j] satisfy |l_j|<=L. Their source, sector, source parameters, gamma comparison, signed atom inventory, interval and quadrature evidence remain fixed.

Set u_j(t)=exp(-ic_jt)f(t). Its Fourier transform at s is F(c_j+s). The complete physical orthonormal basis and exact real Fourier transforms are

    e_n(t)=i^n sqrt((2n+1)/(2T)) P_n(t/T),
    Phi_n(s)=sqrt(2T(2n+1)) j_n(Ts), n>=0.

Define coefficients explicitly by a_jn=integral conjugate(e_n(t))u_j(t)dt, and Q_N u_j=sum_(n<N)a_jn e_n. There is no parity truncation, since u_j is complex even for real odd f. Let K_j be Fourier restriction H->L2([-r_j,r_j],ds/(2pi)), so ||K_j||<=1. Suppose the actual complete source head matrices

    A_j[n,m]=integral_(-r_j)^(r_j) l_j(s)Phi_n(s)Phi_m(s)ds/(2pi)

satisfy A_j>=-sigma I_N, including every error. This is an outstanding finite source assertion for every packet used.

The angular continuous large sieve is

    sum_j |integral g(t)exp(-ic_jt)dt|^2 <= C||g||_2^2,
    C=2T+2pi/d.

Primary source: Montgomery--Vaughan, Hilbert's Inequality, JLMS(2)8(1974), Theorem2 and Corollary2, DOI10.1112/jlms/s2-8.1.73; https://personal.science.psu.edu/rcv4/personal/Publications/s2-8-1-73.pdf . Indeed the squared exponential synthesis integral has diagonal2T sum|b_j|^2; splitting the sine quotient gives two Hilbert forms, each bounded by pi/d sum|b_j|^2. Duality gives the displayed inequality. First take finite subfamilies, then monotone convergence. Apply it to g=f conjugate(e_n), using |P_n|<=1, to obtain

    sum_j |a_jn|^2 <= C(2n+1)/(2T)||f||^2,
    sum_j ||Q_Nu_j||^2 <= C N^2/(2T)||f||^2.                (1)

The bound |P_n|<=1 follows directly from Laplace's integral formula with integrand (x+i sqrt(1-x^2)cos(theta))^n of modulus<=1 on[-1,1].

## Sharper integrated full Bessel tail

The convergent spherical-Bessel power series has leading x^n/(2n+1)!!, and successive absolute factors x^2/[2k(2n+2k+1)]. Thus

    |j_n(x)| <= |x|^n/(2n+1)!! exp(x^2/[2(2n+3)]).

For A>=TR and E>=exp(A^2/[2(2N+3)]), n>=N, exact integration of |s|^(2n), rather than replacing it by R^(2n), gives

    tau_n^2 := ||K_j e_n||^2
      <= (2TR/pi) E^2 A^(2n)/[(2n+1)!!]^2.               (2)

This is uniform in the ACTUAL radii r_j<=R. The factor2n+1 in |Phi_n|^2 cancels with the power integral. Put b_n=tau_n sqrt((2n+1)/(2T)). Then

    b_n <= E sqrt(R/pi) sqrt(2n+1) A^n/(2n+1)!!,
    b_(n+1)/b_n <= A/sqrt((2n+1)(2n+3)) <= A/(2N+1)=rho.

Here ratio means the explicit upper-bound sequence. If rho<1,

    B=sum_(n>=N)b_n <= E sqrt(R/pi) sqrt(2N+1) A^N/
                            [(2N+1)!!(1-rho)],
    gamma=C B^2 <= C E^2(R/pi)(2N+1) A^(2N)/
                            [(2N+1)!!^2(1-rho)^2].       (3)

Minkowski in the direct sum over j of L2([-r_j,r_j],ds/(2pi)), followed by(1), bounds each finite physical-rank tail by sqrt(C)B||f||. The summable bound makes these tails Cauchy in the full direct-sum Hilbert space. In each j coordinate their limit is K_j(1-Q_N)u_j by physical Legendre completeness and boundedness of K_j. Therefore, with ALL n>=N and ALL j retained,

    sum_j ||K_j(1-Q_N)u_j||^2 <= gamma||f||^2.             (4)

Disjointness gives sum_j||K_j u_j||^2<=||f||^2 by Plancherel. Consequently sum_j||K_jQ_Nu_j||^2 <=(1+sqrt(gamma))^2||f||^2. This is a restriction norm estimate, distinct from the physical head mass in(1).

Expand each literal minorant integral into its head, two cross terms and tail square. The head costs sigma times(1), the cross terms cost at most2L times the product of the restriction norms, and the tail square costs at most L times(4). Cauchy--Schwarz over j proves

    sum_j integral_(I_j) s_source(xi)|F(xi)|^2 dxi/(2pi)
      >= -[sigma C N^2/(2T)
           +2L(1+sqrt(gamma))sqrt(gamma)+L gamma]||f||^2.  (5)

For the literal chi3 bounded annulus, the source is bounded, so the signed integrals converge absolutely on disjoint packets. More generally first apply(5) to finite families and assume the appropriate source integrability before passing to the countable limit. Every unobserved rank and packet remains represented; a finite description does not remove the required completeness or convergence.

## Exact requested constants and consumer

Take T=300612999/100000000, d>=11, L<=100. Elementary pi bounds3<pi<22/7 give C<33/5 and C/(2T)<253/231. The checker proves all exponential bounds by a positive rational Taylor series with geometric remainder, and proves the following complete-tail prices:

* R<=26,N128,E2^18,A79,rho<1/3: gamma<4.995e-10, sqrt(gamma)<9/400000. If every head A_j>=-1e-5 I, total price<.184.
* R<=26,N160,E2^14,A79,rho<1/4: gamma<1e-47, sqrt(gamma)<1e-23. If every head A_j>=-(1/200000)I, total price<.140191.
* R<=50,N256,E2^32,A151,rho<3/10: gamma<1e-30, sqrt(gamma)<1e-15. If every head A_j>=-(1/400000)I, total price<.179444.

All three prices are below98136331/500000000, the current original physical-norm annulus allowance. A universal head floor1e-5 at rank160 or256 would NOT suffice under these head bounds; the conditional floors above must be retained. Radius26/rank128 already suffices under that looser floor because the sharper entire-tail integration controls its aggregate cross error.

The actual compact variance representation has each physical component supported in this SAME[-T,T], preserves the original93 unramified prime-power atoms through403, and has averaged physical energy at most the original ||f||^2. Applying(5) to each represented component and integrating the finite nonnegative coefficient measure therefore returns the same price in the original physical norm. No signed-kernel total-variation estimate or fictitious band limit is used.

For variable ranks, one may either use a common certified rank N or partition by radius/rank classes and sum their individually proved prices. A sharper exact formulation uses head envelope sum_(n>=0)(2n+1) sup_(j:N_j>n)(sigma_j) and tail envelope sum_(n>=0) sqrt((2n+1)/(2T)) sup_(j:N_j<=n)||K_j e_n||; these follow from the same finite-rank argument. Such envelopes must be summable with proved numerical bounds; inserting only Nmax for heads and Nmin against Rmax for tails can be unnecessarily expensive.

This advance discharges the variable-radius aggregation and complete physical-rank-tail connection for a genuine source family. Missing obligations remain: the actual exhaustive packet cover of the exact annulus excluding the removed bands; nonnegativity or another paid estimate on its entire leftover set; and the stated complete finite-matrix floor at EVERY packet. Neither the scalar pilot nor this analytic theorem supplies those signs.

## Adaptive ranks and the single whole-family price

# One price for the entire adaptive physical packet family

Local attribution: grwtsk contributors. Source654cefad38292ca96e54439902602e823382103a. Written proof with exact rational guards; Lean/kernel NOT_RUN. This is the variable-rank continuation of proof.md in this directory, using the SAME source, H=L2([-T,T],dt), complete basis, Fourier normalization, original physical norm and literal minorants. It applies to all complex physical tests. Finite matrix signs remain conditional.

Suppose every packet has integer width w in11..52, radius w/2, and physical rank N_w=48 for w11/12, otherwise ceil(Tw)+20. Distinct packet centers are at least11 apart, and all packet interiors are disjoint. The family may be countably infinite and may include both mirrors. Let each actual complete source head be at least-sigma I_(N_w), with a single uniform sigma, and every literal source minorant satisfy absolute boundL. All actual heads must be supplied; a pilot does not establish this premise.

The uniform large-sieve coefficient bound is

    sum_j |a_jn|^2 <= C(2n+1)/(2T)||f||^2,
    C=2T+2pi/11.

Since N_w<=Nmax=177, summing only the appropriate positive terms proves

    sum_j sigma||Q_(N_w(j)) u_j||^2
      =sigma sum_(n<Nmax) sum_(j:N_w(j)>n)|a_jn|^2
      <=sigma C Nmax^2/(2T)||f||^2.                       (1)

This pays the head ONCE. Multiplying this term by the number of width classes would discard information unnecessarily.

Within a fixed width class w, apply the full-rank-tail proof in proof.md with R=w/2,N=N_w. It gives sum_(j in classw)||K_j(1-Q_(N_w))u_j||^2<=gamma_w||f||^2. The classes are disjoint in the j index. Summing all classes therefore gives the ENTIRE adaptive tail bound

    sum_j||K_j(1-Q_(N_w(j)))u_j||^2<=Gamma||f||^2,
    Gamma=sum_(w=11)^52 gamma_w.                           (2)

Every high rank n>=N_w and every unobserved packet j remains included. There are only42 possible width classes, and the exact manifest gives each complete gamma_w. This is a sum of squared direct-sum norms, so no extra square-of-class-count factor arises. Global frequency disjointness, Plancherel and the direct-sum triangle inequality give head RESTRICTION norm at most(1+sqrt(Gamma))||f||. This is distinct from the physical head mass in(1).

Expanding the full literal source integrals as physical heads, both mixed terms and high squares gives

    sum_j integral_(I_j) s_source(xi)|F(xi)|^2 dxi/(2pi)
      >=-[sigma C Nmax^2/(2T)
           +2L(1+sqrt(Gamma))sqrt(Gamma)+LGamma]||f||^2.    (3)

The proof is exactly Cauchy--Schwarz for the mixed terms using(2), retaining every coupling. Finite families followed by the bounded-annulus absolute-integrability limit prove the countable version.

For T=300612999/100000000, L100, use C<33/5, C/(2T)<253/231. In each class choose A=ceil(TR), E=2^ceil(A^2/(2N+3)), rho=A/(2N+1). The inequality exp(1/2)<2 is proved once by exact rational positive Taylor bounds; it gives E>exp(A^2/[2(2N+3)]). The integrated spherical-Bessel bound from proof.md gives

    gamma_w <=(33/5) E^2(R/3)(2N+1) A^(2N) /
                       [((2N+1)!!)^2(1-rho)^2].

Every gamma_w<1e-24; the largest is below3.852104e-25 atw12. Summing the ACTUAL42 rational bounds gives Gamma<3.852124e-25<(7e-13)^2. Thus with the conditional actual head floor sigma1e-6, equation(3) has total physical-norm price

    <(253*177^2/231)*1e-6 +200(1+7e-13)*7e-13+100*(7e-13)^2
    <34312715/1e9 =.034312715
    <98136331/500000000.

All42 possible widths are retained even though the current pilot observes only35; missing widths do not need to be observed for the uniform bound. This does NOT supply their actual head signs or certify that the final scan has no widths beyond52. A wider class requires its own rank/tail inclusion and a revised Nmax head price.

The exact compact variance representation of the consuming middle multiplier has component supports bounded by this sameT and average physical energy at most the original test's energy. Apply(3) to each component, then integrate its finite nonnegative coefficient measure to obtain the same price in the original norm. Complete intervals must lie in the actual consuming source domain; removed positive anchors and uncovered sets cannot be silently used. Actual finite heads, exhaustive domain coverage and the entire leftover-domain estimate are still missing.

## Completed instance, original source return and cofinal branch

The literal minorant magnitude bound used in the tail is also paid explicitly.
For each computed center pair(C_n,S_n), the true pair is a unit vector and
each component error is<5e-5. Thus
 sqrt(C_n^2+S_n^2)<=1+sqrt(2)*5e-5<10001/10000.
Cauchy--Schwarz against the unit vector(cos(r_n*x),-sin(r_n*x)) gives
 |l_j(x)|<22+(362/5)*(10001/10000)<100.
This uses the proved phase error, not an unjustified exact-unit identity for
rounded sine/cosine values or a bound by their individual maxima. The bound
|g_j|<22 follows from lo>=30000000, the positive logarithm table, and
exp(22)>3500000000 together with the paid gamma-floor arithmetic.

The always-active binding checker passed under Python -O, independently rerun
by the root agent. Its result SHA is
714cdd49a8c36c7b30c9a1d04cdb52822ef9b5f60ef5b155dec5308e25e7ec64.
It binds actual full CSV/footer/domain/count/cuts, the exact93 tagged source
atoms and both permutations, all35 cache identities/T/R/N/q/error bounds,
all runtime counts and finite reference guards, plus the3 separate contained
packet checks. Actual whole-cover count is5,848,049. The uniform rational
head floor is73187/100000000000 <1/1000000, with maximum rank177.
Every head is quantified over ALL complex coefficient vectors by the Gram
residual proof above. This is not finite testing of selected input functions.

Fresh exact cache indexing also passed under -O, with identical index SHA
9ded598eedb285b01e0dc6bb953f01b43fc6740e64014dae437f91836163b739.
Maximum actual cache entry error is1.1123148831561025e-16; the proof uses the
much weaker uniform1e-12 guard and preserves every component's exact error.
All35 cache matrices/manifests, seven immutable generator versions, one scalar
helper, full source CSV, ordered atom tags/permutation, controlled C++ source,
compiler flags and completed run reports are retained in the Noe artifact data.
The static math verification companion records their identities and statuses.

Apply the proved adaptive family theorem with actual head floor1e-6,L100.
It gives total price Cpacket=34312715/10^9 for the ENTIRE family including
both mirrors and every physical-rank tail. The same estimate holds for any
subfamily: its center separation, actual heads and complete tails are inherited.
It is a SINGLE physical-norm estimate; no packet-count or width-class multiplier
is inserted in the head term. Compact variance components have the exact
stated physical support and averaged mass<=E, as proved in the imported sources.

For (A), use the exact proved ConductorThreeLowFilter restriction:
 finiteAnnulusValue f >= scanHighValue f - E/500.
On the scan domain use precisely the outside-band complete packets above.
The source is nonnegative on its entire leftover set. Apply the actual raw
packet bound to every wide/high/low variance component; its support is exactly
T=3.00612999 and its averaged PHYSICAL mass multiplier is
V*P_H^2*(1-P_L^2)<=1. Hence scanHighValue f>=-Cpacket*E, and
 Cpacket+1/500=7262543/200000000<98136331/500000000.
All low-domain, outer-tail, band-removal and endpoint allowances are already
proved inside that1/500 restriction; they are not silently set to zero.

For (B), apply the imported RawSourceReturn original-complement argument to
the subfamily outside B0, INCLUDING the separately checked B1/B2 packets.
Whole high/low bounds cost lambda=11567/2500000000000 and eta=10^-144.
Removing B0 requires an UPPER bound on the removed high/low symbols, supplied
by96*(2*10^-40+10^-160). The middle low/outer tails cost
152*10^-80+76*10^-20. Together with Cpacket their exact sum is<1/20.
Thus originalComplement f>=-E/20, which implies the requested original(7).
This uses no unproved finite-band sign and no arbitrary restriction of a
mixed-sign quadratic inequality.

For (C), use the independently derived RAW source decomposition of
WeilConductorThreeRawSourceReturn. Its exact original source identity is
 Q_chi3,3(f)=J_all(A-P_arith).
Without V, whole high still costs lambda by the physical Schur/variance proof,
and whole low costs eta by the finite verified-zero formula with the ENTIRE
unknown-zero tail retained. Raw middle components have support3.00612799<T,
averaged mass<=E, and the SAME93 original atoms (next nonzero atom409).
Use ALL5,848,049 packets and their mirrors, including the3 contained ones.
Their raw source is nonnegative on the entire remaining scan domain. The
low/outer middle costs are152*10^-80 and76*10^-20. Therefore
 Q_chi3,3(f)>=-[Cpacket+lambda+eta+152*10^-80+76*10^-20]*E>=-E/20.
No older smoothing-cost note or old B-band payment is needed for this return.
The finite verified-zero input is Platt's actual chi3 height10^8/3, NOT fullGRH;
all higher zeros retain their signed pairing and the proved infinite tail.

For (D), energy is nonnegative and1/20<1/4=(1/2)^2. The radius in the EXISTING
PrimitiveStageLower definition at j=2 is(2:Real)+1=3. Thus (C) supplies exactly
EVERY original Admissible input, source, norm, sign and quantifier of
PrimitiveStageLower modThreeQuadratic modThreeQuadratic_primitive
modThreeQuadratic_nonprincipal 2. This is the new discharged cofinal coordinate.

The dependency path is now:
 original chi3/source and physical L2 + exact cache/cell objects
 -> complete scalar cover + all-head Gram bounds + full Legendre/LS tail
 -> low/high variance and true source return
 -> original annulus(A), complement(B), chi3 stage j=2(D)
 -> coordinate j=2 of SmallConductorStages chi3 hp hn.

The ORIGINAL DirichletStageChain.dirichletGRH_of_source_chains STILL requires
SmallConductorStages for EVERY primitive nonprincipal character, its other
cofinal coordinates, the source-negative-witness return, and independent RH.
The GRH family is exactly ALL complex Dirichlet characters modulo EVERY
positive integer, zeros in0<Re(s)<1. Primitive principal conductor1 is zeta/RH;
imprimitive characters retain the native inducing-character/finite-Euler return.
No Hecke/automorphic family is substituted. Neither RH nor complete GRH follows
from this finite stage. Next exact chi3 lemma is PrimitiveStageLower at j=3:
 Q_chi3,4(f)>=-E(f)/8 for EVERY original Admissible chi3 4 f.
Its new original prime inventory extends through floor(exp8)=2980; this proof's
93-atom/radius-three instance cannot be reused with the larger domain unchecked.

## Evidence, coverage, coding and independent comparison

Evidence levels are separate. The local written analytical argument plus
completed controlled finite arithmetic establish (A)-(D) at computer-assisted
scope. Lean compilation, fresh kernel checking, transitive axiom audit and
independent human review are NOT_RUN. The finite computations are not themselves
a kernel proof. Standalone reference loops have the explicit IEEE error model
proved above; no accuracy theorem for opaque Cholesky/BLAS is assumed.
Transient proposed L factors were checked then discarded. Retained reports
are completed computation evidence, NOT a lossless archive of those L bytes.
Rerunning an algorithm is distinct from decoding a historical witness.

All original and auxiliary mathematical types reuse the exact dependent finite-
description/codec interface of WeilDirichletCompactFilterReturn. For retained
representable data, encode stores dependent type context, source/character,
T,R,N,q, ordered atom identity, entire arrays/manifests, every approximation and
tail error, dependencies and separate evidence status. Its proved
 decode(encode x)=some x
and encoder-image inverse decodeImage(encode x)=x recover the WHOLE dependent
pair and fields. Canonical JSON and binary64 cache readbacks passed on all
retained fields/bytes. The retained-data gzip/tar encoder additionally archived160 files,983522639
uncompressed bytes into345299404 bytes. Streaming decode was compared directly
with EVERY original byte, not inferred merely from equal hashes. Archive SHA is
f9468dcc4a87d64ff22a97c66bba50a4848870d76a4d004d7ddf62b7d2bbff22.
The local Noe artifact is .cache/chi3-radius-three-20261107/retained-proof-data.tar.gz;
its complete member inventory and source/error identities are retained beside it.
No arbitrary semantic L2 function is finitely encoded,
and no discarded L witness is claimed compressed. Finite source programs and
formula descriptions retain every infinite convergence/domain/tail obligation.

Heat is ONLY the existing exhaustive branch-coverage instance. Enumerate all
representable typed descriptions by natural codes, retain invalid-code/status
entries, give code n weight2^(-n-1), and retain the ENTIRE tail2^(-J) after J.
Every representable description has a code. Reuse the proved summable-source
return x=2Kx-(sum Kx)*pi. These laws give coverage and source recovery, not an
Euler sign or a spectral semigroup. Arithmetic signs in this proof come from
the actual93-atom source comparisons, all finite Gram checks and full tails.
No sign is inferred from positive coverage weights or positive reference heat.

Comparison/hostile checks: a genuine unpaid source well defeats the universal
degree-five frequency-polynomial positivity shortcut; its exact obstruction and
actual physical-basis repair are in WeilConductorThreePhysicalPackets. The
present method uses actual physical L2 Galerkin matrices, complete rank tails
and a distinct large-sieve aggregation, so that obstruction does not apply.
Independent agent audits checked source orders, residual sign, all removed-band
cuts, Fourier conventions, the entire complex zero tail, and the sharper exact
power integral in the Bessel tail. Shared source/cache facts are disclosed;
these are AI-assisted examinations, not invented human review or novelty claims.
Primary inputs remain Platt's finite verification, Bennett--Martin--O'Bryant--
Rechnitzer zero counts, DLMF gamma/quadrature identities and Montgomery--Vaughan
Hilbert inequality at their stated scopes. Worldwide novelty is NOT_ASSESSED.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeFiniteAnnulus

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss

/-- Exact existing target type; its universal proof above is written, not kernel-claimed. -/
abbrev StageTwoTarget : Prop :=
  DirichletStageChain.PrimitiveStageLower modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 2

def completedAnnulusPrice : ℚ := 34312715 / 10 ^ 9 + 1 / 500

/-- Finite arithmetic only; the all-input analytical return is proved in the commentary. -/
theorem completed_annulus_price :
    completedAnnulusPrice = 7262543 / 200000000 ∧
      completedAnnulusPrice < 98136331 / 500000000 := by
  norm_num [completedAnnulusPrice]

theorem literal_minorant_magnitude_margin :
    (22 + (362 / 5) * (10001 / 10000) : ℚ) < 100 := by
  norm_num

theorem actual_uniform_head_guard :
    (73187 / 10 ^ 11 : ℚ) < 1 / 10 ^ 6 := by
  norm_num

theorem stage_two_radius_and_allowance :
    (2 : ℚ) + 1 = 3 ∧ (1 / 20 : ℚ) < (1 / 2) ^ 2 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeFiniteAnnulus
