# A strict fixed-power Liouville bound from an independently checked zeta threshold, with a source-exact high-prime cofactor window

Local attribution: grwtsk contributors. Investigation date: 2026-10-31.
Status: mathematical implication conditional on an externally checked **unmerged** theorem and the classical zero-free-to-Mertens summatory transfer; finite cofactor identity proved analytically; new Lean module is SOURCE_PROOF_CANDIDATE. No all-positive-rate supplier or RH is proved.

## 1. Exact sources and mathematical trust boundary

The unchanged local targets are:
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixSquareCriterion.lean`, blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`, with the **actual** `weightedPrefixSquareMoment` and `WeightedPrefixSquareAllRate`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MobiusWeightedPrefixPNTReturn.lean`, blob `84d9b0613e11335088936cf80d1f341749cdedad`, with `SquareDivisorWeightedComparison` as an OPEN Lean gate and the existing genuine Möbius/PNT window source.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicPrimeLogarithmicDensity.lean`, blob `7764823b46a9eb47422a2e9036d888ca818ac775`, and `PadicMobiusPrimeWindowSeam.lean`, blob `027d24046d0563be5cd66e01d7ecf3235d99f801`. These retain actual prime valuations, squarefree signs and exact window endpoints.
- `documentation/mathematics/_support/reviews/padic-mobius-pnt-putnam-window-seam.md`, blob `9d910b5204d7e201cba07c5946dbada5d190a701`, which supplies the independent squarefree small-prime counting estimate.

External strongest **merged** tracker input:
`GTimG/QuasiRiemannTracker@fc2f46afbfda62351055d3c12fcacd4f6916cc63`, PR #99, `Candidate.bound` at `8733819666133/10000000000000` = `0.8733819666133`.
External stronger **open/unmerged** theorem proposal:
https://github.com/GTimG/QuasiRiemannTracker/pull/102 ;
exact PR head `ad7b7edd47bee2fdff34165da5cc14cc0331db2c`,
`submissions/2026-10-31-saddle-closure-selected-gap/src/Candidate/Main.lean`,
Git blob `ea52b389645935c66daa8416a29b20ac0555a3df`.
Its source states, without new analytic premises, all-moduli Dirichlet nonvanishing for
`Re(s) > theta1 = 87338196661320751993/100000000000000000000 = 0.87338196661320751993`, excluding the principal pole. At the observed head, GitHub checks `verify (saddle-closure-selected-gap)`, `admission`, and `qrh/pr-admission` all concluded SUCCESS on 2026-10-31 UTC, but the PR was still OPEN and unmerged. These are EXTERNAL checks of the tracker source, not local GRWTSK proof acceptance, and there has been no GRWTSK import of this new theorem.

Lean root is unchanged: v4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. This review does not infer that external closure replay transfers automatically into this root.

## 2. Strict improvement in the actual weighted-prefix energy exponent

Let `L(x)=sum_(n<=x) lambda(n)` with actual Liouville signs. The classical zero-free-half-plane-to-summatory estimate states: if zeta has no zeros in Re(s)>theta, theta>1/2, then for each eps>0,

    L(x)=O_eps(x^(theta+eps)).

This is an analytical theorem using the Dirichlet series `zeta(2s)/zeta(s)`, reciprocal-zeta growth and Perron/contour summation. It is not formalized or independently kernel-replayed in the local GRWTSK dependency closure; its proof is not silently supplied by the external tracker theorem.

Assuming that classical transfer and the externally successful PR #102 theorem, for all eta>0,

    J_lambda(T) = int_1^(exp T) L(x)^2/x² dx
      <= C_eta * exp((2*theta1-1+eta)*T),  T>=0.

The strict limiting exponent is

    alpha1=2*theta1-1
          =0.74676393322641503986.

The currently merged θ0=0.8733819666133 gives alpha0=0.7467639332266.
Thus alpha0-alpha1 =0.00000000000018496014 >0.

A rational intermediate θw=0.87338196661325 satisfies θ1<θw<θ0, and

    alpha_w=2*θw-1=0.7467639332265 < alpha0.

Accordingly, the source-bound mathematical implication is the genuine **fixed-rate** assertion

    J_lambda(T) <= C * exp(0.7467639332265*T) for every T>=0,

for some finite source-dependent C. This is a strictly stronger available fixed exponent, but is NOT `WeightedPrefixSquareAllRate`, which would require arbitrarily small positive exponent. The exact new Lean candidate proves only the rational comparison; it does not assert the uncompiled analytic transfer as a closed Lean theorem.

## 3. Exact original squarefree large-prime window and its fixed-power estimate

For real y>=2 and positive integer n, let

    a_y(n)=(-1)^(sum_(p<=y) v_p(n)),
    U_y(n)=mu(n)^2*a_y(n),
    V_y(n)=mu(n)^2*a_y(n)*1[sum_(p>y)v_p(n) odd],
    rho_y=(1/zeta(2)) * prod_(p<=y)(p-1)/(p+1).

Every coefficient is an actual arithmetic coefficient, with every repeated prime retained in the parity before squarefree filtering. The coefficient identity is EXACT:

    mu(n) = U_y(n)-2V_y(n).

For Y>=3 and y=log Y, the independently derived finite-prime Dirichlet-convolution / square-divisor estimate supplies a uniform prefix error

    E_y(t) := sum_(n<=t) U_y(n) - rho_y*t,
    sup_(0<=t<=Y)|E_y(t)| <= C*sqrt(Y)*(1+log Y)*exp(16 sqrt(log Y)).

Here C is an absolute finite constant; the rate is `Y^(1/2+o(1))`. The literal arithmetic source has no random-sign or stochastic hypothesis.

For integers 0<=X<Y with H=Y-X, summing the exact coefficient identity gives

    sum_(X<n<=Y)V_y(n) - rho_y*H/2
      = ( E_y(Y)-E_y(X) - [M(Y)-M(X)] ) / 2,         (1)

where M(t)=sum_(n<=t)mu(n). Thus, under the same independently verified external zero-free theorem plus the separate standard classical summatory transfer `M(t)=O_eps(t^(theta1+eps))`, the actual signed **large-prime window** satisfies

    sum_(X<n<=Y)V_(log Y)(n)
      = (rho_(log Y)/2)*H + O(Y^0.87338196661325), (2)

UNIFORMLY for all integers 0<=X<Y, with a single constant independent of X,H. Finitely many small Y are absorbed in the constant. Equation (2) is a bound for the **complete original signed high-prime parity coefficient window** at a fixed exponent strictly smaller than the old merged one. It is not the all-rate target with exponent 1/2+eps.

The weighted PNT source still has a different kernel
`W_X,H(d)=sum_(X/d<m<=Y/d)log m`. An unweighted bound (2) cannot simply be substituted for a bound on `sum_d V_y(d)*W_X,H(d)`: the dual logarithmic kernel has a large norm and retains additional floor carries. The previous Abel/Fubini identities preserve that distinction.

## 4. A genuinely independent finite theorem: the unique giant-prime cofactor window

Choose integers 2<=z, Y>=1 and real y with 2<=y<=z, subject to z²>=Y. Define the giant-prime **signed subset**

    T_(y,z)(X,Y)
       = sum_(X<n<=Y, exists prime p>z dividing n) V_y(n).

A positive integer n<=Y contains at most ONE prime p>z, since two would have product >z²>=Y. Thus it has a unique factorization n=p*m with p>z and m<n/p<=Y/(z+1)<z<p. This is a finite, unambiguous factorization: there is no multiplicity collision or dependence on a probabilistic prime model.

For n=p*m, actual squarefree filtering yields

    V_y(p*m) = mu(m)^2*a_y(m)*1[sum_(q>y)v_q(m) even]
             = (U_y(m)+mu(m))/2.

The last equality follows from `mu(m)=U_y(m)-2V_y(m)` and remains valid at squareful m (both terms then vanish).

Write `pi(t)=# {prime p<=t}`, with pi on noninteger arguments interpreted by floor. The genuine signed prime/cofactor counting theorem is

    T_(y,z)(X,Y)
     = sum_(1<=m<=floor(Y/(z+1)))
         [U_y(m)+mu(m)]/2 *
         { pi(floor(Y/m)) - pi(max(z,floor(X/m))) }.      (3)

Everything in (3) is exact: the bracket is the number of prime multipliers p>z with X<p*m<=Y, and the signed cofactor includes all actual primes <=z. Equation (3) is an **independent finite arithmetic identity**, not a restatement of the target square-root error. It isolates a prime-counting/cofactor coupling that can be attacked by genuine PNT-in-progressions, Type-I/II methods, or independently proved signed cofactor estimates.

For z>=Y/2 and y<=z, only cofactor m=1 can occur, giving exactly

    T_(y,z)(X,Y) = pi(Y)-pi(max(z,X))                    (4)

for integer cutoffs z,Y. This is an explicitly positive top-prime layer. By the classical PNT for z=Y/2, it contributes `~Y/(2 log Y)` to the full prefix (X=0), much larger than `sqrt(Y)`. Any RH-scale error budget must therefore retain this layer inside the complete centered main term, not discard it by an absolute-value estimate.

The complementary component with all prime factors <=z may contain several primes >y, and the original signs are not determined by the unique-prime count (3). Neither (3) nor a generic prime-number-theorem estimate on the bracket gives the required complete signed error in (6) at `Y^(1/2+eps)`.

**Scope controls:** z²>=Y is essential: if it fails, an integer can have 3 primes >z and the single-prime decomposition can overcount it. y<=z is essential: if a counted p also belongs to the small-prime sign, the parity formula is wrong. All tests must preserve the squarefree factor. A literal check of these conditions and exact rational θ comparisons ran in `/mnt/data/rough_prime_cofactor_window_reference.py` (385,163 integer/rational assertions, Y<=240); these are finite diagnostics, not an infinity proof.

## 5. The remaining independent RH-strength work

(2) is a new fixed-power consequence of the **stronger, externally verified-but-unmerged** zero-free theorem; it is not a new independent proof of an improved zeta region by GRWTSK. The finite theorem (3) is independently established by unique factorization and exact counting, but it does not discharge the critical cancellation. To prove the actual `WeightedPrefixSquareAllRate` through the high-prime window route one still needs, uniformly in X and Y,

    sum_(X<n<=Y)V_(log Y)(n)
      = rho_(log Y)*(Y-X)/2 + O_eps(Y^(1/2+eps))

for EVERY eps>0, or an independently justified equivalent all-rate energy supplier. A fixed θ1>1/2 leaves a strictly positive weighted-energy exponent 2θ1-1. No iteration toward the critical line follows from the present bounds. The positive-prime/cofactor decomposition must be recombined with the medium-prime multi-factor packet; it cannot be treated as the whole large-prime tail.

**Disposition:** new exact finite cofactor theorem and strict fixed-exponent conditional transfer, with exact external proof/check pins; no RH proof, no `WeightedPrefixSquareAllRate`, no fictitious local kernel acceptance. `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No executor, scheduler, CI workflow, public-root import or dependency-pin change is authorized or dispatched.
