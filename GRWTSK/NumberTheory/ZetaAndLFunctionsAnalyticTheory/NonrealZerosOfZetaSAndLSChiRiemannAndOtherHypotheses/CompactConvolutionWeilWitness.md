# Compact convolution witnesses for the full primitive Weil form

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, mathematical consumer, and prior art

This is a written analytical supplier for the off-critical detection hypothesis in
[WeilNegativeWitness.lean](WeilNegativeWitness.lean), specifically
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`.
It does NOT supply that theorem's arithmetic nonnegativity hypothesis. It neither
improves the dispersion exponent of [WeilProbeConductorDispersion.md](WeilProbeConductorDispersion.md)
nor proves RH/GRH. The scope is primitive Dirichlet characters, with the conductor-one
zeta source explicitly included. No broader family is silently substituted.

Inspected source: `ae929ffb9eb87612e063c78f642d54279fe1e9df`; complete root tree
`a7ec9cd560285ffc10dd914804529e19c03c58e3`. The existing negative-witness module has
blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`; its Gaussian-tail and cutoff
consumers explicitly leave the analytic suppliers as hypotheses. This note gives
an ALTERNATIVE compact-convolution supplier: all physical-space tests are compact
smooth from the outset, and no Gaussian cutoff theorem is assumed. The original
Gaussian modules, their open obligations, and all formal evidence statuses remain
unchanged. Coordination: math#1801, scope comment 6813812988.

The convolution-power mechanism is classical, not a novelty claim: Burnol [1],
pp. 5-6, gives finite interpolation followed by repeated convolution and geometric
suppression of the other zeros. Connes--Consani [2], Appendix C, treats additional
finite transform-vanishing conditions. Bombieri [3], Lemma 10 and Theorem 8, is the
finite-matrix comparator for DISTINCT conjugate pairs and repeated-zero nullities.
The construction below works out explicit compact interpolants, derivative costs,
a whole-divisor tail budget, simultaneous matrix margins, support bounds, and the
corrected primitive-character source return. Originality is UNASSESSED.

Evidence: the written proofs below. Formalization, Lean elaboration, fresh kernel
replay, transitive axiom audit, independent analytical review, numerical arithmetic
certification, and repository-wide validation are NOT_RUN. Publication is not proof
acceptance. No actual off-critical zero is asserted. Local theorem labels are
exposition labels, not new frontier claim IDs.

## 1. Actual source and signed pairing

Let chi be primitive of conductor q>=1. For q=1 use the unique character and the
analytically continued zeta function. Let Z_chi be the SET of distinct spectral
locations

    z_rho = -i(rho-1/2),

where rho runs over the actual nontrivial zeros of L(s,chi), and put m(z_rho) equal
to their positive integer multiplicities. Classical continuation, the Euler product,
the functional equation with the dual character, and unconditional boundary
nonvanishing imply |Im z|<B=1/2. The combination of functional equation and
conjugation gives rho -> 1-conj(rho) for the SAME chi, hence

    z in Z_chi iff conj(z) in Z_chi,   m(conj(z))=m(z).

Conjugation rho -> conj(rho) alone exchanges chi with its dual; it is not assumed
to fix a nonreal character. Real exceptional zeros and central zeros are allowed.
The uniform counting theorem [4] (and the classical zeta count separately at q=1)
implies, in particular,

    M_chi = sum_(z in Z_chi) m(z)/(1+|z|)^4 < infinity.           (1)

A finite upper bound for M_chi follows from counts on dyadic height shells; an
uncertified numerical zero list is not its replacement. More explicitly, if N_chi(Y)
counts |Im rho|<=Y with multiplicity, then

    M_chi <= N_chi(1)
      + sum_(l>=0) N_chi(2^(l+1))/(1+2^l)^4.                  (2)

The count N_chi(Y)<=C(Y+1)log((q+2)(Y+2)) gives M_chi<=C'log(q+2), after increasing
absolute constants to cover q=1 and small heights. No sharp numerical constants
are asserted here. An implementation must supply a certified upper bound.

Use the plus Fourier convention

    F_f(z) = integral_R f(x) exp(i z x) dx.

For compact smooth complex f,g define

    Q_chi(f,g) = sum_z m(z) F_f(z) conj(F_g(conj(z))),
    Q_chi(f) = Q_chi(f,f).                                    (3)

The sum is absolutely convergent by compact support, repeated integration by parts,
and (1). Conjugate invariance proves the Hermitian identity, so Q_chi(f) is real.
Off the real axis (3) is NOT a sum of |F_f(z)|^2.

For a sample function U on Z_chi write

    ||U||_m^2 = sum_z m(z)|U(z)|^2,
    [U,V]_m = sum_z m(z)U(z)conj(V(conj(z))).

Cauchy--Schwarz and conjugate invariance give

    |[U,V]_m| <= ||U||_m ||V||_m.                              (4)

This positive majorant is only an estimate for the signed form, not an arithmetic
positivity assertion. The entire proof also works for any locally finite weighted
conjugation-invariant subset of a fixed horizontal strip satisfying (1). Its return
to arithmetic is supplied in section 7, not inferred from that abstraction.

## 2. A fixed compact bump with explicit derivative costs

Retain the classical dyadic density h from [FixedDyadicWeilProbe.md](FixedDyadicWeilProbe.md)
and Arias de Reyna [5]. It is the density of sum_(n>=1) 2^(-n) U_n, with independent
U_n uniform on [-1,1]. It is real, nonnegative, even, smooth, supported in [-1,1],
and has integral one. Its transform H was already identified in the prior note.

For every integer l>=0,

    ||h^(l)||_1 <= 2^(l(l+1)/2),
    ||h^(l)||_2 <= 2^(l(l+2)/2).                               (5)

Proof. Differentiate the first l uniform-density factors in the convolution.
The distributional derivative of the uniform density on [-2^(-n),2^(-n)] has
total variation 2^n. Their convolution has variation at most 2^(l(l+1)/2).
The remaining probability convolution has L1 norm one. Its first density, for
n=l+1, has L2 norm 2^(l/2), and convolution with the remaining probability measure
does not increase that norm. Young's inequalities prove (5). The already established
smoothness identifies these distributional derivatives with the ordinary ones.
This also proves (5) at l=0. No cancellation of primes or zero-location hypothesis
is used.

For a>0 put h_a(x)=a^(-1)h(x/a) and

    B_a(z)=F_(h_a)(z)=H(i a z).

For |z|<=M and a<=1/[4(1+M)],

    |B_a(z)-1| <= exp(a|z|)-1 < 1/2,   |B_a(z)|>1/2.            (6)

Indeed integrate |exp(i a z x)-1|<=exp(a|z|)-1 against the nonnegative probability
density h supported in [-1,1]. The elementary inequality exp(1/4)<3/2 is sufficient.
Thus no unknown transform zero obstructs finite interpolation after this scaling.

For a polynomial P(z)=sum_(l=0)^d p_l z^l define the actual compact smooth function

    f_(P,a)(x)=P(i d/dx)h_a(x)=sum_l p_l i^l h_a^(l)(x).

Integration by parts gives the literal identity

    F_(f_(P,a))(z)=P(z)B_a(z).                                 (7)

Define the finite, explicit cost

    D_B(P,a)=exp(a B) sum_(s=0)^2 binom(2,s)
                 sum_(l=0)^d |p_l| a^(-(l+s)) 2^((l+s)(l+s+1)/2).

Then for EVERY z with |Im z|<=B,

    |F_(f_(P,a))(z)| <= D_B(P,a)/(1+|z|)^2.                    (8)

Proof. For s=0,1,2, integration by parts gives
|z|^s |F_f(z)| <= exp(aB)||f^(s)||_1. Sum with binomial coefficients and apply (5)
and scaling. In particular this is a whole-strip bound at all heights.

We also record the purely finite budgets

    L1(P,a)=sum_l |p_l| a^(-l)2^(l(l+1)/2),
    L2(P,a)=sum_l |p_l| a^(-l-1/2)2^(l(l+2)/2),                (9)

which bound ||f_(P,a)||_1 and ||f_(P,a)||_2 respectively.

## 3. Explicit finite interpolation without a density assumption

Let S be a finite set of DISTINCT complex numbers, with values y_z. Put

    ell_z(w)=product_(xi in S, xi!=z) (w-xi)/(z-xi).

Choose a<=1/[4(1+max_(z in S)|z|)] and form

    P(w)=sum_(z in S) [y_z/B_a(z)] ell_z(w).                   (10)

Equations (6)-(7) show that f_(P,a) is compact smooth, supported in [-a,a], and
its Fourier transform takes EXACTLY the values y_z on S. This constructs the
function, rather than presupposing surjectivity of an evaluation map.

Every coefficient can be bounded using

    ||ell_z||_(coefficient,1)
      <= product_(xi!=z)(1+|xi|) / product_(xi!=z)|z-xi|,
    ||P||_(coefficient,1) <= 2 sum_z |y_z| ||ell_z||_(coefficient,1).   (11)

The denominators are nonzero because the locations are distinct. Near collisions
can make these costs large. Multiplicity is a weight, NOT repeated nodes in S.
No conductor-uniform or node-separation-free interpolation bound is claimed.

## 4. A selector and seeds for any finite collection of off-critical pairs

Suppose r>=1 DISTINCT nonreal conjugate pairs {z_j,conj(z_j)} are present in Z_chi.
All 2r nodes are different. Let m_j=m(z_j)=m(conj(z_j)), and let T be their union.

First apply (10) on T with all values equal to one. Denote the resulting compact
function by g=f_(P_g,a), its transform by G, and its bound (8) by D_g. Thus

    G(z_j)=G(conj(z_j))=1 for every j.

Choose an integer R with

    R>=1,   R>max_(z in T)|z|,   R>sqrt(2 D_g).                (12)

Then |G(z)|<=1/2 whenever |Im z|<=B and |z|>R, by (8).
The set S_0={z in Z_chi:|z|<=R} is finite and conjugation invariant. Its complete
membership, not a sampled subset, is used in the construction.

Optional additional constraints: let E be ANY finite set disjoint from T. It may
be enlarged to E union conj(E). In particular E={i/2,-i/2} is allowed for the actual
Dirichlet strip zeros. Put S=S_0 union E. With a common scale b small enough for
(6) on S, apply (10) to construct v_j=f_(P_j,b) with transform V_j satisfying

    V_j(z_j)=1/sqrt(2 m_j),   V_j(conj(z_j))=-1/sqrt(2 m_j),
    V_j(z)=0 at every other z in S.                            (13)

Let D_j=D_B(P_j,b) and choose ANY certified upper bound M>=M_chi. Set

    C=M sum_(j=1)^r D_j^2.                                    (14)

This is finite and positive. It is independent of the convolution exponent below.
The selector, complete head, seed polynomials, and all their costs are chosen ONCE.
They are not changed while increasing that exponent.

## 5. Geometric suppression of the whole tail

Define recursively

    f_(j,0)=v_j,   f_(j,N+1)=g*f_(j,N).

These are literal compact smooth functions. For all integers N>=0,

    supp f_(j,N) subset [-A_N,A_N],   A_N=N a+b,
    F_(f_(j,N))(z)=G(z)^N V_j(z).                             (15)

Convolution, differentiation, and Fubini are justified by compact support. No
Gaussian, limiting noncompact test, or cutoff approximation enters (15).

For u=(u_1,...,u_r) in C^r let f_(u,N)=sum_j u_j f_(j,N). Its sample vector at
S_0 has precisely the values (13) multiplied by u_j, independently of N. Thus
its contribution to the signed pairing from S_0 is EXACTLY

    -sum_j |u_j|^2.                                           (16)

This includes all zero multiplicities: each selected pair contributes
2 m_j*(u_j/sqrt(2m_j))*(-conj(u_j)/sqrt(2m_j))=-|u_j|^2.
Every other head value vanishes.

On the complement of S_0, both |G(z)| and |G(conj(z))| are <=1/2. Hence the
absolute value of the ENTIRE signed tail is bounded by

    4^(-N) sum_(z outside S_0) m(z)
            |sum_j u_j V_j(z)| |sum_j u_j V_j(conj(z))|
    <=4^(-N) sum_z m(z)|sum_j u_j V_j(z)|^2
    <=4^(-N) M (sum_j D_j^2) sum_j |u_j|^2.                   (17)

The first inequality uses Cauchy--Schwarz and the conjugate-invariance of the tail
set and weights. The second uses finite-dimensional Cauchy--Schwarz, (8), and
(1). It does not replace the signed form by a positive form in an identity.
All infinite sums converge absolutely under the displayed common majorant.

**Theorem 1 (simultaneous compact negative witnesses).** With the definitions above,

    |Q_chi(f_(u,N)) + ||u||_2^2| <= C 4^(-N)||u||_2^2.         (18)

Consequently, for any integer N>=0 with 4^N>=2C,

    Q_chi(f_(u,N)) <= -(1/2)||u||_2^2 for EVERY u in C^r.       (19)

With matrix entries Q_chi(f_(j,N),f_(i,N)), the r-by-r Hermitian Gram matrix
is bounded above by -(1/2)I. It is
strictly negative definite, not merely negative on r separately chosen vectors.
The f_(j,N) are linearly independent, since (19) makes a nonzero coefficient vector
incompatible with the zero function. They all satisfy F_f(e)=0 for e in E, exactly.

A sufficient exponent is

    N=max(0, ceil(log(2C)/log 4)),                             (20)

so the support horizon A_N=N a+b is explicit in the stated finite data and M.
No uniform small-support horizon is claimed. The support can be very large when
the selected locations are close, near the critical line, or high in the strip.

**Rayleigh budget.** Let L=L1(P_g,a), E_j=L2(P_j,b), and

    Gamma_N=L^(2N) sum_j E_j^2 >0.

Young's inequality and finite Cauchy--Schwarz give

    ||f_(u,N)||_L2^2 <= Gamma_N ||u||_2^2.

For nonzero u, (19) therefore yields the actual bound

    Q_chi(f_(u,N))/||f_(u,N)||_L2^2 <= -1/(2 Gamma_N).           (21)

This bound is for the written arithmetic/spectral form, not a claim that a specific
finite matrix, numerical computation, or unproved operator realization attains it.

## 6. Negative index and the legitimate pole-neutral restriction

Define the algebraic negative index of Q_chi on C_c^infinity(R,C) as the supremum
of dimensions of its finite-dimensional strictly negative-definite subspaces.
Then

    n_-(Q_chi) = number of DISTINCT nonreal conjugate pairs in Z_chi,             (22)

where either side may be infinite. This counts distinct pairs, not multiplicities.

Proof of the lower bound. Apply Theorem 1 to any finite selection of pairs.
No assumption that there are only finitely many off-critical zeros is needed.

Proof of the upper bound when there are s<infinity such pairs. For each pair,

    2m Re(U(z)conj(U(conj(z))))
      = (m/2)|U(z)+U(conj(z))|^2 - (m/2)|U(z)-U(conj(z))|^2.

Real locations contribute m|U(z)|^2>=0. The linear map from test functions to
C^s given by the negative coordinates sqrt(m/2)(F(z)-F(conj(z))) must be injective
on any strictly negative subspace: a vector in its kernel has nonnegative form.
Thus that subspace has dimension at most s. This proves (22). If there are no
nonreal pairs, the form is a sum of nonnegative squares. The infinite case of
the equality means unbounded finite negative dimension, not a claim about an
unspecified completion or the spectrum of a particular operator.

The same index equality holds after imposing ANY fixed finite E disjoint from
Z_chi: the construction in section 4 still detects every finite collection of
pairs. In particular the restrictions F_f(i/2)=F_f(-i/2)=0 do not remove a possible
off-critical obstruction. Thus positivity on that explicitly restricted class is
EQUIVALENT to the individual critical-line assertion. This equivalence is proved
by the construction, not assumed from a pole-neutral convention. More generally
if E intersects Z_chi, it may kill a target pair; no unchanged-index assertion is
made in that case.

Equation (22) is compatible with Bombieri's distinct-pair count [3, Theorem 8].
His finite matrix is not identified with the present whole test-space form. We
prove the domain-specific lower and upper bounds above; no operator convergence,
negative-eigenvalue multiplicity, or fixed-window claim is imported by analogy.

## 7. Return to the full arithmetic form, not a spectral surrogate

Let eps=0 for even chi and eps=1 for odd chi, delta=1 for q=1 and zero otherwise,
and psi=Gamma'/Gamma. For a compact smooth f write

    C_f(u)=integral_R conj(f(x)) f(x+u) dx,
    E_f=C_f(0)=||f||_2^2,
    M_+(f)=integral_R f(x)exp(x/2)dx,
    M_-(f)=integral_R f(x)exp(-x/2)dx.

The classical primitive explicit formula [6], with zeta treated separately [2,7],
gives the literal plus-orientation identity

    Q_chi(f) = delta [M_+(f)conj(M_-(f)) + M_-(f)conj(M_+(f))]
      + [log(q/pi)+psi(1/4+eps/2)]E_f
      - sum_(n>=2) Lambda(n)/sqrt(n)
                  [chi(n)C_f(log n)+conj(chi(n))C_f(-log n)]
      + integral_0^infinity exp(-(eps+1/2)u)/(1-exp(-2u))
                  [2E_f-C_f(u)-C_f(-u)]du.                   (23)

This is the same plus-orientation expression derived in
[../DirichletWeilIntegrand.provenance/README.md](../DirichletWeilIntegrand.provenance/README.md),
equations (18),(20),(24). Its blob at the inspected revision is
`8a648aff07c02822dddb2c72c2ccab205b4faa8f`. The present proof uses the classical
analytic explicit formula; it does not claim that the repository's formal-source
contour candidates have been elaborated or accepted.

For nonprincipal primitive chi, the unchanged canonical `primitiveArithmeticValue`
uses conj(chi(n)) with C_f(log n). Therefore (23) returns to that canonical value
at chi inverse, not at the same chi with the same test. Inversion preserves
primitivity, conductor and parity. The exact correction is already recorded in
[../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md](../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md).
One can equivalently reflect the test/source. Zeta and real characters are fixed
by inversion. No false same-character phase identification is reinstated.

Every prime-power coefficient is retained by Lambda(n). For f supported in
[-A_N,A_N], C_f is supported in [-2A_N,2A_N], so only n<=exp(2A_N) contribute.
This is an exact support fact at each constructed test, not a universal finite
prime inventory. The conductor, parity and gamma terms remain in (23). Both zeta
poles are cross products; they are not positive squares. With the OPTIONAL E
chosen as {i/2,-i/2}, both moments vanish because F_f(i/2)=M_-(f) and
F_f(-i/2)=M_+(f). Their deletion is then justified by exact constraints proved
above; without those constraints both terms must be evaluated.

Near u=0 the gamma numerator is O(u^2), so the compensated integrand is integrable.
For U>=2A_N and U>0, the omitted gamma contribution has the explicit bound

    0 <= tail_gamma(U)
      <= [2E_f/(eps+1/2)] exp(-(eps+1/2)U)/(1-exp(-2U)).         (24)

Here C_f(u)=C_f(-u)=0 past the support. Bound the denominator by 1-exp(-2U) and
integrate the remaining exponential. No spectral sample is needed for this bound.
A finite arithmetic certification would still need complete directed-error bounds
for f, the finite prime sum, the compensated integral, the moments and constants.
No such executable certification is reported by this note.

## 8. What is supplied and what remains unresolved

For any actual off-critical zero of a primitive chi, choose its spectral conjugate
pair and apply Theorem 1 with r=1. Equations (19) and (23) produce a genuine
Admissible compact smooth test whose FULL arithmetic Weil value is strictly
negative, with the original complex zero and multiplicity retained. This is a
written analytical supplier for `hdetect` in the existing canonical consumer.
It is not a Lean term instantiating that hypothesis: the compact interpolation,
convolution, counting, and explicit-formula bridges still require formalization.

Global arithmetic nonnegativity remains an independent missing theorem. Likewise
no improvement is made to the bound for the prior subpower-modulus sequence J_n.
There is no inference from the absence of a detected negative at finitely many
supports to absence of all off-critical zeros. The construction is conditional
on an actual off-critical pair; it does not assert one exists.

The preceding fixed-smoothing no-contraction observation is not contradicted.
Here g is engineered from selected complex nodes so that its transform is ONE
there, while it is small at all but finitely many other nodes. The seeds kill those
finite exceptions. This constructs negative tests with increasing support. It
does not lower the exponent of the unchanged prime residual D_chi(t), and g is
not an independently proved positive arithmetic multiplier.

The improvement over a finite-interpolation-only statement is precise: the physical
functions are constructed explicitly, the entire omitted zero tail has the fixed
budget C*4^(-N), one common N gives a negative-definite subspace, the L2 margin and
support are bounded, and finite vanishing constraints survive EXACTLY. No limiting
Gaussian cutoff or unproved simultaneous interpolation-cost/tail limit is used.

## 9. Hostile checks and exact evidence scope

- Distinct locations are interpolated once. Multiplicities enter only as weights;
  they normalize (13) and do not create extra negative directions in (22).
- Nonreal pairs can share ordinates with other zeros. Only their complex locations
  must differ; no simplicity, separation uniformity, or independence of ordinates
  is assumed.
- The complete finite head is chosen BEFORE the convolution exponent. The selector,
  seed polynomials, coefficient costs, and tail budget then remain fixed.
- A partial zero list cannot justify (12)-(17). Its completeness up to R and the
  unconditional global count must be separately established in any certificate.
- A smooth function's finite interpolation values alone do not control its tail.
  Equations (5)-(8), (14), and (17) supply that missing control for the constructed
  functions at every height.
- Matrix negativity in (19) holds for every coefficient vector. Negative diagonal
  entries alone would not establish a negative-definite r-dimensional subspace.
- The algebraic negative index of the test-space form is not declared equal to a
  numerical eigenvalue count or to an operator index without a separate theorem.
- Finite pole-neutral constraints are justified by section 6, not by omitting poles
  from the definition. The complex-character inverse orientation is preserved.
- Proof construction and theorem truth are distinct from elaboration, kernel replay,
  axiom auditing, numerical verification, and independent review. All those checks
  not explicitly executed remain NOT_RUN.

## References and individual statement correspondence

[1] Jean-Francois Burnol, *The Explicit Formula in simple terms*, arXiv:math/9810169v2,
revised November 1998, pp. 5-6, section "Weil's positivity criterion and stochastic
processes". The classical finite-interpolation and convolution-power negative-test
mechanism is the primary method adapted in sections 3-5. This note supplies its
explicit dyadic coefficient costs, normalized multi-pair statement and support
budget; it does not claim the underlying criterion is new.
https://arxiv.org/abs/math/9810169v2

[2] Alain Connes and Caterina Consani, *Weil positivity and Trace formula, the
archimedean place*, arXiv:2006.13771v1 (24 June 2020), Appendix B, equation (148),
and Appendix C, Proposition C.1, p. 51. Source for the pole-inclusive zeta convention
and prior-art comparator for finite additional transform constraints. Section 6
proves the corresponding constraint statement for the domain used here.
https://arxiv.org/abs/2006.13771v1

[3] Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime
numbers, I*, Rend. Lincei Mat. Appl. 11 (2000), 183-233, Lemma 10 and Theorem 8
(pp. 209-213). Theorem 8 counts DISTINCT nonreal conjugate pairs for its finite
matrix. It is a comparator, not an assumed source-to-operator isomorphism.
Supplied edition: RLIN_2000_9_11_3_183_0.pdf.
http://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0

[4] Michael A. Bennett, Greg Martin, Kevin O'Bryant and Andrew Rechnitzer,
*Counting Zeros of Dirichlet L-Functions*, arXiv:2005.02989v1, Math. Comp. 90
(2021), 1455-1482, Theorem 1.1 and Corollary 1.2. Input to (1)-(2) for primitive
conductor q>1. The classical zeta counting theorem is used separately for q=1.
No critical-line hypothesis is imported.
https://arxiv.org/abs/2005.02989v1

[5] Juan Arias de Reyna, *An infinitely differentiable function with compact
support: Definition and properties*, arXiv:1702.05442v1 (2017), translation of the
1982 paper, Theorem 1 and the probability interpretation. Supplies the classical
smooth dyadic bump. The norm bounds (5) are proved directly here from its uniform
convolution factors, not inferred from numerical derivative samples.
https://arxiv.org/abs/1702.05442v1

[6] Andres Chirre, Valdir Jose Pereira Junior and David de Laat, *Primes in
arithmetic progressions and semidefinite programming*, arXiv:2005.02393v3
(10 January 2021), section 2.1, equation (2.1). Input to the primitive nonprincipal
explicit formula in (23), after Fourier convention conversion. Its GRH-dependent
prime-gap applications and its averaged O-term formula are NOT used in place of
this exact primitive identity.
https://arxiv.org/html/2005.02393v3

[7] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, supplied
arXiv:2606.09096v3, version of 24 September 2026, section 1.1. Additional exact
pole-inclusive zeta normalization comparator. Its positivity equivalence is not
assumed as an unconditional positivity theorem.

Local consumers and source correspondence: `WeilNegativeWitness.lean`,
`../../../FunctionalAnalysis/WeightedConjugatePairing.lean`, and
`../DirichletWeilIntegrand.provenance/README.md` at the inspected source revision.
The existing finite interpolation, error-budget, and canonical source-return
interfaces are reused in meaning, not copied or promoted to checked proofs.
No Lean declaration, research axiom, root import, dependency pin, or existing claim
status is changed by this exposition.
