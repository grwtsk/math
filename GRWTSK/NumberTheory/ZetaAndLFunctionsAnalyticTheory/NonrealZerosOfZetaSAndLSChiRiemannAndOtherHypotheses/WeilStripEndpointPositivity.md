# All-window endpoint-ray positivity from a seven-eighths zero strip

By grwtsk contributors.

Version 1, 2026-11-12 (America/Los_Angeles).

## Status, exact consumer, and external-input boundary

This is a written analytical source candidate. The elementary complex-kernel
estimate below has a complete proof independent of any L-function. Its arithmetic
application uses the actual pole-inclusive Weil explicit formula and the
seven-eighths zero-free theorem of OpenAI [1]. The latter has NOT been freshly
verified here: its existing canonical adaptation is SOURCE_IMPORTED_UNBUILT.
No claim is made that inspecting the top declaration verifies its transitive
proof or its correspondence with the paper. The ordinary critical-strip baseline
is not silently replaced by that stronger external input.

The advance over [WeilEndpointGammaRelative.md](WeilEndpointGammaRelative.md)
is a positive lower bound on each exponential endpoint ray for EVERY support
length and EVERY real modulation, rather than eventual positivity of the
unmodulated diagonals. It is not positivity on their linear span or on the full
test domain. The mixed endpoint inequality and the complementary lower sign
remain unresolved. In particular this is not a proof of RH or primitive
Dirichlet GRH, and it does not supply the canonical hpositive hypothesis.

The companion [WeilEndpointKernelAlgebra.lean](WeilEndpointKernelAlgebra.lean)
contains three real-algebra proof candidates used in the kernel estimate. It
neither formalizes the full estimate nor imports the external zero-free theorem.
Each declaration has its own adjacent provenance record. Written analytical
argument and source inspection are the present evidence. Elaboration, dependency
builds, fresh kernel replay, transitive axiom audit, certified computation,
independent analytical review and repository-wide validation are NOT_RUN.
Originality is UNASSESSED; the bounded prior-art comparison proves no absence.

Initial inspected main: af9b7a05afbf79d4def070fa96f9091b2f177160.
Refreshed base: 6f7d2e3b6d15f0d2c49aaba984af27c48786943c; complete root tree
74ef95d112efa2be821a458ee3c44354973cf87b. The 23 intervening added files are
preserved. Lean: leanprover/lean4:v4.34.1. Mathlib:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6828793541. No existing source, root import, dependency pin or
workflow is changed. No dependent proof execution is launched; the canonical
execution skill returned 404 at Noe revision
982acb9cfa87c86ef09a4ad009576be1923885a8.

## 1. Literal arithmetic source and endpoint tests

Fix a primitive Dirichlet character chi of conductor q>=1. The q=1 source is
actual Riemann zeta. Write a in {0,1} for its parity, b=a+1/2, and delta=1 for
q=1 and zero otherwise. On I_L=(0,L), L>0, zero-extend all tests. Inner products
are conjugate-linear in the first variable. The unchanged form is

    Q_chi,L(f)=c_q,a ||f||^2+Gamma_b(f)-<f,P_chi,L f>+delta<f,R_L f>,
    c_q,a=log(q/pi)+psi_Gamma(1/4+a/2),
    k_b(r)=exp(-br)/(1-exp(-2r)),
    Gamma_b(f)=integral_0^infinity k_b(r)||f(.+r)-f||_2^2 dr,
    P_chi,L=sum_(n>=2, log n<L) Lambda(n)/sqrt(n)
                   [chi(n)T_(log n)+conj(chi(n))T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

This is the physical source of [PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md),
section 1. All prime powers and character phases remain. No scalar is shifted.
The physical plus-Fourier convention retains the existing inverse-character
return to primitiveArithmeticValue; see [the orientation record](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md).
Reflection/dual-character adapters do not justify a same-character identification
without the indicated test or character transformation.

For eta in R let

    u_L,eta(x)=exp(-x/2)exp(i eta x),
    v_L,eta(x)=exp(-(L-x)/2)exp(i eta x),  0<x<L.

Both functions have squared norm d_L=1-exp(-L). Modulation changes the test,
not the primitive character, conductor or parity. These zero extensions have
boundary jumps. They belong to the logarithmic form domain V_L,b, not generally
to H1(R): their squared translation increments are O_(L,eta)(r) at zero.
For 0<r<L their correlations agree exactly:

    C_u(r)=C_v(r)=exp(i eta r)[exp(-r/2)-exp(-L)exp(r/2)].       (1)

For r>=L they vanish. Thus their full arithmetic diagonal values agree,
including the two pole orientations. Nothing about their mixed form is inferred.

Define the entire removable-singularity kernel, away from 0 and 1 by

    W_L(s)=(1-exp(-Ls))(1-exp(-L(1-s)))/(s(1-s)),
    c(L)=exp(-L/2)sinh(L/2)^2/(32cosh(L/2)).                  (2)

Only 0<Re s<1 will be used, so neither denominator vanishes.

## 2. A quantitative sign estimate for the actual signed kernel

**WSEP-v1-1.** For every L>0 and every complex s satisfying
1/8<=Re s<=7/8,

    Re W_L(s) >= c(L) Re(1/(s(1-s))) > 0.                    (3)

This is an elementary inequality on complex numbers, with no RH, GRH,
zero-free theorem or arithmetic positivity hypothesis.

Proof. Write s=1/2+d+i tau, |d|<=3/8, and put

    A=tau^2+1/4-d^2>0, B=2d*tau,
    C=cosh(L/2), S=sinh(L/2)>0.

Then s(1-s)=A-iB. Direct multiplication, retaining the imaginary cross term,
gives

    Re W_L(s)=2exp(-L/2)/(A^2+B^2) * T,
    T=A[C-cosh(dL)cos(tau L)]+B sinh(dL)sin(tau L).           (4)

The PLUS sign in the final cross term is essential. Let

    F=(1+(B/A)^2)sinh(dL)^2.

Cauchy--Schwarz for the cosine/sine coefficients gives

    T/A >= C-sqrt(1+F).                                     (5)

The following three regions cover all L>0 and real tau.

Case I: L<=4 and |tau|<=3/4. Since |tau L|<=3<pi, tau*sin(tau L)>=0.
Also d*sinh(dL)>=0. Thus the cross term in (4) is nonnegative. Convexity of
sinh on the nonnegative half-line, together with sinh(0)=0, gives
|sinh(dL)|<=3S/4. It follows that

    T/A >= C-cosh(dL) >= C-sqrt(1+(9/16)S^2).                (6)

Case II: |tau|>=3/4, with arbitrary L. Since A>=tau^2+7/64 and
|B|<=3|tau|/4, putting z=|tau| gives

    z^2+7/64-(43/48)z=(z-3/4)(z-7/48)>=0,
    |B|/A<=36/43.

Using again |sinh(dL)|<=3S/4, we obtain

    F <= (1+1296/1849)(9/16)S^2
       = (28305/29584)S^2 < (31/32)S^2.                     (7)

The companion Lean source gives an alternative division-free polynomial proof
of the squared amplitude inequality. Its exact identity is

    1296 A^2-1849 B^2
      =(tau^2-9/16)(1296tau^2-441/16)
       +(9/64-d^2)(9988tau^2+567/2)
       +1296(9/64-d^2)^2.                                  (8)

Expansion proves equality. Under this case's hypotheses, all three terms on
the right are nonnegative. The positive denominator in (3)-(5) is justified by
A>=tau^2+7/64, not by totalized division at zero.

Case III: L>=4, with arbitrary tau. Put h=1/4-d^2>=7/64. The identity
(tau^2+h)^2-4h*tau^2=(tau^2-h)^2>=0 gives

    (B/A)^2<=d^2/h<=9/7.

The exponential formula for sinh gives, for L>0,

    sinh(3L/8)/sinh(L/2)
      =exp(-L/8)(1-exp(-3L/4))/(1-exp(-L))<exp(-L/8).

Consequently

    F < (16/7)exp(-L/4)S^2
      <=16/(7exp(1)) S^2 < (32/35)S^2 < (31/32)S^2,         (9)

where exp(1)>5/2 follows already from its first four series terms.

Every region therefore yields

    T/A >= C-sqrt(1+(31/32)S^2)
      = (S^2/32)/(C+sqrt(1+(31/32)S^2))
      >= S^2/(64C),                                       (10)

since C^2=1+S^2 and C>0. In Case I use 9/16<31/32 in (6).
Substituting (10) into (4) proves (3), because
Re(1/(s(1-s)))=A/(A^2+B^2)>0. QED.

The support-length dependence is explicit:

    c(L)~L^2/128 as L decreases to zero,
    c(L)->1/64 as L tends to infinity.

There is no claim that these constants are optimal. In particular the theorem
does not impose an artificial positive gap uniform down to L=0.

## 3. Literal spectral identity and return from the form domain

**WSEP-v1-2.** Use the usual full Weil explicit formula for the primitive
continued source, with the physical plus-Fourier convention
F_f(z)=integral f(x)exp(i z x)dx. Then, for every fixed chi, L>0 and eta in R,

    Q_chi,L(u_L,eta)=Q_chi,L(v_L,eta)
      =sum_rho m_rho W_L(rho+i eta),                        (11)

where rho ranges over the distinct nontrivial zeros of that source and m_rho
is its analytic multiplicity. The series is absolutely convergent. This source
extension needs only the ordinary critical strip, not the seven-eighths input.

Proof. Let z_rho=-i(rho-1/2). Direct integration gives, with s=rho+i eta,

    F_u(z_rho)=(1-exp(-(1-s)L))/(1-s),
    conjugate(F_u(conjugate(z_rho)))=(1-exp(-sL))/s.

Their product is W_L(s). For v, the product is
exp(-L)(exp(sL)-1)(exp((1-s)L)-1)/(s(1-s)), the same kernel.
This is the SIGNED conjugation-swap pairing. Neither rho nor z_rho has been
projected to its ordinate, and no absolute-square substitution has occurred.

We justify applying the smooth-core explicit formula to these discontinuous
zero extensions, rather than assuming evaluation continuity from L2 alone.
First contract each endpoint function inward about L/2, with contraction
factors tending to one. Then convolve with nonnegative compact smooth
approximate identities whose radii are smaller than the new boundary gap.
The logarithmic Fourier-weight form-core argument of WGPC-v1-1 gives convergence
in V_L,b. In this particular construction the L1 norms and total variations
of the zero-extended approximants are uniformly bounded for fixed L and eta:
dilation factors stay between 1/2 and 1; convolution does not increase total
variation; the initial endpoint functions are of bounded variation. This also
gives pointwise convergence of their transforms at every fixed complex point.

For 0<=beta<=1, multiply an approximant by exp((beta-1/2)x). Its L1 norm and
total variation remain uniformly bounded, because the common support is in
[0,L]. Integration by parts against exp(i tau x), using the distributional
bounded-variation derivative including endpoint jumps, now gives

    |F_f(tau+i(1/2-beta))|<=C_(L,eta)/(1+|tau|)

uniformly over the approximants and beta. The conjugated factor has the same
bound. Classical zero counting with multiplicity gives
sum_rho m_rho/(1+|Im rho|)^2<infinity. Thus dominated convergence passes the
ENTIRE signed zero sum to the limit. There is no finite-height substitution
for an unbounded zero sum.

On the arithmetic side, Gamma_b is continuous in its form norm, and P_chi,L
and R_L are bounded at this fixed L. All prime powers and both poles therefore
pass to the same limit. This proves (11). Its reality also follows from the
multiplicity-preserving symmetry rho -> 1-conjugate(rho) for the same character;
this sends s to 1-conjugate(s) and W_L(s) to its conjugate. QED.

The local formal source has not yet encoded this complete passage or the
infinite explicit formula as an inhabitant of the target adapter. The written
classical identity and the existing formal source candidates are different
evidence levels. The new real-algebra module does not conceal that obligation.

## 4. Audit of the strip supplier and completed logarithmic derivative

The existing canonical source is
`GRWTSK.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re` in
`../../DirichletSevenEighths.lean`. Its individual provenance is
`../../DirichletSevenEighths.provenance/LFunction_ne_zero_of_seven_eighths_lt_re.md`.
The inspected Lean blob is 6837c7e2da574dae2b6f95d117edace531bb9362;
its provenance blob is 5f4c2dcaf62a5d33b9c2da9ff07921ba2f94f281.
The corresponding zeta declaration is
`GRWTSK.riemannZeta_ne_zero_of_seven_eighths_lt_re` in
`../../QuasiRiemannHypothesis.lean` (blob
f7ffbbb3237ee1f6e1ff575eed81bc9410833927).

These are adaptations of OpenAI [1], Theorem 1.1, at upstream revision
4eaee87548250b2682affda7d05d947c05554bae. The inspected upstream
`lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean` has blob
46c67f4000906b1391a471d6e6396ac0da3c16a5 and delegates to concrete final
assembly. The direct final assembly and its certified-existence source were
also read; that is not a complete transitive proof audit or kernel replay.
The local adaptation remains SOURCE_IMPORTED_UNBUILT in its isolated
OpenAI environment. No root import or dependency promotion is made here.

**WSEP-v1-3 (source-dependent strip and scalar).** Take the nonvanishing result
of [1] as an external mathematical input for the actual continued source. A
nontrivial zero rho then satisfies Re rho<=7/8. The pole exclusion in the
Dirichlet declaration is automatic for 0<Re rho<1. The primitive functional
equation sends rho to 1-rho for the dual character, and complex conjugation
then sends it to 1-conjugate(rho) for the original character, preserving its
multiplicity. Apply the same upper bound to the latter zero to get

    1/8<=Re rho<=7/8.                                      (12)

For conductor one use the actual zeta functional equation. The two boundaries
in (12) are included. The proof does not assume that real exceptional or central
zeros are absent; a real zero still permitted by (12) remains in every sum.

For fixed eta define

    kappa_chi(eta)=sum_rho m_rho Re[1/((rho+i eta)(1-rho-i eta))]. (13)

This converges absolutely and is strictly positive. In fact for
s=beta+i tau in the ordinary open strip,

    Re[1/(s(1-s))]
      =[beta(1-beta)+tau^2]/|s(1-s)|^2>0.

There are nontrivial zeros, by the classical zero-counting formula. This strict
scalar sign itself needs only the ordinary strip; (12) is needed for (3).

Let Xi_chi be the entire completed primitive function for q>1, and the
pole-removed completed zeta function for q=1:

    Xi_chi(s)=(q/pi)^((s+a)/2)Gamma((s+a)/2)L(s,chi), q>1,
    Xi_zeta(s)=s(s-1)pi^(-s/2)Gamma(s/2)zeta(s).

A nonzero constant normalization does not affect logarithmic derivatives.
Subtract the order-one Hadamard logarithmic derivatives at 1-i eta and -i eta.
The exponential constant cancels, and the difference of the two resolvents is
1/((rho+i eta)(1-rho-i eta)). The dual-character functional equation and
conjugation give D_chi(-i eta)=-conjugate(D_chi(1-i eta)), where D=Xi'/Xi.
The subtraction is absolutely convergent and proves

    kappa_chi(eta)=2 Re[Xi_chi'(1-i eta)/Xi_chi(1-i eta)].      (14)

For q>1 this is

    log(q/pi)+Re psi_Gamma((1+a-i eta)/2)
                         +2 Re[L'(1-i eta,chi)/L(1-i eta,chi)].

For zeta and eta!=0 it is

    2/(1+eta^2)-log pi+Re psi_Gamma((1-i eta)/2)
                         +2 Re[zeta'(1-i eta)/zeta(1-i eta)].

At eta=0 take the removable completed limit, not the singular individual
logarithmic derivative of zeta: kappa_zeta(0)=2+gamma-log(4pi).
This is the WEGR-v1-2 constant. The entire completed functions are nonzero at
the evaluation points, using classical boundary nonvanishing and their removable
values at 0 and 1. No totalized Dirichlet series outside convergence is used.

## 5. The arithmetic inequality supplied on every modulated endpoint ray

**WSEP-v1-4.** With the external input of WSEP-v1-3 and the source identity
of WSEP-v1-2, every primitive chi (including conductor-one zeta), every L>0,
and every eta in R satisfy

    Q_chi,L(u_L,eta)=Q_chi,L(v_L,eta)
                    >= c(L) kappa_chi(eta)>0.               (15)

Proof. Apply (3) at s=rho+i eta, using (12), multiply by the actual positive
multiplicity m_rho, and sum. Absolute convergence in (11) and (13) justifies
taking real parts and summing the inequalities. Equations (13)-(14) give the
strict right-hand sign. QED.

This yields the following literal prime-power inequality, not a generic
positivity hypothesis:

    2 Re sum_(log n<L) Lambda(n)chi(n)n^(i eta)(1/n-exp(-L))
      <=c_q,a(1-exp(-L))+Gamma_b(u_L,eta)
                +delta<u_L,eta,R_L u_L,eta>-c(L)kappa_chi(eta). (16)

Every active prime power remains. The coefficient at n=exp L is zero, so its
strict-cutoff convention agrees with the original source. From (1), the gamma
and pole quantities in (16) have the complete exact expressions

    Gamma_b(u_L,eta)=2 integral_0^L k_b(r)
       [1-exp(-L)-(exp(-r/2)-exp(-L)exp(r/2))cos(eta r)]dr
                       +2(1-exp(-L))K_b(L),
    <u_L,eta,R_L u_L,eta>
       =2 integral_0^L [1-exp(-L)+exp(-r)-exp(-L)exp(r)]cos(eta r)dr. (17)

Both equalities also hold with v in place of u. The first retains the full
infinite gamma tail; the second retains both pole orientations. At eta=0 the
second is 2L(1-exp(-L)), as in the predecessor. At q>1 it is multiplied by zero,
not replaced by a positive auxiliary term. Formula (16) directly supplies the
restricted instance of (Dchi) with a strict margin.

For zeta let E_L=P_L-C_+ and C_-(x,y)=exp(-|x-y|/2). The unchanged identity
R_L=C_++C_- converts (15) into

    <u_L,eta,E_L u_L,eta>
      <=c_zeta(1-exp(-L))+Gamma_(1/2)(u_L,eta)
           +<u_L,eta,C_- u_L,eta>-c(L)kappa_zeta(eta).        (18)

This is the requested signed discrepancy inequality (Z) on these rays, with
the actual negative scalar unchanged. The same holds for v and, by homogeneity,
for all complex multiples of either profile.

At each fixed chi,L,eta, the strict positive margin survives sufficiently
close smooth form-core approximations from section 3. This is a genuine
admissible-test consequence, not a false claim that the endpoint profiles are
already compact smooth tests. The approximation accuracy may depend on chi,L,eta.
No uniform high-frequency gamma bound is claimed. Although c(L) is independent
of character and modulation, kappa_chi(eta) and any numerical enclosure of it
are not being assigned a conductor-uniform positive constant.

## 6. Hostile checks and the exact limit of the advance

**WSEP-v1-5.** The narrow strip in (3) is material. There is an exact
counterexample to extending that kernel sign to the whole ordinary strip:

    s=1/100+i/10, L=15pi.

Set t=exp(-15pi), U=exp(-3pi/20), V=exp(-297pi/20). Then

    s(1-s)=199/10000+i(49/500),
    (1-exp(-Ls))(1-exp(-L(1-s)))=1+t-i(U-V).

The numerator of Re W after multiplying by the positive squared denominator is

    (199/10000)(1+t)-(49/500)(U-V)<0.                        (19)

Here U>1/2, since 3pi/20<3/5<2/3<log 2; the last inequality follows from
log 2=2atanh(1/3)>2/3. Also t<1/100 and V<1/100: both exponents exceed 10,
exp(1)>2, and 2^10>100. Hence the first term of (19) is less than
20099/1000000, while the subtracted term is greater than 2401/50000.
These exact rational bounds prove negativity. This complex point is NOT
asserted to be an arithmetic zero. It tests an overextension of the lemma,
not RH/GRH or the external seven-eighths theorem.

The remaining falsification boundaries are equally important.

* In the empty-prime regime L<log 2, (16) has zero prime sum; (17) retains
  exactly the scalar, gamma energy and both zeta pole terms. No lower-boundary
  constant was deleted from the inherited discrepancy identity.
* Newly active prime powers have a vanishing endpoint taper. All complex
  character phases in (16) remain literal chi(n)n^(i eta), not their magnitudes.
* Arbitrarily large |eta| is covered by (3) and (15), but not by a claim of
  uniformly bounded gamma energy. Case II is specifically the high-frequency
  control, not a compact-operator norm approximation.
* A positive value on each endpoint ray, even for every modulation, does NOT
  imply positivity on sums of them. For eta=0 the existing head value remains
  D_chi(L)(|alpha|^2+|beta|^2)+2Re(conj(alpha)beta B_chi(L)); its mixed inequality
  D_chi(L)>=|B_chi(L)| is still UNSUPPLIED. The elementary matrix with diagonal
  entries 1 and offdiagonal entries 2 has positive coordinate rays and a negative
  eigenvalue. No totality argument may replace missing cross-term estimates.
* Replacing Q by Q-M||.||^2 destroys the literal zero-sum identity (11). The
  scalar-shift countercheck in WERC-v1-5 remains in force. The scalar c_q,a is
  never altered in this note.

The endpoint-to-complement estimates in
[WeilEndpointResidualCoupling.md](WeilEndpointResidualCoupling.md) remain valid
at their written evidence level, but (15) supplies no lower sign on the full
complement and no all-vector Schur balance. The flat-comparator obstruction and
the unrestricted compact-subtraction obstruction are not restarted. Anthropic's
signed-inertia/density approach is a useful comparator [4], not a missing
all-zero or all-test positivity supplier; a zero-density exceptional set cannot
be excluded by normalized moments alone.

The unchanged target is
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi`, with
`modOne_criticalStripStatement` returning conductor one to actual riemannZeta.
`criticalStripStatement_of_detection_and_nonnegativity` still has distinct
hdetect and hpositive premises. No new inhabitant of either is supplied here.
The new result discharges the ray-diagonal sign for all L and eta only after
the stated source inputs, not the remaining mixed or all-test inequality.

## 7. Individual statement and paper-to-declaration correspondence

These versioned labels are local written statement identifiers, not accepted
frontier statuses. Prior-art comparison date: 2026-11-12. No existing claim ID
is migrated or historical evidence status promoted.

WSEP-v1-1: local elementary complex-kernel estimate, equations (4)-(10).
The physical endpoint transform is inherited from WEGR-v1-1; that note did not
prove the all-L sign estimate (3). Formal components in namespace
GRWTSK.NumberTheory.WeilEndpointKernelAlgebra are
strip_denominator_re_pos, high_frequency_gap_identity, and
high_frequency_amplitude_sq_le. The first justifies division; the latter two
supply Case II's exact squared amplitude bound. The hyperbolic/trigonometric
covering argument and full complex statement remain written, not formalized.
These declarations are local consequences, NOT direct formalizations of [1].

WSEP-v1-2: classical full explicit formula [2, section 1.1], with the primitive
physical conventions of the Neumann note and the existing inverse-character
adapter. The bounded-variation approximation and whole-zero-sum domination
are proved here for the specific profiles. Consumer: the literal arithmetic
return (16)-(18). No new Lean source-adapter theorem is claimed.

WSEP-v1-3: external input [1], Theorem 1.1, with the exact existing canonical
declaration and provenance described in section 4. The dual-character reflection
and completed logarithmic-derivative subtraction are classical; compare [3],
sections 2.2-2.3, especially Theorem 2, for eta=0 logarithmic-derivative sums.
The shifted subtraction is proved explicitly above. No paper is claimed to have
proved our kernel inequality, and no upstream verification is relabeled local.

WSEP-v1-4: local application of WSEP-v1-1--3 to the exact modulated endpoint
correlation, retaining all prime powers and poles. Consumer: restricted (Z) and
(Dchi), and the diagonal entries of the existing endpoint head. The constants
are literal formulas, not interval-certified numerical values. No new Lean
declaration for the complete arithmetic theorem is supplied.

WSEP-v1-5: exact analytic counterexample to a wider-strip version of the kernel
lemma, and direct source-scope checks. Compare [4] for the distinction between
signed inertia and zero density; no theorem from [4] is ported in this increment.
Independent review and numerical certification of this work remain NOT_RUN.

## References

[1] OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*,
30 September 2026, Theorem 1.1. Upstream openai/math revision
4eaee87548250b2682affda7d05d947c05554bae; TeX source blob
268c4e3206d460c617d3d2129742a72b831b3def; PDF blob
8132b77eeb270a70b25df8d6609f008e83e65d91.
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/build/paper.tex
Upstream declarations in lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean,
blob 46c67f4000906b1391a471d6e6396ac0da3c16a5. The existing local adaptations
are not imported by the new algebra-only module. Their local status is preserved.

[2] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, supplied
arXiv:2606.09096v3, version 24 September 2026, section 1.1 (full zeta source)
and section 2 (localized form/operator setting).
https://arxiv.org/abs/2606.09096v3
The RH-dependent spectral convergence in the separately supplied
arXiv:2610.32704v1 is NOT used as an unconditional input.

[3] Yasutaka Ihara, V. Kumar Murty and Mahoro Shimura,
*On the logarithmic derivatives of Dirichlet L-functions at s=1*,
Acta Arithmetica 137 (2009), 253-276, DOI 10.4064/aa137-3-6,
sections 2.2-2.3, especially Theorem 2. Their GRH-dependent section 3 estimates
are not used. https://www.impan.pl/shop/en/publication/transaction/download/product/82940

[4] Levent Alpoge and Ralph Furman, *More than two thirds of the zeta zeros are
simple and on the critical line*, arXiv:2608.13637, signed rank--trace/inertia
argument and its fixed-primitive-character extension. The inspected companion
is anthropics/formal-math at 16a5ce41304fcdaea4e0be7c132e1c361dc26da5,
zeta23/README.md (blob 302fa9094863279d0ec83fca012d2b7bf59d5ccd).
https://arxiv.org/abs/2608.13637
This is a comparison of scope, not a proof dependency for (3) or (15).
