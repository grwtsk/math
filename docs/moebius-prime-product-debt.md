# Finite signed prime-product debt

Human mathematical direction: R.A. Jacob Martone. Research and candidate
formalization assistance: OpenAI Codex. The finite product expansion and prime
factorization arguments are established mathematics; Mathlib contributions
retain their upstream authorship and Apache-2.0 license.

Status: the finite product/debt identity, its native cutoff-prefix adapter, the
causal vanishing of unborn responses, the `s = 0` Mertens edge, and the complete
finite-window transform correction are formalized in
[`FinitePrimeProductDebt.lean`](../GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean).
They have focused trust-zero replay and an owned-declaration axiom audit. No
independent arithmetic upper estimate, P04 witness, or RH proof is claimed.

## Exact finite formula

For a natural cutoff $N$, define

$$
P_N=\{p\le N:p\text{ prime}\},\qquad
q(A)=\prod_{p\in A}p,\qquad
Q_N=q(P_N),\qquad a_s(n)=\exp(-s\log n).
$$

Here $A$ is a subset of $P_N$ and $s$ is any complex number. Every $q(A)$ is
positive and squarefree. The map $A\mapsto q(A)$ is injective, with inverse
the set of prime factors. Since the real logarithm is additive on positive
products, $a_s(q(A))=\prod_{p\in A}a_s(p)$, with no complex logarithm or
branch choice.

Define the raw finite product and its signed unborn-product debt by

$$
\Pi_N(s)=\prod_{p\in P_N}(1-a_s(p)),\qquad
U_N(s)=\sum_{\substack{A\subseteq P_N\\q(A)>N}}
                 \mu(q(A))a_s(q(A)).
$$

Expanding the product gives one term for each subset, with coefficient
$(-1)^{|A|}=\mu(q(A))$. Every squarefree $1\le n\le N$ occurs exactly once:
its prime factors are at most $n$, so they lie in $P_N$. Nonsquarefree
integers contribute zero to the actual Möbius prefix. Partitioning the subset
sum at $q(A)\le N$ therefore gives the exact identity

$$
\boxed{\Pi_N(s)=D_N(s)+U_N(s)},\qquad
D_N(s)=\sum_{1\le n\le N}\mu(n)a_s(n).
$$

Equivalently, because $Q_N$ is squarefree,
$U_N(s)=\sum_{d\mid Q_N,\ d>N}\mu(d)a_s(d)$. The formula holds for every
natural $N$ and complex $s$. Its physical use below has $N\ge1$. At $N=0$
the empty subset has product one, so $D_0=0$ and $U_0=\Pi_0=1$; this is a
finite algebra convention, not a negative recording time.

Each subset term is nonzero, since its Möbius coefficient is $\pm1$ and the
complex exponential never vanishes. The sum of those terms need not be
nonzero. In particular $U_1=U_2=0$. At cutoff three the only unborn product
is six, recovering the existing source formula
$U_3(s)=a_s(6)\ne0$.

## Causality and signed cutoff events

For an actual recording time $T\ge0$, take $N=\lfloor e^T\rfloor$.
If $q(A)>N$, then $\log q(A)>T$. The actual causal response of this product
vanishes at every $u\le T$, and hence on the whole recording $[0,T]$.
This proves zero for its finite-window response contribution. Its raw
algebraic term $\mu(q(A))a_s(q(A))$ is still nonzero. Finite-window
causality cannot erase that term from the raw Euler product; the debt is the
precise correction between these two objects.

The debt changes by signed arithmetic events. For $n\ge2$, put $b=a_s(n)$.
If $n$ is composite, the prime inventory is unchanged and

$$U_n(s)=U_{n-1}(s)-\mu(n)b.$$

If $n=p$ is prime, then $\Pi_p=(1-b)\Pi_{p-1}$ and
$D_p=D_{p-1}-b$, so

$$U_p(s)=U_{p-1}(s)-b(\Pi_{p-1}(s)-1).$$

The new prime itself belongs to the born prefix. Multiplying it by each
nonempty earlier prime subset creates the new unborn terms, because those
products exceed $p$. A composite squarefree product leaves the debt when
its own cutoff arrives; a nonsquarefree cutoff has zero coefficient. Both
recurrences follow directly from the finite identity, without an estimate.

At $s=0$ and $N\ge2$, a prime-two factor makes $\Pi_N(0)=0$.
Consequently

$$U_N(0)=-\sum_{n\le N}\mu(n)=-M(N).$$

This algebraic edge value is a signed Mertens prefix. It does not satisfy
the nonzero-$s$ hypotheses of the transform quotient below. It demonstrates
why a debt estimate can contain the original arithmetic difficulty.

For example, at $N=5$ the unborn terms are
$a_s(6)+a_s(10)+a_s(15)-a_s(30)$. At $s=0$ their signed sum is two, while
the sum of their absolute values is four. Dropping the sign at thirty changes
the exact debt. At $N=6$ the term at six leaves, leaving signed sum one.
Finite checks of such cases do not yield cancellation at unbounded cutoffs.

## Actual transform with all three corrections

Use the actual signed pickup $W(u)$, together with

$$
A_N=\sum_{1\le n\le N}\frac{\mu(n)}{\sqrt n},\qquad
M_N=\sum_{1\le n\le N}\mu(n),\qquad
L_T(z)=\int_0^T e^{-zu}W(u)\,du.
$$

The retained source theorem
[`wholePickup_cutoff_laplace`](../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean)
has $T\ge0$, $s=z+1/2$, $z\ne0$, $s\ne0$, and gives

$$L_T(z)=\frac{D_N(s)}{zs}
 -\frac{2e^{-zT}}z A_N+\frac{2e^{-sT}}s M_N.$$

Substitute the finite debt identity and retain the entire signed correction

$$R_T(z,s)=U_N(s)+2s e^{-zT}A_N-2z e^{-sT}M_N.$$

The resulting exact proposed source adapter is

$$\boxed{L_T(z)=\frac{\Pi_N(s)-R_T(z,s)}{zs}}.$$

This completion retains unborn products and both endpoint sums. The theorem
`wholePickup_cutoff_laplace_prime_product` proves this adapter for the actual
finite-window transform. It neither estimates $R_T$ nor identifies it with a
paid comparison-energy residual.

## Next independent estimate

The complete signed numerator, rather than the raw product alone, is the
actual finite-window transform. A useful exact target is its vertical-line
$L^2$ budget. For $\sigma>0$, set $z=\sigma+it$ and
$s=\sigma+1/2+it$. For the actual hard window
$f_T(u)=1_{[0,T]}(u)e^{-\sigma u}W(u)$, continuity of $W$ on compact
physical windows gives $f_T\in L^1\cap L^2$. Its angular Fourier kernel
is exactly $L_T(\sigma+it)$. Classical Plancherel with kernel $e^{-itu}$
then gives the written identity

$$
\int_{\mathbb R}
 \frac{|\Pi_N(\sigma+1/2+it)-R_T(\sigma+it,\sigma+1/2+it)|^2}
      {(\sigma^2+t^2)((\sigma+1/2)^2+t^2)}\,dt
 =2\pi\int_0^T e^{-2\sigma u}W(u)^2\,du.
$$

These adapter steps are now proved in
[`DampedRecordingParseval.lean`](../GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean).
The module constructs the actual zero-extended hard window, proves its $L^1$
and $L^2$ membership from compact-window continuity, identifies its angular
Fourier kernel pointwise with $L_T(\sigma+it)$, pays the $2\pi$ normalization,
and substitutes the complete prime-product/debt formula. The resulting theorem
`completedNumerator_verticalLine_parseval` is exactly the displayed identity.
The generic `AngularWindowCertificate` remains merely an interface; it is not
used as an assumed supplier.

An independently established bound on the displayed left side, uniform in
$T\ge0$ at each $\sigma>0$, would give the actual half-line weighted square
integrability by monotone convergence, and feed the existing all-rate RH
consumer. This is a reformulation of the remaining estimate, not a
supplier. No such bound has been established. Neither the individual
nonvanishing terms nor the finite product expansion determines the signed
cancellation in this completed numerator.


## Finite recordings, extended tail energy and the limit obligation

The finite-window part of this section now has native Lean replay through
`DampedRecordingParseval`. It reuses the independently proved raw-integral
Plancherel bridge in `AngularFrequencyParseval`, rather than the older private
`DampedRecordingWindow.lean` candidate. The half-line monotone-limit and tail
statements below remain written arguments pending their own native admission;
they are not premises supplied by a waveform certificate.

For fixed real $\sigma$ define the nonnegative density and its extended
half-line energy by

$$h_\sigma(u)=e^{-2\sigma u}W(u)^2,\qquad
\mathcal E_\sigma=\int_{[0,\infty)}h_\sigma(u)\,du\in[0,\infty].$$

Here the half-line integral is the nonnegative extended integral. Set
$H_\sigma(T)=\int_0^T h_\sigma(u)\,du$ for $T\ge0$. Continuity gives finite
$H_\sigma(T)$ for each finite $T$, at every fixed damping. The increasing
windows $[0,n]$ exhaust the half-line, so monotone convergence gives

$$\mathcal E_\sigma=\sup_{n\in\mathbb N}H_\sigma(n)
                    =\sup_{T\ge0}H_\sigma(T).$$

Consequently a finite constant bounding every recording is equivalent to
$\mathcal E_\sigma<\infty$. By the proved finite angular Parseval adapter, it
is also equivalent to a uniform bound on the complete
vertical-line expression above. Separate finite constants depending on $T$
do not prove this condition. Requiring it at every $\sigma>0$ is precisely
the selected `PickupWeightedEnergyAll` premise after the damping change
$\tau=2\sigma$; that premise remains unpaid. This equivalence is now formalized
without invoking a half-line monotone-convergence theorem:
`VerticalLineCriterion` proves that a uniform finite-window bound removes the
damping on each finite interval at cost $e^{2\sigma T}$, hence gives
subexponential pickup energy and then the existing all-rate criterion. The
reverse implication restricts the paid half-line integral to each window.
It also proves equivalence with `pickupEnergyAbscissa = 0` and a conditional
return to the literal Riemann hypothesis.

The existing elementary energy estimate does give an unconditional baseline:
`verticalLineMass_uniform_above_half` proves the complete uniform
prime-product/debt bound for every $\sigma>1/2$. This is the transform of the
known weighted-energy domain $\tau>1$. The unresolved extension is exactly
$0<\sigma\le1/2$, and ultimately every positive line.

The dependence on the continuum of rates can be reduced honestly.
`VerticalLineMonotonicity` proves that the finite completed mass is antitone in
$\sigma$. Therefore bounds on the reciprocal sequence
$\sigma_n=1/(n+1)$, $n\ge1$, imply bounds at every positive real rate. The
converse is immediate, so this countable critical criterion is equivalent to
`CompletedVerticalLineUniform`. The constant remains allowed to depend on
$n$; the theorem does not manufacture a rate-uniform bound.

At the first reciprocal line, `CriticalIntervalBlocks` removes the remaining
continuous-time bookkeeping without removing arithmetic cancellation. On the
cell $\log n<u<\log(n+1)$ it proves

$$W(u)=2(A_n-e^{-u/2}M_n),$$

and defines the corresponding positive boundary block

$$
B_n=\int_{\log n}^{\log(n+1)}
 e^{-u}\,[2(A_n-e^{-u/2}M_n)]^2\,du.
$$

The formal telescope gives

$$
\sum_{n=1}^{N}B_n
=H_{1/2}(\log(N+1)).
$$

Thus $\sup_N\sum_{n\le N}B_n<\infty$ is equivalent to the uniform completed
boundary-line estimate. Each $B_n$ is nonnegative, but its integrand keeps the
signed interaction between $A_n$ and $M_n$. This exact discretization does not
bound the blocks and does not settle the smaller reciprocal rates.

The formal source also evaluates the integral. Writing
$\Delta_a(n)=n^{-a}-(n+1)^{-a}$ gives

$$
B_n=4A_n^2\Delta_1(n)
-\frac{16}{3}A_nM_n\Delta_{3/2}(n)
+2M_n^2\Delta_2(n).
$$

This closed quadratic form exposes the exact negative mixed term that an
arithmetic proof must retain. The generic finite exponential integral used in
the derivation lives separately under `Analysis/Integration`.

The actual omitted function is

$$r_{\sigma,T}(u)=1_{[0,\infty)}(u)e^{-\sigma u}W(u)
                -1_{[0,T]}(u)e^{-\sigma u}W(u)
                =1_{(T,\infty)}(u)e^{-\sigma u}W(u).$$

It therefore has extended squared energy

$$\mathcal R_\sigma(T)=\int_{(T,\infty)}h_\sigma(u)\,du,\qquad
  \mathcal E_\sigma=H_\sigma(T)+\mathcal R_\sigma(T).$$

The disjoint decomposition is exact, including the endpoint. If
$\mathcal E_\sigma=\infty$, then $\mathcal R_\sigma(T)=\infty$ for every
finite $T$, since $H_\sigma(T)$ is finite. If $\mathcal E_\sigma<\infty$,
then $\mathcal R_\sigma(T)\to0$ as $T\to\infty$, and the recordings converge
to the actual damped half-line function in $L^2$. Conversely, an $L^2$
representative of that actual half-line function already requires
$\mathcal E_\sigma<\infty$. No unconditional finite tail norm can be read
from an ordinary totalized Bochner integral without its integrability proof.

There is also a precise conditional kernel estimate. Suppose
$0<\rho<\sigma$ and $\mathcal E_\rho<\infty$. Cauchy--Schwarz gives

$$\int_T^\infty e^{-\sigma u}|W(u)|\,du
 \le \left(\int_T^\infty h_\rho(u)\,du\right)^{1/2}
      \frac{e^{-(\sigma-\rho)T}}{\sqrt{2(\sigma-\rho)}}
 \le \frac{\sqrt{\mathcal E_\rho}}{\sqrt{2(\sigma-\rho)}}
      e^{-(\sigma-\rho)T}.$$

Indeed, split the integrand as
$e^{-\rho u}|W(u)|e^{-(\sigma-\rho)u}$ and integrate the squared second
factor explicitly. Thus the infinite Laplace kernel exists absolutely at
$\sigma+i\omega$, and the same bound controls
$|L_\infty(\sigma+i\omega)-L_T(\sigma+i\omega)|$ uniformly over real
$\omega$. It retains a paid *smaller-damping* energy premise; finite energy
only at the same damping does not pay this particular estimate. The proposed
finite identity then transports convergence to the full completed quotient
$[\Pi_N(s)-R_T(z,s)]/(zs)$, retaining every debt and endpoint term. This
supplies no separate convergence or cancellation estimate for those terms.

The selected source `pickup_weighted_energy_integrable_initial` currently
provides the elementary energy domain $\tau>1$, corresponding here to
$\sigma>1/2$. Its relocated replay belongs to the monitor. Extending that
domain to every positive $\sigma$ still needs an independent signed
arithmetic upper estimate. The tail argument explains the precise missing
limit premise and cannot replace it.
