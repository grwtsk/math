# Effective prime-phase penalties from spectral gaps and overlap certificates

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Scope, exact source, and evidence

This is a written analytical source candidate, not a Lean-checked theorem,
an executed interval certificate, or a proof of RH/primitive Dirichlet GRH.
It supplies an explicit replacement for the compactness-only phase-gap constant
in [WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md), sections 6-7.
The second consumer is the full-head/full-complement spectral enclosure in
[PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), sections 6-8.

Inspected mathematical source: main fd3c63bc8ebd9838f5e76a1a79e8b1ec09cd866f;
root tree a8d10c5e309c016d35d4dbe5fa867860b9c48190. The phase-coercivity source
has blob 1af078628992058c0def133e5ffaa9b8c346a72c; the Neumann source has blob
a7f0ff2b5ea1d331a2a989b01e024d2883d23785. The later concurrent Fourier-moment
addition fc3d69283d7795a42b3857a4ab2021e6ff2d71f0 changes neither source.
Lean pin: leanprover/lean4:v4.34.1. Mathlib pin:
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801.

The new bound is explicit in a certified spectral gap, the actual continuous
jump kernel, and finitely many lower overlap masses. The overlap inputs can
in turn be supplied by an L2 enclosure around a nonnegative trial function.
No pointwise error bound for the true ground state, no uniform boundary lower
bound, and no prescribed zero locations are required. Inputs must nevertheless
be proved for the SAME source operator. Merely listing them is not a certificate.

The bound is for the full gamma-coupled POLE-FREE family. It applies directly
to primitive conductors q>1. Zeta retains its rank-two pole term and is not
silently included in this modulus comparison. The flat comparator can be
negative: a relative phase penalty is not absolute arithmetic positivity.

The argument uses classical diamagnetic comparison, spectral-gap projection,
Chebyshev's measure inequality, a complete-pair variance identity, and finite
spectral counting. References and statement correspondence are in section 9.
No novelty is asserted. Originality is UNASSESSED. WEPO-v1-1 through WEPO-v1-5
are versioned local statement identifiers, not accepted claims or Lean names.
Independent review, formalization, elaboration, kernel replay, transitive axiom
audit, numerical certification, and repository-wide validation are NOT_RUN.
No proof-execution automation or external verifier is dispatched in this increment.

## 1. Unchanged arithmetic family and the comparison defect

Fix I=(0,L), L>0, extend functions by zero, and use complex L2 inner products
conjugate-linear in the first variable. Let b be 1/2 or 3/2, c be real, and set

    kappa_b(u)=exp(-b*u)/(1-exp(-2*u)),
    Gamma_b(f)=integral_0^infinity kappa_b(u)||f(.+u)-f||_2^2 du.

Let S consist of active unramified primes p<exp(L). Include EVERY j=(p,k)
with p in S, k>=1, s_j=k log p<L, and set w_j=log(p)*p^(-k/2)>0.
The complete inventory J is finite. Put zeta_j=omega_p^k for omega in T^S and

    T_s f(x)=1_(0<x<L-s) f(x+s),
    P_omega=sum_(j in J) w_j[zeta_j T_(s_j)+conj(zeta_j)T_(s_j)^*],
    a_omega(f)=c||f||^2+Gamma_b(f)-<f,P_omega f>.                 (1)

For a primitive Dirichlet character chi with q>1, take

    b=a+1/2, chi(-1)=(-1)^a,
    c=log(q/pi)+psi(1/4+a/2),
    S={p prime:p<exp(L),p does not divide q}, omega_p=chi(p).

Then (1) is the maintained plus-Fourier full primitive arithmetic form.
The inverse-character adapter to the canonical primitiveArithmeticValue is
unchanged. The spectral return retains actual complex centered zero locations,
multiplicities, and the signed conjugation-swap pairing. No absolute-square
replacement of that pairing is used here. All prime powers, conductor and
parity stay in (1), even when only a subset of jumps is selected for an estimate.
The all-one phase operator A_0 is a COMPARATOR, not asserted to be a principal
primitive L-function of conductor q.

The preceding source proves: V={f:Gamma_b(f)<infinity} is the common closed form
domain; C_c^infinity(I,C) is a form core; the associated A_omega have compact
resolvent; A_0 has a normalized real g>0 almost everywhere with simple lowest
value lambda_0 and gap Delta=lambda_1(A_0)-lambda_0>0. Eigenvalues are indexed
from zero and counted with multiplicity. The present argument uses those written
results at their actual evidence status; it does not claim fresh verification.

For f in V with ||f||=1, write r=|f| and f=r*z, |z|=1 almost everywhere where
r>0, with arbitrary unit values elsewhere. Define

    X=a_1(r)-lambda_0,
    Y=integral_(x<y) kappa_b(y-x)r(x)r(y)|z(y)-z(x)|^2 dxdy,
    Z_j=w_j integral_0^(L-s_j) r(x)r(x+s_j)
                                  |z(x)-zeta_j z(x+s_j)|^2 dx.

The exact modulus identity and variational principle give

    epsilon:=a_omega(f)-lambda_0=X+Y+sum_(j in J) Z_j,
    X>=0, Y>=0, Z_j>=0.                                      (2)

There is no assumption that lambda_0>=0. The scalar c cancels from X and
from every difference of eigenvalues appearing below.

## 2. An explicit global phase penalty

Choose a NONEMPTY subset F of distinct jumps in J. For each j in F assume
positive numbers m_j,mu_j and a measurable E_j subset (0,L-s_j) such that

    |E_j|>=mu_j,
    g(x)>=m_j and g(x+s_j)>=m_j for almost every x in E_j.       (3)

Choose a proved lower gap 0<Delta_*<=Delta. Set

    kappa_*=kappa_b(L), v_j=m_j^2 mu_j,
    V_* = sum_(j in F) w_j v_j,
    U_* = sum_(j in F) w_j/mu_j,
    v_min=min_(j in F) v_j,
    Theta=min(1, kappa_*/(8 U_*), Delta_* v_min/(8 V_*)).        (4)

Every denominator is positive. In particular Theta>0.

**WEPO-v1-1.** For all phases omega and all f in V,

    a_omega(f)>=
      [lambda_0+(Theta/16)sum_(j in F)w_j v_j|1-omega_p^k|^2]
                                                          *||f||^2. (5)

Consequently the same expression bounds lambda(omega) from below. This is a
finite formula, not a minimum over an unspecified compact set. The data g and
Delta are eliminated as numerical inputs by section 4.

Proof. It suffices to consider ||f||=1. Since r,g are nonnegative and normalized,
a=<g,r> lies in [0,1]. Spectral projection and the gap give

    X>=Delta_*(1-a^2),
    ||r-g||^2=2(1-a)<=2X/Delta_*.                              (6)

Let tau=Delta_* v_min/32. First suppose X<=tau. For a fixed j in F delete from
E_j the points at which either r(x)<m_j/2 or r(x+s_j)<m_j/2, obtaining E'_j.
By (3), the first bad set has measure at most 4||r-g||^2/m_j^2; a change of
variable gives the same estimate for the second. Thus

    |E_j\E'_j|<=8||r-g||^2/m_j^2
                  <=16X/(Delta_* m_j^2)<=mu_j/2,
    |E'_j|>=mu_j/2.                                          (7)

Let Omega_j={x in I:r(x)>=m_j/2}. Both E'_j and E'_j+s_j are contained in
Omega_j, whose measure is at least mu_j/2. Let z_bar be the average of z on
Omega_j; it need NOT have modulus one. The elementary variance identity is

    integral_(x<y, x,y in Omega_j)|z(y)-z(x)|^2 dxdy
       =|Omega_j| integral_(Omega_j)|z-z_bar|^2 dx.             (8)

Since kappa_b is decreasing and positive, the part of Y over these pairs gives

    integral_(Omega_j)|z-z_bar|^2
       <=8Y/(kappa_* m_j^2 mu_j).                            (9)

No lower bound on g or r outside Omega_j is being used. Consequently

    integral_(E'_j)|z(x)-z(x+s_j)|^2 dx
       <=4 integral_(Omega_j)|z-z_bar|^2
       <=32Y/(kappa_* m_j^2 mu_j).                           (10)

The jump term, on the same good set, gives

    integral_(E'_j)|z(x)-zeta_j z(x+s_j)|^2 dx
       <=4 Z_j/(w_j m_j^2).                                 (11)

For unit z(x+s_j), the difference between the two integrands' vectors yields

    |1-zeta_j|^2
       <=2|z(x)-z(x+s_j)|^2+2|z(x)-zeta_j z(x+s_j)|^2.

Integrate, use (7),(10),(11), and obtain

    |1-zeta_j|^2
       <=128Y/(kappa_* m_j^2 mu_j^2)
                         +16 Z_j/(w_j m_j^2 mu_j).           (12)

Multiply by w_j v_j/16 and sum. With

    F_omega=(1/16)sum_(j in F)w_j v_j|1-zeta_j|^2,

this gives

    F_omega<=(8 U_*/kappa_*)Y+sum_(j in F)Z_j
             <=max(1,8U_*/kappa_*) epsilon.                  (13)

The selection F has no repeated jumps, so no atomic defect is counted twice.
Overlapping good sets cause no problem: their reuse of Y is paid by the sum U_*.
Equation (13) proves the bound with the first two factors in (4).

If instead X>tau, then |1-zeta_j|^2<=4 implies F_omega<=V_*/4. Therefore

    epsilon>=X>tau
       >=[Delta_* v_min/(8 V_*)]F_omega.                     (14)

Combining the two cases proves (5). The zero vector and arbitrary norms follow
by homogeneity. QED.

For one selected jump of weight w and phase zeta, the formula is especially
simple:

    lambda(omega)-lambda_0
       >=(m^2 mu/128)min(Delta_*, kappa_* mu, 8w)|1-zeta|^2.  (15)

Other jumps are still in the source, comparator, and spectral gap. They have
not been deleted from the problem. Their additional nonnegative defects are
simply not used in (15).

The proof is nonperturbative and valid for all phases, including large angular
changes. It neither presumes simplicity of A_omega away from the flat vector
nor expands an eigenvector at that vector.

## 3. Consequences for the relaxed Hessian and actual characters

**WEPO-v1-2.** In the previous source's expansion

    lambda(exp(i t alpha))=lambda_0+t^2 C(alpha)+O_alpha(t^4),

one has the explicit lower estimate

    C(alpha)>=(Theta/16)sum_(j=(p,k) in F)w_j v_j k^2 alpha_p^2. (16)

Proof: substitute in (5), divide by t^2 and take the limit, using
|1-exp(i t k alpha_p)|^2/t^2 -> k^2 alpha_p^2. QED.

The earlier exact coefficient remains

    C(alpha)=sum_j w_j(k alpha_p)^2 C_g(s_j)
                       -<J_alpha g,R J_alpha g>,
    J_alpha=-i sum_j w_j k alpha_p(T_(s_j)-T_(s_j)^*),
    R=(A_0-lambda_0)^(-1) on g perpendicular, Rg=0.           (17)

Thus (16) bounds the RELAXED coefficient, including the subtracted reduced-
resolvent response. The fixed-state first term in (17) is still an upper bound,
not a lower bound. If F contains every first-power jump, (16) is a positive
explicit diagonal lower matrix for all prime phase directions.

For actual primitive chi with q>1, (5) yields

    lambda_chi(L)>=lambda_flat(q,a,S,L)
        +(Theta/16)sum_(j=(p,k) in F)w_j v_j|1-chi(p)^k|^2.   (18)

Use actual character phases or certified lower bounds on their chord lengths.
If F contains only higher powers, a root of unity can be missed. Selecting the
first powers avoids that problem. Nonprincipal characters whose currently active
values are all one have no phase gain at this window.

Adding any real scalar to c shifts both sides' spectral baselines equally and
changes none of g,Delta_*,m_j,mu_j or Theta. This proves scalar-shift invariance
of the RELATIVE coefficient, but also shows why it cannot certify absolute
positivity without a lower bound on lambda_flat.

## 4. Replace unknown pointwise ground-state data by an L2 enclosure

**WEPO-v1-3.** Let v in V be real, nonnegative, normalized in L2. Suppose exact
source-bound numbers satisfy

    ell_0<=lambda_0,
    a_1(v)<=u_0<ell_1<=lambda_1(A_0),   ell_0<=u_0.           (19)

Then valid choices are

    Delta_*=ell_1-u_0>0,
    eta^2=2(u_0-ell_0)/(ell_1-ell_0),
    ||v-g||^2<=eta^2.                                       (20)

For each selected jump, suppose a finite union F_j of intervals in (0,L-s_j)
has certified measure at least mu_j^0>0 and

    v(x)>=2m_j, v(x+s_j)>=2m_j on F_j,
    mu_j:=mu_j^0-2eta^2/m_j^2>0.                             (21)

Then (3) holds with these m_j,mu_j, so (5) and (18) follow from these finite
inputs. No pointwise enclosure of g is needed.

Proof. Write a=<g,v> in [0,1]. The spectral expansion gives

    a_1(v)>=lambda_0 a^2+lambda_1(1-a^2).

Therefore

    1-a^2<=(u_0-lambda_0)/(ell_1-lambda_0)
           <=(u_0-ell_0)/(ell_1-ell_0),

since x -> (u_0-x)/(ell_1-x) is decreasing for x<=u_0<ell_1.
Now ||v-g||^2=2(1-a)<=2(1-a^2), proving (20).
Also lambda_1-lambda_0>=ell_1-u_0.

On F_j the set where g(x)<m_j has measure at most eta^2/m_j^2. The same is
true for g(x+s_j)<m_j, by changing variables in the L2 error. Removing their
union leaves a measurable E_j satisfying (3) with measure at least (21). QED.

A practical v can be a normalized nonnegative continuous piecewise-linear test
with rational knots and coefficients, zero endpoint values and zero extension. Its exact normalization uses the L2 mass
integral, not the Euclidean norm of its nodal vector. Its interval and translated-
interval minima are finite piecewise-linear problems; the translations log p
and all normalization constants still require rigorous enclosures. Strict lower
slack permits rational subintervals and rational lower m_j. A floating-point
plot, a small residual alone, or a small L2 error WITHOUT (21) is insufficient.

The Rayleigh upper u_0 must include the complete arithmetic value: all active
prime powers, the untruncated gamma contribution with certified tails, and the
specified conductor and parity. The companion Neumann head/tail method can
supply ell_0 and, using section 5, ell_1. Approximate matrix eigenvalues without
complement control do not supply those lower bounds.

Given (19)-(21), an absolute lower certificate is

    ell_0+(Theta/16)sum_(j in F)w_j v_j|1-chi(p)^k|^2.         (22)

If a rigorous lower enclosure of (22) is positive, it proves positivity for
ALL tests at that fixed source and support. If not, the calculation is
inconclusive; it does not exhibit an off-critical zero or a negative test.
No numerical instance of (19)-(22) has been evaluated in this increment.

## 5. A full-complement supplier for the second spectral value

The previous scalar Schur bound targeted lambda_0. The following counting
version supplies the additional ell_1 needed in (19), without assuming that
the entire form or its head is nonnegative.

Let A=A_0 act on H=H_head plus H_tail, with finite-dimensional head. Let H_0
be its exact head matrix, suppose H_low<=H_0, and assume the complete tail
form is bounded below by eta_N||y||^2 and the cross block has norm at most v_N.
These are actual-source bounds. The canonical Neumann decomposition supplies
such data, with all bounded boundary, prime and any relevant pole terms retained.
In the present application there are no poles.

**WEPO-v1-4.** For t<eta_N, define

    F_N(t)=H_low-tI-[v_N^2/(eta_N-t)]I.                       (23)

If F_N(t) has at most r strictly negative eigenvalues, then A has at most r
eigenvalues strictly below t. In particular r=1 implies lambda_1(A)>=t.

Proof. For x in the head and y in the tail form domain, Cauchy-Schwarz and
completing a real square give

    a(x+y)-t||x+y||^2
      >=<x,F_N(t)x>
         +[sqrt(eta_N-t)||y||-v_N||x||/sqrt(eta_N-t)]^2.       (24)

The nonnegative spectral subspace U of F_N(t) has codimension at most r in the
head. Thus a-t||.||^2 is nonnegative on the subspace of form-domain vectors
whose head lies in U, which has codimension at most r. If A had r+1 eigenvalues
below t, their spectral span would be an (r+1)-dimensional strictly negative
subspace and would intersect that codimension-r subspace nontrivially. This
contradicts (24). QED.

To certify (23) it suffices to bound its second eigenvalue from below by zero,
or to give an exact/inclusion-preserving inertia argument. It is not necessary
to establish full positive semidefiniteness of F_N(t): one negative eigenvalue
is allowed and represents the possibly negative comparator ground state.
Zero eigenvalues in (23) cause no counting problem; interval certification is
simpler when a positive slack is available.

For A=D+V, d_n increasing to infinity and V bounded, one can take
eta_N=d_(N+1)-||V|| and v_N=||V||. The corrected term in (23) tends to zero for
fixed t. Ritz eigenvalues converge from above to the actual eigenvalues because
the cosine spaces are a form core. If lambda_0<t<lambda_1, then eventually the
second head eigenvalue stays above t by a fixed positive margin, and (23) has
at most one negative eigenvalue. Finite entry enclosures whose total norm error
tends to zero preserve that margin. Thus the test supplies lower ell_1 values
approaching lambda_1 from below. This is a proof of eventual enclosure quality,
not a report of an executed matrix calculation.

## 6. Availability of finite overlap certificates at a fixed window

**WEPO-v1-5.** Fix L,b,S and a finite selected jump set. There exist finite data
of the type (19)-(21) with every mu_j>0. When the scalar and finite phase/source
data are computably presented, a source-bound exhaustive refinement using
rigorous enclosures can eventually certify such data. This is a fixed-window
existence statement; it gives no complexity or useful uniform rate in L.

Proof. The predecessor gives g>0 almost everywhere and a simple isolated lowest
value. The nonnegative smooth core approximates g in form norm: contract its
support into I and mollify with a nonnegative compact probability kernel, then
normalize. The logarithmic Fourier-domain proof in the predecessor applies
without a sign change. Hence Rayleigh upper bounds can approach lambda_0 with
nonnegative smooth trials, and piecewise-linear approximations can approximate
these smooth trials in H1, therefore in the logarithmic form norm. Rational
knots/coefficients and exact positive mass normalization do not obstruct density.

For each s_j<L, positivity almost everywhere shows that, for some sufficiently
small m_j>0, the set where g(x)>=4m_j and g(x+s_j)>=4m_j has positive measure.
Choose fixed positive lower masses for these finitely many sets. If a continuous
nonnegative trial v is sufficiently close to g in L2, deleting two error sets
shows that v(x)>2m_j and v(x+s_j)>2m_j on a set with a fixed positive mass.
These strict inequalities define an open set. Inner regularity then supplies
a finite union of intervals with rational endpoints, lying inside it, whose
measure still has a fixed positive lower bound. Compact subintervals provide
strict margins for eventual enclosure of their minima.

The first-eigenvalue enclosures of the canonical Neumann source and section 5
supply ell_0->lambda_0 and ell_1->lambda_1, while the trials give u_0->lambda_0.
Consequently eta^2 in (20) tends to zero and eventually (21) is strictly positive
for every selected jump. This uses a common pinned source and all complete
complement/tail estimates; it cannot be inferred from finite Ritz values alone.
For computably specified inputs, dovetail rational trials, interval sets,
positive rational margins, head sizes and enclosure accuracies. The strict
margins just established ensure that some finite choices are certified. QED.

The certificate does not need to encode the unknown measurable good sets for g:
they are supplied by the proved measure-transfer implication (20)-(21). What is
stored is the trial, its norm, source-bound spectral enclosures, explicit test
intervals and margins. Verified lower estimates can then be inserted into (4),
with interval directions respected. In particular upper errors must not be
rounded downward, and denominators need proved positive lower bounds.

If every first-power jump is selected, (5) gives an explicit global torus
coefficient valid for that fixed source after such a certificate is obtained.
This replaces the earlier existence-only compactness constant with a finite
certification route. It does not evaluate the constant in this text.

## 7. Zeta, absolute sign, and hostile boundary cases

For q=1 the actual source is a_1(f)+<f,R_L f>, with BOTH pole orientations.
The flat phase is already the actual prime phase. The modulus comparison of
the predecessor does not cover R_L: a real odd test on the centered interval
can have negative pole value while its modulus has positive pole value.
A pole-neutral test class is not preserved by taking modulus. The present
proof must not be extended to that class without a new argument.
A valid but unchanged estimate is

    lambda_zeta(L)>=lambda_flat,polefree(L)-[2sinh(L/2)-L].   (25)

No improved zeta bound is claimed here. The overall research target continues
to include this conductor-one source, not only q>1.

Several direct hostile checks delimit the result.

1. Removing the continuous gamma coupling makes kappa_*=0. Formula (4) then
   gives no positive constant, consistent with phase removability for isolated
   prime shifts. One may not import a positive kappa_* from an auxiliary kernel.
2. As s_j approaches L, mu_j<=L-s_j shrinks. The explicit bound deteriorates;
   it is not a uniform estimate through a prime-power threshold.
3. If the certified gap is zero or u_0>=ell_1, (19) rejects the certificate.
   Simplicity as a qualitative fact cannot replace a numerical lower gap.
4. A small L2 error alone permits large pointwise errors on small sets. The
   two error-measure deductions (7) and (21), not a pointwise conclusion,
   are why the proof survives that obstruction.
5. A jump cannot be selected twice to multiply its atomic energy. Overlap
   between different good sets is permitted only because (13) pays for the
   common continuous defect through the explicit sum U_*.
6. Setting every selected phase to one makes the lower penalty zero. Selecting
   only an even power can miss the phase -1; the first powers are required to
   detect every nontrivial prime phase.
7. Replacing c by c-M leaves the coefficient unchanged and subtracts M from
   every spectral value. For large M both spectra are negative despite a strict
   positive phase penalty. This is an exact counterexample to deducing absolute
   positivity solely from the relative theorem, not an arithmetic counterexample.
8. Frozen-ground evaluation drops the negative response in (17) and can
   overestimate the rise. The global variational proof and (16) bound the true
   relaxed value and do not make that substitution.
9. Conductor/parity, finite ramified-prime omissions, character orientation,
   the complete gamma energy and the full tail are part of the source binding.
   Numerically similar data from another source cannot satisfy (19) by proxy.

The outstanding arithmetic obligation is a quantitative absolute sign bound
for every primitive source and every support, including the zeta poles. No
uniform-in-L overlap/gap estimate or control of the negative flat baseline is
proved here. This increment improves the fixed-window phase-penalty supplier;
it does not close the all-scale positivity or earlier dispersion obligation.

## 8. Evidence and implementation boundary

All propositions above are written analytical arguments. No actual interval
matrix, trial function for an arithmetic instance, or coefficient Theta has
been computed or certified. The finite-data existence theorem is distinct from
an executed certificate and from a universal positive-certificate theorem.

Local source authoring and connector publication are ordinary authorized work,
not proof automation. No local Lean/Lake executable or verified local skill
checkout was found during this increment, and no dependent proof execution was
attempted. The missing checks remain NOT_RUN; no previous failed execution has
been reclassified. No server protection, workflow, aggregate import or dependency pin is changed.

The source is scoped to one new exposition file. Source-local theorem labels
and this exact mathematical consumer justify its placement. Existing source,
concurrent Fourier-moment work and historical statuses remain intact. Blob
hashes and connector readback, if completed, establish delivery/byte identity
only and do not supply independent mathematical verification.

## 9. References and individual statement correspondence

[1] grwtsk contributors, WeilGammaPhaseCoercivity.md, at the pinned revision
and blob in the scope section. WGPC-v1-1--2 supply the actual closed domain,
compactness, positive simple ground state and gap. Its equation (7) supplies
the exact nonnegative comparison defect used in WEPO-v1-1. WGPC-v1-4 supplies
the relaxed Hessian used only in WEPO-v1-2. The current quantitative theorem
does not use the old compactness-only global constant as an input.

[2] grwtsk contributors, PrimitiveWeilNeumannSchur.md, pinned blob above,
sections 1,4,6-8. Supplies the exact full primitive source and inverse-character
convention, the cosine form core, complete tail/cross-block budgets, and lower
and upper enclosures for the bottom. WEPO-v1-4 proves the extra negative-index
counting extension for the second eigenvalue rather than attributing that
statement to the existing scalar-bottom enclosure.

[3] Michael Hinz, Magnetic energies and Feynman-Kac-Ito formulas for symmetric
Markov processes, arXiv:1409.7743, equation (4), Lemma 4.3 and Corollary 9.2.
Primary comparator for magnetic jump-energy and diamagnetic mechanisms.
The present singular continuous-plus-atomic form is handled through the exact
source defect; no general Markov framework is imported without its hypotheses.
https://arxiv.org/abs/1409.7743

[4] Carsten Lange, Shiping Liu, Norbert Peyerimhoff and Olaf Post,
Frustration index and Cheeger inequalities for discrete and continuous magnetic
Laplacians, arXiv:1502.06299 (2015), sections 3-4 and 7. Primary comparison
for quantitative magnetic frustration and phase constraints. Its finite graph
and compact-manifold Cheeger theorems are not claimed to apply directly to the
present logarithmic nonlocal form. The explicit constants in (4),(12),(15)
are derived above by a different overlap/variance argument. No exhaustive
novelty or priority claim is made.
https://arxiv.org/abs/1502.06299

[5] Siegfried M. Rump, Verification methods: Rigorous results using floating-point
arithmetic, Acta Numerica 19 (2010), 287-449, sections 1.1-1.4, 5, 13.4 and 14.2;
supplied corrected edition ActaNumerica2010.pdf. Comparator for genuine interval
enclosures, eigenvalue inclusion and finite verification, not an implementation
used here. Finite eigensolver output is not a verified spectral enclosure, and
no rounding guarantee is inferred merely from high working precision.

Statement map: WEPO-v1-1 is the explicit full-domain relative lower bound;
WEPO-v1-2 its relaxed-curvature and character consumer; WEPO-v1-3 removes the
pointwise ground-state oracle; WEPO-v1-4 supplies a source-bound lambda_1
lower enclosure; WEPO-v1-5 establishes fixed-window finite-data existence.
No Lean declaration, kernel check, independent review, computed arithmetic
certificate or accepted frontier status is asserted by this source map.
