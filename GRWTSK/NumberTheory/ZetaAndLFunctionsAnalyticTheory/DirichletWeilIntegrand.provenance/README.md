# Finite Weil contour identity and its arithmetic evaluation

Local attribution: grwtsk contributors. Date: 2026-11-11.
Coordination: grwtsk/math#1801, scope comment 6812543935.
Inspected main: `9faf3baa8307ffe27c78db2821945ecb7062ed05`.
Complete parent tree: `7776847f6fdab7642e423f29b06a80ed241fd484`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [../DirichletWeilIntegrand.lean](../DirichletWeilIntegrand.lean).

## Evidence boundary

The analytical proof below establishes the exact FINITE identity, its finite-height
sinc version, and its fully evaluated all-line arithmetic expression with an exact
boundary remainder. It uses the classical Cauchy integral theorem, Fourier inversion,
the continued Dirichlet functional equation and boundary nonvanishing, and the
digamma integral representation at the explicitly cited scopes. It does not prove
that the horizontal remainder tends to zero. It assumes no RH/GRH.

The Lean file implements ONLY the pointwise arithmetic decomposition used before
integration and the inverse-character adapter to the unchanged arithmetic value. In particular `weighted_completed_logDeriv_pair` is not the finite
residue theorem. Excision, Fourier inversion, dominated integral exchanges, and
the gamma distribution evaluation below have NOT been encoded here as Lean proofs.
Do not promote this analytical exposition to a full formal-source or kernel proof.

All Lean bodies: SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay,
transitive axiom audit, repository-wide verification and independent review: NOT_RUN.
Novelty: UNASSESSED. These are classical formulas, with no new frontier claim ID.
Existing candidate dependencies keep their prior statuses and known failures.
The required Noe proof-automation skill returned 404 at revision
`2a1deeccf6d141943d91ad402365aba7563beb6f`; local Lean/Lake and verified canonical
skill checkouts were absent. Dependent execution stopped; no runner or workflow
was dispatched. Ordinary source publication is separate from proof acceptance.

## 1. Exact objects and normalizations

Let q>=1 and let chi be primitive modulo q. Put a=0 for even chi and a=1 for odd
chi. Let delta=1 for the conductor-one zeta source and delta=0 otherwise. The source
completion is the ACTUAL Mathlib completion

    Lambda_chi(s) = GammaR(s+a) L(chi,s),
    GammaR(z) = pi^(-z/2) Gamma(z/2),
    D_chi(s) = Lambda_chi'(s)/Lambda_chi(s),

understood meromorphically at poles, not by Lean's assigned exceptional values.
There is NO q^(s/2) in this completion. The exact functional equation is

    Lambda_chi(1-s) = q^(s-1/2) epsilon_chi Lambda_(chi^-1)(s).       (1)

For a primitive character epsilon_chi is nonzero. This already follows from (1)
at s=-1, since Lambda_chi(2) is nonzero by the convergent Euler product and the
nonzero gamma factor. No norm-one assertion is needed for cancellation.
Differentiation where the factors are regular and nonzero gives

    D_chi(1-s) = -log q - D_(chi^-1)(s).                            (2)

This is the origin of the WHOLE conductor term. Replacing (2) by a self-dual
identity when chi is not real is incorrect. At integers, chi^-1(n)=conj(chi(n)):
at a nonunit both sides are zero; at a unit the character value is a root of unity.
Also chi^-1(-1)=chi(-1), so both characters have the same a. The root number has
zero logarithmic derivative and no residual term; its phase is not replaced by 1.

Let h be any complex C-infinity compactly supported function on R. Set

    W_h(s) = integral_R h(x) exp((s-1/2)x) dx,
    h^vee(x) = h(-x),
    W_(h^vee)(s) = W_h(1-s).

The last equality follows by x -> -x, with Lebesgue measure unchanged. W_h is
entire and decreases faster than every inverse power of |Im s| in each bounded
vertical strip. Differentiate under its compact integral; integration by parts
against exp(i t x) gives the rapid decay. For h=C_f, the existing WeilContourWeight
module supplies these facts using the unchanged plus-sign Fourier convention.

Fix c>1 and T>0, with no zero of Lambda_chi on either horizontal segment of the
rectangle [1-c,c]+i[-T,T]. This is an ordinary boundary hypothesis, not a growth
hypothesis or RH. The vertical boundaries are nonzero by Euler nonvanishing and
(1). The completed function has no zeros outside the open critical strip:
right-half-plane nonvanishing follows from the Euler product; the closed boundary
Re=1 uses the cited unconditional nonvanishing theorem; (1) supplies the other
side. Nonprincipal primitive completions are entire. In the conductor-one case
there are precisely the two simple poles 0 and 1, and the completed source has no
trivial zeros. Thus the singularities relevant to the rectangle are exactly the
original nontrivial zeros with their actual analytic orders, and these two poles.
They form a finite set. No simplicity or exclusion of central zeros is used.

## 2. The finite contour identity, with orientations proved

Use positive orientation: bottom left -> bottom right -> top right -> top left
-> bottom left. Define the signed horizontal contribution

    H_chi,c,T(h) = (1/(2 pi i)) [
       integral_(c+iT)^(1-c+iT) W_h(s) D_chi(s) ds
       + integral_(1-c-iT)^(c-iT) W_h(s) D_chi(s) ds ].             (3)

Let S_chi,T(h) be the finite sum of m_chi(rho) W_h(rho) over the distinct original
strip zeros with |Im rho|<T. Multiplicity is a weight, not repeated interpolation
slots. At a zero of order m, local factorization gives D=m/(s-rho)+analytic.
At either simple pole D=-1/(s-b)+analytic, irrespective of the sign of the leading
Laurent coefficient of Lambda itself. Therefore the local coefficients of W D are
m W(rho), -W(0), and -W(1).

For completeness, the finite residue step follows by taking disjoint small disks
around these finitely many singularities, all strictly inside the rectangle.
Cut the remaining region into simply connected pieces. Cauchy's theorem on those
pieces cancels the integrals along the artificial cuts. Hence the positively
oriented outer integral equals the sum of positively oriented small-circle
integrals. On each disk subtract the coefficient/(s-b). The difference extends
holomorphically across b: the logarithmic remainder is analytic, and
(W(s)-W(b))/(s-b) has a removable singularity. Its circle integral is zero;
the remaining integral is exactly 2 pi i times the coefficient. This proves

    (1/(2 pi i)) integral_boundary W_h(s) D_chi(s) ds
      = S_chi,T(h) - delta [W_h(0)+W_h(1)].                       (4)

On the left edge put w=1-s. The edge traversed downward maps to the right edge
traversed upward, but ds=-dw. Thus its contribution is

    -(1/(2 pi i)) integral_(c-iT)^(c+iT) W_h(1-w) D_chi(1-w) dw
      = (1/(2 pi i)) integral_(c-iT)^(c+iT)
          W_h(1-w) [log q + D_(chi^-1)(w)] dw.                   (5)

Write

    K_chi,h(s) = W_h(s) D_chi(s)
      + W_h(1-s) D_(chi^-1)(s) + log q W_h(1-s).                 (6)

Equations (3)-(5) prove the exact finite identity

    S_chi,T(h) = delta[W_h(0)+W_h(1)]
      + (1/(2 pi)) integral_(-T)^T K_chi,h(c+i t) dt
      + H_chi,c,T(h).                                          (7)

Neither horizontal edge has been dropped. No limiting height sequence is used.

## 3. Exact finite-height evaluations: the test is sinc-smoothed

Define, only in this exposition,

    h_c,T(x) = exp(-(c-1/2)x)/(2 pi)
      * integral_(-T)^T W_h(c+i t) exp(-i t x) dt.

By Fubini on the compact (x,t) domain,

    h_c,T(x) = integral_R h(u) exp((c-1/2)(u-x))
                       sin(T(u-x))/(pi(u-x)) du,                (8)

with the kernel value T/pi when u=x. This follows by integrating exp(i t(u-x))
exactly on [-T,T], including the zero-frequency case. At finite T this is NOT h.
Let j_c,T=(h^vee)_c,T and B_T=h_c,T(0)+j_c,T(0).

The conductor contribution in (7) is exactly log q*j_c,T(0), not log q*h(0).
On Re s=c the absolutely convergent Euler logarithmic derivative is

    L'(chi,s)/L(chi,s) = -sum_(p prime) sum_(m>=1)
                                  log p * chi(p)^m * p^(-m s).  (9)

To justify (9), differentiate the uniformly absolutely convergent logarithmic
Euler product on each Re s>=1+eta. The differentiated series is bounded by
sum_(n>=2) log(n)n^(-1-eta). It equals the von Mangoldt series by the unique
prime-power support of Lambda(n). It is never evaluated outside Re s>1.
Termwise integration over the compact right edge is consequently valid, and

    J_T[W_h(s)n^(-s)] = n^(-1/2) h_c,T(log n).

Thus the exact finite prime contribution is

    -sum_p sum_(m>=1) log p / p^(m/2)
      [chi(p)^m h_c,T(m log p)
       + conj(chi(p))^m j_c,T(m log p)].                        (10)

This series is absolutely convergent: each term before regrouping is dominated
by a constant(T,h,c) log(n)n^(-c). ALL prime powers remain. Compact support of h
does NOT truncate (10); h_c,T generally has noncompact support. If p divides q,
chi(p)=0 and the two coefficients vanish. No omitted ramified Euler factor is
silently restored, and no extra ramified term is needed for primitive chi.

Put g_a(s)=GammaR'(s+a)/GammaR(s+a). Direct differentiation gives

    g_a(s) = -log(pi)/2 + psi((s+a)/2)/2.                        (11)

The inverse character has the same a, so its gamma contribution pairs with
W_h(1-s), not with W_h(s) alone. For Re z>0 the digamma representation gives

    g_a(s) = -(gamma_E+log pi)/2
      + integral_0^infinity [exp(-2r)-exp(-(s+a)r)]
                             /(1-exp(-2r)) dr.                 (12)

Keep the numerator together: its two integrals separately diverge at zero.
For t in a bounded interval, the numerator is O(r) uniformly as r->0; at infinity
it decays exponentially. This proves the compensated Fubini interchange. The
exact finite gamma contribution is therefore

    G_a,c,T(h) = -(gamma_E+log pi) B_T/2
      + integral_0^infinity [exp(-2r) B_T
          - exp(-(a+1/2)r)(h_c,T(r)+j_c,T(r))]
                               /(1-exp(-2r)) dr.               (13)

Here the numerator vanishes at r=0, and the positive-r tail is integrable because
h_c,T(r), j_c,T(r) are bounded by a constant times exp(-(c-1/2)r).
Combining (7), (10), and (13) evaluates EVERY non-horizontal contribution at
finite height. Both pole terms remain delta[W_h(0)+W_h(1)].

## 4. All-line evaluation, without dropping a finite-contour remainder

Fourier inversion applies to h(x)exp((c-1/2)x), a compact smooth function:

    (1/(2 pi)) integral_R W_h(c+i t) exp(-i t x) dt
      = h(x)exp((c-1/2)x).                                    (14)

All these integrals are absolutely convergent. In particular

    J[W_h]=J[W_h(1-s)]=h(0),
    J[W_h(s)n^(-s)]=h(log n)/sqrt n,
    J[W_h(1-s)n^(-s)]=h(-log n)/sqrt n.                         (15)

The all-line prime interchange follows from
integral |W_h(c+i t)| dt * sum Lambda(n)n^(-c)<infinity, and likewise for the
reflected weight. Hence the prime contribution is exactly

    P_chi(h) = sum_p sum_(m>=1) log p / p^(m/2)
      [chi(p)^m h(m log p) + conj(chi(p))^m h(-m log p)],         (16)

with a MINUS sign in the zero-side formula. Now, and only now, support h subset
[-B,B] makes this a finite arithmetic sum: terms with m log p>B vanish. A compact
smooth test also vanishes at its support endpoints. No prime-power exponent or
character phase is omitted.

For the all-line gamma interchange in (12), let U(s)=W_h(s)+W_h(1-s). For 0<r<=1,

    |exp(-2r)-exp(-(c+a+i t)r)|/(1-exp(-2r)) <= C_c,a(1+|t|).

This follows from |exp(-i t r)-1|<=|t|r and the mean-value estimate on the real
exponentials. For r>=1 there is an exponentially decaying bound independent of t.
Rapid decay of U therefore proves absolute integrability of the COMPENSATED
double integrand. Fubini and (14) give

    A_a(h) = -(gamma_E+log pi)h(0)
      + integral_0^infinity [2 exp(-2r)h(0)
          - exp(-(a+1/2)r)(h(r)+h(-r))]/(1-exp(-2r)) dr.        (17)

This is a convergent regularized expression, not a difference of divergent terms.
Subtract and add 2 exp(-(a+1/2)r)h(0), and use (12) at s=1/2, to obtain

    A_a(h) = [psi(1/4+a/2)-log pi]h(0)
      + integral_0^infinity kappa_a(r)[2h(0)-h(r)-h(-r)] dr,
    kappa_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)).                     (18)

Near zero the bracket in (18) is O(r^2) for smooth h; at infinity the kernel is
exponentially decreasing. This also proves convergence directly. Reflection and
duplication of psi give

    psi(1/4) = -gamma_E-3 log 2-pi/2,
    psi(3/4) = -gamma_E-3 log 2+pi/2.                           (19)

Indeed the sum of these values is 2 psi(1/2)-2 log 2, and their difference is pi;
psi(1/2)=-gamma_E-2 log 2. Thus BOTH the parity kernel and constant are retained.

Use Q_chi^+(h) (abbreviated Q_chi(h) in formulas below) as notation for the
completely evaluated PLUS-ORIENTATION expression, not a replacement repository
definition:

    Q_chi(h) = delta[W_h(0)+W_h(1)] + log q*h(0)
                  - P_chi(h) + A_a(h).                        (20)

The integrand K on the right line is absolutely integrable: the prime series is
uniformly bounded there, and (12) bounds g_a(c+i t) by O_c,a(1+|t|), while W and
its reflection have arbitrary polynomial decay. Define its exact omitted tail

    V_chi,c,T(h) = (1/(2 pi)) integral_(|t|>T) K_chi,h(c+i t) dt. (21)

Partition the absolutely convergent all-line integral into [-T,T] and its complement.
Equations (7), (15)-(21) yield the fully evaluated FINITE identity

    S_chi,T(h) = Q_chi(h) + H_chi,c,T(h) - V_chi,c,T(h).         (22)

This is exact for EVERY admissible boundary height T. It has no unproved edge
estimate: the edge integrals are present. In particular (22) is not an assertion
that a finite zero sum equals a fixed finite prime expression without a remainder.
V tends to zero by absolute integrability; H has NOT been discarded.

## 5. Return to the existing correlation form and both zeta pole orientations

For the canonical admissible complex f, put h=C_f, with

    C_f(r)=integral conj(f(t)) f(t+r) dt,
    E(f)=C_f(0)=integral |f(t)|^2 dt.

Differentiation under the compact correlation integral proves h is compact smooth;
its support lies in [-2A,2A] if f is supported in [-A,A]. Translation invariance
and conjugation give C_f(-r)=conj(C_f(r)). Expanding the square and using translation
invariance gives the LITERAL existing energy identity

    2E(f)-C_f(r)-C_f(-r) = integral |f(t+r)-f(t)|^2 dt.           (23)

All integrands are integrable by compact support and smoothness. Thus (18)+(20)
become

    Q_chi(C_f) = delta[W_f(0)+W_f(1)]
      + gammaConstant(q,a) E(f)
      + integral_0^infinity gammaCorrectionDensity(a,f,r) dr
      - 2 sum_p sum_(m>=1) log p / p^(m/2)
                             Re(chi(p)^m C_f(m log p)).        (24)

The definitions gammaConstant and gammaCorrectionDensity in (24) are EXACTLY
those in WeilGammaData and WeilConductorFrontier, not replacements. There is,
however, an IMPORTANT existing character-orientation mismatch that cannot be
silently ignored. CharacterWeilWindowBounds defines the canonical prime term as

    twistedPrime(T,chi,C) = 2 sum_n Lambda(n)/sqrt(n)
                                      Re(conj(chi(n))*C(log n)).

Its original explanation uses the MINUS-sign Fourier convention. The actual
plus-sign weight in this proof gives chi(n)*C(log n), as (9),(14),(16) show.
Since conj(chi^-1(n))=chi(n), (24) returns to

    Q_chi^+(C_f) = primitiveArithmeticValue(chi^-1,T,f)          (24a)

for a nonprincipal primitive chi. The inverse remains primitive at the SAME
conductor, by conductor_inv, and gammaParity_inverse gives the SAME parity.
The original strict prime inventory is retained: the correlation is zero at and
beyond |r|=2T (the endpoint overlap is a null singleton). The actual Lean theorem
primitiveArithmeticValue_dual_orientation encodes this phase/definition return;
it does NOT encode the residue/inversion proof of (22).

Equivalently, the unchanged canonical arithmetic value for chi corresponds to
Q_chi^+(C_f^vee), or to the plus-sign zero pairing of chi^-1. To see the exact
zero transfer, (1) multiplies the dual source by the everywhere nonzero analytic
factor q^(s-1/2)*epsilon_chi. Its local factorization at a zero shows that
rho -> 1-rho maps zeros of chi to zeros of chi^-1 with the SAME multiplicity.
The inverse map is identical. Hence, at EVERY symmetric finite height T,

    S_(chi^-1),T(C_f) = S_chi,T(C_f^vee),
    W_(C_f^vee)(rho)=W_f(1-rho).                               (24b)

This is not the generally false same-chi, same-test identification. No old source
is overwritten. Correction record: math#1801 comment 6812703103, dated 2026-11-11.
Earlier conditional source-return targets must use this explicit dual/reflection
transfer; their missing equality is not proved merely by assuming it. For the
conductor-one source, chi=chi^-1, and BOTH pole terms remain essential.

Write M_+(f)=integral f(t)exp(t/2) dt and M_-(f)=integral f(t)exp(-t/2) dt.
The original convolution/Fourier identity gives

    W_f(0)=M_-(f)conj(M_+(f)),
    W_f(1)=M_+(f)conj(M_-(f)).                                 (25)

These are cross products, not a sum of positive squares. No pole-neutral restriction
is imposed. At a nontrivial zero the same identity gives

    W_f(rho)=F_f(z_rho)conj(F_f(conj(z_rho))),
    z_rho=-i(rho-1/2),   F_f(z)=integral f(t)exp(i z t)dt.       (26)

No projection to ordinates, critical-line localization, simplicity, or exclusion
of a central zero enters (22)-(26). For zeta, an equivalent version of (17) is

    A_0(h)=-(gamma_E+log(4pi))h(0)
      - integral_0^infinity [h(r)+h(-r)-2exp(-r/2)h(0)]
                               exp(-r/2)/(1-exp(-2r)) dr.

The equality uses integral_0^infinity 2(exp(-r)-exp(-2r))/(1-exp(-2r))dr=2log2.
It changes regularization, not the original arithmetic functional or either pole.

## 6. Hostile checks and remaining obligations

A genuine character-phase falsification test detects the orientation issue.
Choose the primitive quartic character modulo 5 with chi(2)=i. Let
(log 2)/2 < A < (log 3)/2 and take a nonnegative compact smooth bump b, supported
in [-A,A], positive on its interior. Set f(t)=exp(i*omega*t)b(t), where
omega=pi/(2 log 2). Then C_f(log 2)=i*C_b(log 2), with C_b(log 2)>0 because the
translated supports overlap on an interval. Only n=2 lies in the active prime
inventory. Consequently Re(chi(2)*C_f(log 2))=-C_b(log 2), whereas
Re(conj(chi(2))*C_f(log 2))=+C_b(log 2). The gamma/energy terms are identical
for chi and chi^-1. The same-character source identification therefore really
fails on the canonical admissible domain. This is a written counterexample to
an intermediate identification, NOT to RH/GRH, and NOT a checked Lean construction.

A finite Fourier cutoff does not preserve support. Formula (8), rather than h,
must be used in (10). Omitting the vertical tail from (22) would therefore silently
omit arithmetic terms even for compact h. Likewise an entire W by itself does not
make H tend to zero after multiplication by D_chi near zeros. The positive
archimedean correction in (24) is not positivity of the full form: the constant,
signed prime term, and pole cross products remain. Multiplying a source by exp(bs)
changes D by b while preserving its zeros, so exact source normalization is necessary.

A future infinite zero-sum equality needs a source-bound horizontal-height supplier,
for example: for each primitive chi there exist C>0, integer d>=0 and T_n in
[n+2,n+3], for every n, such that Lambda_chi is nonzero on BOTH horizontal
segments sigma +/- i T_n, sigma in [-1,2], and |D_chi|<=C(1+T_n)^d there.
The already supplied rapid decay with 2k>d would then imply H_chi,2,T_n ->0.
This supplier is not proved in this increment. Finite T selection alone is not its
quantitative substitute. Arithmetic positivity and varying-test interpolation-cost/
zero-tail control remain separate. No RH/GRH conclusion.

At the FORMAL level, finite rectangular excision, source singularity classification,
Fourier inversion, the indicated Fubini interchanges and (17)-(24) still require
Lean implementations and all imported candidates require exact-pin verification.
The pointwise Lean decomposition is a proper subresult, not a renamed full identity.
No program is marked complete.

## 7. Primary sources, editions, and source-local correspondence

All Mathlib links below are pinned at d13f23b723b8a846827a245b89c10fc7d3f11612;
the upstream source is Apache-2.0. Existing GRWTSK candidates are MIT and are not
independent external evidence. This is a classical derivation adapted to the actual
source, not a novelty claim or an asserted direct formalization of a supplied paper.

- David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), completedLFunction, gammaFactor, IsPrimitive.completedLFunction_one_sub, LFunction_eq_LSeries and deriv_LFunction_eq_deriv_LSeries. Blob 89c72580697983d86706cff17ccbea2cee6475a3. Fixes (1), its continuation domain, and conductor normalization.
- Michael Stoll, [Dirichlet.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Dirichlet.lean), LSeriesSummable_twist_vonMangoldt and LSeries_twist_vonMangoldt_eq. Blob ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5. Original character coefficients and convergence in (9).
- Michael Stoll and David Loeffler, [Nonvanishing.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean), LFunction_ne_zero_of_one_le_re. Blob 789e0aae6e9378c8f5c8a7a07a905830e20b5433. The written finite divisor classification uses this unconditional boundary result.
- David Loeffler, [Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), GammaR_def, GammaR_ne_zero_of_re_pos, differentiable_GammaR_inv (Unicode GammaR is Gammaℝ in source). Blob 09568288ef9897b1e3b0e0763dd31a9421b77616. Fixes the pi factor and gamma normalization in (11).
- Chris Birkbeck, [LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), logDeriv_fun_mul, logDeriv_fun_comp, logDeriv_mul_const, logDeriv_congr_nhds. Blob 08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9. Product/chain/germ rules used in the Lean source.
- NIST DLMF, [25.15](https://dlmf.nist.gov/25.15), equations 25.15.1, 25.15.2, 25.15.5, and [5.9.16](https://dlmf.nist.gov/5.9.E16), with Re(z)>0; [5.5](https://dlmf.nist.gov/5.5) and [5.4](https://dlmf.nist.gov/5.4) for psi reflection, duplication and special values. Accessed 2026-11-11. Used for external normalization comparison and (12),(19), not as Lean verification receipts.
- Michael Stoll, [MulChar/Lemmas.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/MulChar/Lemmas.lean), star_eq_inv and star_apply', blob 90102fbc7a80e4dca25c75de152c3aa1eae2538d; Ashvni Narayanan, Moritz Firsching and Michael Stoll, [DirichletCharacter/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/DirichletCharacter/Basic.lean), conductor_inv, blob 4569ebb8e61f683a9c89877f0cda4d3add4d766d. These supply the exact dual-character coefficient/conductor transfer, including nonunit values.
- grwtsk contributors, [CharacterWeilWindowBounds.lean](https://github.com/grwtsk/math/blob/9faf3baa8307ffe27c78db2821945ecb7062ed05/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/CharacterWeilWindowBounds.lean), twistedPrime; blob 668ff53ae7c8a905ef5b6d827517ba8cb1142558. The actual conjugation in this maintained definition forces the correction (24a), independently of prose conventions.
- grwtsk contributors, DirichletLogarithmicResidues, WeilContourWeight, WeilGammaData, WeilConductorFrontier, and WeilSourcePrimeCorrelation at the inspected main above. These supply exact local zero/pole coefficients, the test weight, and the arithmetic-source consumer definitions. They retain SOURCE_PROOF_CANDIDATE/NOT_RUN where previously recorded.

Individual declaration records in this directory contain verbatim statements,
source-return consumers, exact pins and unexecuted axiom queries. The publication
commit and ordinary source-check evidence are recorded in math#1801 after readback.
A clean-checkout proposed command, NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletWeilIntegrand

Fresh kernel replay, individual transitive-axiom queries and independent statement
review must follow successful elaboration. No root import or pin change is included.


## 8. Declaration map and exact source identity

Source Git blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`; SHA-256 `a3f747aed6a43687cccc43f59716796cd14afb792ee80535e066b7fd8a6f83c3`.
330 lines, 17249 UTF-8 bytes, 16 theorem bodies (14 public, 2 private). No new global definitions.

- Private helper `logDeriv_exp_affine`: [logDeriv_exp_affine.md](logDeriv_exp_affine.md).
- Private helper `logDeriv_cpow_affine`: [logDeriv_cpow_affine.md](logDeriv_cpow_affine.md).
- `gammaParity_inverse`: [gammaParity_inverse.md](gammaParity_inverse.md).
- `completedLFunction_ne_zero_right_of_euler`: [completedLFunction_ne_zero_right_of_euler.md](completedLFunction_ne_zero_right_of_euler.md).
- `rootNumber_ne_zero_from_completed_source`: [rootNumber_ne_zero_from_completed_source.md](rootNumber_ne_zero_from_completed_source.md).
- `completedLFunction_ne_zero_left_of_euler`: [completedLFunction_ne_zero_left_of_euler.md](completedLFunction_ne_zero_left_of_euler.md).
- `completedLFunction_logDeriv_dual_right`: [completedLFunction_logDeriv_dual_right.md](completedLFunction_logDeriv_dual_right.md).
- `GammaR_logDeriv_of_re_pos`: [GammaR_logDeriv_of_re_pos.md](GammaR_logDeriv_of_re_pos.md).
- `gammaFactor_logDeriv_of_re_pos`: [gammaFactor_logDeriv_of_re_pos.md](gammaFactor_logDeriv_of_re_pos.md).
- `LFunction_logDeriv_eq_primeSeries`: [LFunction_logDeriv_eq_primeSeries.md](LFunction_logDeriv_eq_primeSeries.md).
- `completedLFunction_logDeriv_eq_prime_gamma`: [completedLFunction_logDeriv_eq_prime_gamma.md](completedLFunction_logDeriv_eq_prime_gamma.md).
- `weighted_completed_logDeriv_pair`: [weighted_completed_logDeriv_pair.md](weighted_completed_logDeriv_pair.md).
- `completedZeta_logDeriv_eq_prime_gamma`: [completedZeta_logDeriv_eq_prime_gamma.md](completedZeta_logDeriv_eq_prime_gamma.md).
- `conj_inverse_character_apply`: [conj_inverse_character_apply.md](conj_inverse_character_apply.md).
- `twistedPrime_inverse_eq_plus_phase`: [twistedPrime_inverse_eq_plus_phase.md](twistedPrime_inverse_eq_plus_phase.md).
- `primitiveArithmeticValue_dual_orientation`: [primitiveArithmeticValue_dual_orientation.md](primitiveArithmeticValue_dual_orientation.md).

The semantic correction has its own immutable versioned record:
[CHARACTER-ORIENTATION-v1.md](CHARACTER-ORIENTATION-v1.md).

The Cauchy-Goursat/Cauchy integral inputs used in the written excision proof are
also present in Yury Kudryashov's pinned
[Mathlib/Analysis/Complex/CauchyIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/CauchyIntegral.lean),
blob aac86aa902e778812ce356a977d682cff3105b0f (Apache-2.0). The new Lean file does
not invoke a finite residue/excision theorem; those arguments remain written.
