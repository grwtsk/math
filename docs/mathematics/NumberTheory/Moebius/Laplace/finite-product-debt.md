# Finite signed prime-product debt

Human mathematical direction: grwtsk contributors. Research and candidate
formalization assistance: OpenAI Codex. The finite product expansion and prime
factorization arguments are established mathematics; Mathlib contributions
retain their upstream authorship and Apache-2.0 license.

Status: the finite product/debt identity, its native cutoff-prefix adapter, the
causal vanishing of unborn responses, the `s = 0` Mertens edge, and the complete
finite-window transform correction are formalized in
[`FinitePrimeProductDebt.lean`](../../../../../GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean).
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
[`wholePickup_cutoff_laplace`](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean)
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
[`DampedRecordingParseval.lean`](../../../../../GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean).
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
Plancherel bridge in `AngularFrequencyParseval`, rather than the earlier
`DampedRecordingWindow.lean` construction. The half-line monotone-limit and tail
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
[`VerticalLineMonotonicity`](../../../../../GRWTSK/NumberTheory/Moebius/VerticalLineMonotonicity.lean) proves that the finite completed mass is antitone in
$\sigma$. Therefore bounds on the reciprocal sequence
$\sigma_n=1/(n+1)$, $n\ge1$, imply bounds at every positive real rate. The
converse is immediate, so this countable critical criterion is equivalent to
`CompletedVerticalLineUniform`. The constant remains allowed to depend on
$n$; the theorem does not manufacture a rate-uniform bound.

At the first reciprocal line, [`CriticalIntervalBlocks`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean) removes the remaining
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

The formal source defines the positive majorant

$$
\mathcal M_n=4A_n^2\Delta_1(n)
+\frac{16}{3}|A_nM_n|\Delta_{3/2}(n)
+2M_n^2\Delta_2(n).
$$

The endpoint drops are proved nonnegative and equal to the corresponding real
power differences for $n\ge1$. Termwise $B_n\le\mathcal M_n$, so summability
of this explicit prefix majorant implies the complete boundary-line bound.
That summability is a new named sufficient obligation, not an admitted fact.

A reusable mean-value lemma under `Analysis/SpecialFunctions` proves
$n^{-a}-(n+1)^{-a}\le a n^{-a-1}$ for $a\ge0$ and $n\ge1$. Applied at
$a=1,3/2,2$, it yields the stated scale estimate

$$
\mathcal M_n\le
4A_n^2n^{-2}+8|A_nM_n|n^{-5/2}+4M_n^2n^{-3}.
$$

Thus convergence of the displayed power-scale prefix series formally implies
the critical boundary estimate. No convergence or cancellation premise is
silently added by this reduction.

The mixed power-scale term can be removed without a separate arithmetic
hypothesis. Applying $2xy\le x^2+y^2$ with
$x=|A_n|n^{-1}$ and $y=|M_n|n^{-3/2}$ gives

$$
4A_n^2n^{-2}+8|A_nM_n|n^{-5/2}+4M_n^2n^{-3}
\le 8\left(A_n^2n^{-2}+M_n^2n^{-3}\right).
$$

Lean therefore proves that the two square-summability obligations
$\sum_n A_n^2n^{-2}<\infty$ and
$\sum_n M_n^2n^{-3}<\infty$ together imply the complete critical
boundary-line estimate. These two convergence statements remain unpaid; the
reduction does not turn them into unconditional Möbius estimates.

A generic checked power-comparison lemma makes the thresholds explicit. If
there are constants $C_A,C_M$ and exponents

$$
|A_n|\le C_A n^\alpha,\quad \alpha<\frac12,
\qquad
|M_n|\le C_M n^\beta,\quad \beta<1
$$

for every $n\ge1$, then the two square-energy series converge by comparison
with real-power $p$-series, and hence the critical boundary estimate follows.
This is a conditional consumer theorem. The density-correction moment bounds
and the elementary bounded reciprocal Möbius prefix do not supply either
power estimate or a decay rate.

The two prefix hypotheses are not algebraically independent. At every integer
$n\ge1$, the checked closed-cutoff Abel identity is

$$
A_n=\frac{M_n}{\sqrt n}
+\frac12\int_0^{\log n}e^{-u/2}M(e^u)\,du,
$$

where $M(e^u)$ is the actual real-floor Mertens prefix used by the pickup.
This exact bridge introduces no cancellation estimate. It isolates the next
analytic task: propagate a genuine bound on $M$ through the integral strongly
enough to pay the weighted-prefix square series.
The first adapter is now checked: a natural-prefix hypothesis
$|M_n|\le Cn^\beta$ with $C,\beta\ge0$ implies the exact real-floor envelope
$|M(e^u)|\le Ce^{\beta u}$ for every $u\ge0$. The hypothesis itself remains
unproved. A reusable analysis lemma now also evaluates the remaining scalar
kernel exactly: for every nonzero real $a$,

$$
\int_b^c e^{au}\,du=\frac{e^{ac}-e^{ab}}{a}.
$$

This source-specific combination is now checked. If
$C\ge0$ and $\beta>\tfrac12$, then

$$
\left|\int_0^{\log n}e^{-u/2}M(e^u)\,du\right|
\le C\frac{n^{\beta-1/2}-1}{\beta-1/2},
$$

and consequently

$$
|A_n|\le
\left(C+\frac{C}{2(\beta-1/2)}\right)n^{\beta-1/2}.
$$

Thus a single Mertens power hypothesis above the square-root scale supplies
the weighted-prefix hypothesis at its natural shifted exponent. The Mertens
power hypothesis itself remains unproved.

Combining this transfer with the checked square-series thresholds now gives a
single conditional consumer: whenever

$$
\frac12<\beta<1,
\qquad |M_n|\le Cn^\beta\quad(n\ge1),
$$

the complete critical vertical-line mass is uniformly bounded. Indeed,
$\beta-\tfrac12<\tfrac12$ pays the weighted-prefix series and $\beta<1$
pays the Mertens-prefix series. This closes the analytic implication from a
strict Mertens power saving to the critical boundary; it does not prove the
strict Mertens power saving.

The consumer has also been closed over the full natural exponent range. If
$0\le\beta<1$, replace $\beta$ by
$\gamma=(\beta+2)/3$. Then
$\tfrac12<\gamma<1$ and $n^\beta\le n^\gamma$ for every $n\ge1$, so the
preceding theorem applies. Thus no artificial lower restriction on a supplied
nonnegative Mertens exponent remains.

There is now also an exact discrete adapter to the ordinary reciprocal prefix

$$
R_N=\sum_{n\le N}\frac{\mu(n)}n.
$$

Finite partial summation gives, with no analytic limit,

$$
M_N=NR_N-\sum_{k<N}R_k,
\qquad
|M_N|\le N|R_N|+\sum_{k<N}|R_k|.
$$

This identifies the missing strength in the elementary bound
$|R_N|\le1$: boundedness alone leaves a linear accumulated-history cost. A
usable density or reciprocal-prefix argument must supply quantitative decay
or cancellation in that history term, not merely another uniform bound.
The natural-cutoff source adapter is now exact: the pickup definition of
$R_N$ is definitionally the same closed sum as
`densityMobiusReciprocalPrefix` evaluated at the real cutoff $N$. Hence the
independently proved all-real density theorem really does give $|R_N|\le1$
for the pickup source. It must not be confused with `densityReciprocalPrefix`,
whose summands contain the additional density prime weight.

There is also a cancellation-preserving alternative to taking absolute values
in the history term. Define

$$
w_{u,k}=e^{-u/2}-\bigl(\sqrt{k+1}-\sqrt{k}\bigr).
$$

Discrete Abel summation and the exact Mertens identity give, for every $n$ and
$u$,

$$
A_n-e^{-u/2}M_n
=\sum_{k<n}w_{u,k}(R_k-R_n).
$$

The endpoint coefficient and the history weights have total mass zero; this
is why the constant part of $R$ disappears from the centered formula. On the
open cell $\log n<u<\log(n+1)$ the actual pickup is twice this finite sum.
Consequently the critical boundary estimate is equivalent to uniform
boundedness of the partial sums of the positive blocks

$$
\int_{\log n}^{\log(n+1)}e^{-u}
\left(2\sum_{k<n}w_{u,k}(R_k-R_n)\right)^2\,du.
$$

This exact route uses variation of the bounded prefix rather than demanding
pointwise decay of the prefix itself. The required total variation-kernel
energy bound remains open; the identity alone does not estimate it.

Finite Cauchy--Schwarz now separates this open estimate into deterministic
kernel mass and arithmetic square variation. Define

$$
Q_n(u)=\sum_{k<n}w_{u,k}^2,
\qquad
V_n=\sum_{k<n}(R_k-R_n)^2.
$$

[`ReciprocalPrefixVariationEnergy`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean)
proves the positive majorization

$$
B_n\le
\int_{\log n}^{\log(n+1)}e^{-u}\,4Q_n(u)V_n\,du.
$$

Uniform boundedness of the partial sums of these Cauchy blocks is therefore a
checked sufficient condition for the completed critical boundary. This is a
new mean-square variation target, not an established estimate; in particular,
the pointwise bound $|R_n|\le1$ alone does not pay it.

The deterministic half of that target is now bounded explicitly. The
conjugate identity for consecutive square roots gives

$$
\left(\sqrt{k+1}-\sqrt{k}\right)^2\le\frac1{k+1}.
$$

Consequently [`ReciprocalFluxKernelBounds`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean)
proves throughout the $n$th logarithmic cell that

$$
Q_n(u)\le 4+2\log n.
$$

Thus the deterministic kernel costs only a logarithm. The remaining estimate
is entirely in the arithmetic endpoint-centered variation $V_n$ and its
weighted summation across cells.

The composition is now checked in
[`ReciprocalPrefixVariationSummability`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationSummability.lean).
For every $n\ge1$ the Cauchy block is bounded by

$$
4(4+2\log n)n^{-2}
\sum_{k<n}(R_k-R_n)^2.
$$

Therefore convergence of

$$
\sum_{n\ge1}(4+2\log n)n^{-2}
\sum_{k<n}(R_k-R_n)^2
$$

implies the completed critical boundary estimate (the harmless outer factor
$4$ is retained in the formal majorant). This supplies a concrete
mean-square-variation route distinct from pointwise decay. Its summability for
the actual Möbius reciprocal prefix remains unproved.

[`ReciprocalPrefixVariationPowerSaving`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationPowerSaving.lean)
makes the threshold quantitative. The elementary reciprocal-prefix bound gives

$$
V_n=\sum_{k<n}(R_k-R_n)^2\le 4n.
$$

This linear baseline is still insufficient. If instead there are
$C\ge0$ and $\delta>0$ such that

$$
V_n\le Cn^{1-\delta},
$$

then

$$
4(4+2\log n)n^{-2}V_n
\le 4C(4+4/\delta)n^{-1-\delta/2}.
$$

The right side is summable, so this one mean-square power saving implies the
critical boundary estimate. The proof uses
$\log n\le n^{\delta/2}/(\delta/2)$; the arithmetic power-saving premise,
not the logarithm, is the remaining debt.

The variation is not left as an opaque square sum.
[`ReciprocalPrefixVariationRecurrence`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean)
proves the exact recurrence

$$
V_{n+1}=V_n+
2\frac{\mu(n+1)}{n+1}M_n+
\frac{\mu(n+1)^2}{n+1}.
$$

Here the history term collapses to $M_n$ by the discrete Abel identity.
Telescoping gives

$$
V_n=
2\sum_{j<n}\frac{\mu(j+1)}{j+1}M_j+
\sum_{j<n}\frac{\mu(j+1)^2}{j+1}.
$$

The nonnegative diagonal is at most the full harmonic mass
$H_n\le1+\log n$. Thus it is enough for the signed Möbius--Mertens
correlation (the first sum) to be $O(n^{1-\delta})$ for some
$0<\delta<1$. The logarithmic diagonal is absorbed into the same power without
an exponent loss. The formal consumer proves that this correlation estimate
implies the variation power saving and hence the critical boundary estimate;
it does not assert the estimate.

There is an even cleaner positive form. Since
$M_{j+1}=M_j+\mu(j+1)$, the correlation-plus-diagonal increment equals

$$
\frac{M_{j+1}^2-M_j^2}{j+1}.
$$

[`ReciprocalPrefixVariationMertensEnergy`](../../../../../GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean)
performs the resulting second partial summation and proves

$$
V_n=\frac{M_n^2}{n}+
\sum_{k<n}\frac{M_k^2}{k(k+1)},
$$

where the $k=0$ summand is zero. In particular $M_n^2\le nV_n$ for
$n\ge1$. A positive power saving for this weighted Mertens-square energy is
formally equivalent to the reciprocal-variation power saving, and therefore
implies the critical boundary estimate. This identity removes any ambiguity
about where cancellation is needed: it is precisely the arithmetic control
of the Mertens squares, not cancellation between terms of the final energy.

The exponent transfer is explicit in
[`MertensSquareEnergyPowerBound`](../../../../../GRWTSK/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean).
If $1/2<\beta<1$ and

$$
|M_n|\le Cn^\beta,
$$

then the exact positive energy satisfies

$$
V_n\le
\left(C^2+\frac{C^2}{2\beta-1}\right)n^{2\beta-1}.
$$

Thus its variation power-saving parameter is
$\delta=2-2\beta>0$. This gives a checked alternate passage from the
classical pointwise Mertens premise to the critical boundary through the new
positive-energy interface. It remains conditional on the Mertens bound.

The converse exponent transfer is also exact at the level of existence.
[`MertensSquareEnergyEquivalence`](../../../../../GRWTSK/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean)
formalizes the proposition that a pointwise Mertens estimate holds for some
$1/2<\beta<1$ and proves

$$
V_n=O(n^{1-\delta})\text{ for some }\delta>0
\quad\Longleftrightarrow\quad
|M_n|=O(n^\beta)\text{ for some }1/2<\beta<1.
$$

For the reverse direction, $M_n^2\le nV_n$ first gives exponent
$1-\delta/2$ after taking square roots. Capping the improvement by
$\varepsilon=\min(\delta/2,1/4)$ produces
$\beta=1-\varepsilon\in[3/4,1)$ without imposing an artificial upper bound
on $\delta$. Consequently, the positive-energy route is a useful exact
reorganization of the arithmetic debt, but is not a weaker sufficient
condition than a classical pointwise Mertens power saving. Any genuinely
weaker route must retain signed cancellation that the positive square energy
has discarded.

[`CriticalEndpointDefect`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean)
does retain that cancellation. Write $P_n$ for the square-root-weighted
Möbius prefix and set

$$
Q_n=P_n-\frac{M_n}{\sqrt n}.
$$

The endpoint Abel identity gives $Q_n=W(\log n)/2$. On the whole logarithmic
cell the exact flux splits as

$$
P_n-e^{-u/2}M_n
=Q_n+\left(n^{-1/2}-e^{-u/2}\right)M_n.
$$

The second term is harmless without any Mertens cancellation. Its integrated
square drift is bounded using

$$
0\le n^{-1/2}-e^{-u/2}
\le n^{-1/2}-(n+1)^{-1/2}\le\frac1{n\sqrt n},
$$

the exact cell mass
$e^{-\log n}-e^{-\log(n+1)}=1/[n(n+1)]$, and the elementary estimate
$|M_n|\le n$. The resulting majorant is at most $8/n^3$, hence summable.
Applying $(a+b)^2\le2a^2+2b^2$ in both directions then proves the exact
criterion

$$
\text{critical boundary uniformity}
\quad\Longleftrightarrow\quad
\sum_{n\ge1}\frac{\left(P_n-M_n/\sqrt n\right)^2}{n(n+1)}<\infty.
$$

This is a genuine reduction of the arithmetic interface: unlike the positive
Mertens-square condition, it does not require a pointwise power saving for
$M_n$ and preserves the cancellation between the two natural prefixes. It is
still an equivalent open condition, not a proof of the required summability.
The remaining task is now the weighted square summability of the sampled
signed pickup $W(\log n)$.

The endpoint defect itself has a cancellation-free recurrence at the new
coefficient. [`CriticalEndpointDefectRecurrence`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean)
proves

$$
Q_{n+1}=Q_n+M_n\left(\frac1{\sqrt n}-\frac1{\sqrt{n+1}}\right).
$$

The two appearances of $\mu(n+1)$ cancel exactly. Since $Q_0=0$, telescoping
gives the signed Hardy-type transform

$$
Q_n=\sum_{j<n}M_j
  \left(\frac1{\sqrt j}-\frac1{\sqrt{j+1}}\right),
$$

with the $j=0$ term equal to zero. Thus the critical boundary is equivalently
the exact weighted square-summability problem

$$
\sum_{n\ge1}\frac1{n(n+1)}
 \left|\sum_{j<n}M_j
  \left(j^{-1/2}-(j+1)^{-1/2}\right)\right|^2<\infty.
$$

This formulation moves the remaining problem from pointwise growth of
$M_n$ to cancellation in a smoothed signed history of $M_n$. It supplies no
estimate for that transform by itself.

A weighted finite Hardy--Cauchy estimate gives a genuinely weaker positive
mean-square input. [`CriticalMertensTransformMeanSquare`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean)
shows that, for $0<\varepsilon\le1$,

$$
|Q_n|^2\le
\left(\sum_{j<n}M_j^2g_j^2(j+1)^{1-\varepsilon}\right)
\frac{n^\varepsilon}{\varepsilon},
\qquad
g_j=j^{-1/2}-(j+1)^{-1/2}.
$$

Consequently, for any $0<\varepsilon<1$, the mean-square premise

$$
\sum_{j\ge0}M_j^2g_j^2(j+1)^{1-\varepsilon}<\infty
$$

implies the critical boundary estimate. Indeed, the remaining outer series
has exponent $\varepsilon-2<-1$. Since $g_j$ is of order $j^{-3/2}$,
this premise has the scale $\sum M_j^2/j^{2+\varepsilon}$, weaker than the
previous positive energy at scale $\sum M_j^2/j^2$ and not a pointwise power
bound. The premise itself remains an open mean-square cancellation estimate.

The gap can be removed from the hypothesis altogether.
[`CriticalWeightedMertensSquare`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean)
proves the refined bound

$$
0\le g_n\le\frac1{\sqrt n(n+1)},\qquad
g_n^2\le\frac1{n(n+1)^2}.
$$

It follows termwise that

$$
M_n^2g_n^2(n+1)^{1-\varepsilon}
\le M_n^2n^{-1}(n+1)^{-1-\varepsilon}.
$$

Therefore, for any $0<\varepsilon<1$, the explicit premise

$$
\sum_{n\ge1}M_n^2n^{-1}(n+1)^{-1-\varepsilon}<\infty
$$

implies the completed critical boundary. This is the current positive
mean-square target: its weight is asymptotic to $n^{-2-\varepsilon}$, whereas
the earlier variation energy used the stronger $n^{-2}$ weight. No claim is
made here that this new weighted Mertens-square series converges.

The new square series also has an exact signed decomposition. Set
$w_n=n^{-1}(n+1)^{-1-\varepsilon}$ and
$T_{j,N}=\sum_{n=j+1}^Nw_n$.
[`WeightedMertensSquareCorrelation`](../../../../../GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelation.lean)
uses

$$
M_{j+1}^2-M_j^2=2\mu(j+1)M_j+\mu(j+1)^2
$$

and finite summation by parts to prove

$$
\sum_{n=1}^NM_n^2w_n
=\sum_{j<N}2\mu(j+1)M_jT_{j,N}
 +\sum_{j<N}\mu(j+1)^2T_{j,N}.
$$

Thus the improved positive mean-square target consists of one signed
Möbius--Mertens correlation plus a squarefree diagonal, both against the same
positive tail kernel.

[`WeightedMertensSquareCorrelationBound`](../../../../../GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean)
now pays the diagonal completely. Writing it as $D_N$, its exact recurrence is

$$
D_{N+1}=D_N+w_{N+1}\sum_{j=0}^{N}\mu(j+1)^2.
$$

Since $\mu(j+1)^2\le1$,

$$
0\le D_N\le\sum_{j=0}^{N-1}(j+2)^{-1-\varepsilon}.
$$

The right side is uniformly bounded for every $\varepsilon>0$. Consequently,
for such $\varepsilon$, convergence of the positive weighted square series is
equivalent to a uniform upper bound for the signed finite correlations

$$
\sum_{j<N}2\mu(j+1)M_jT_{j,N}.
$$

In particular, for any $0<\varepsilon<1$, this signed upper bound implies the
completed critical boundary. The reduction is exact: the squarefree diagonal
is no longer an open cost, while the signed correlation estimate remains an
explicit unproved arithmetic premise. No Riemann-hypothesis conclusion is
claimed without that premise.

The elementary coefficient bounds now give a sharp baseline for these exact
blocks. [`CriticalIntervalBlockGrowth`](../../../../../GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean)
proves unconditionally

$$
|M_n|\le n,\qquad |A_n|\le 2\sqrt n,\qquad B_n\le\frac{40}{n}
\quad(n\ge1).
$$

The second estimate is obtained from the first by the checked Abel bridge; the
third inserts both estimates into the checked square majorant. Summing and
using the standard harmonic-number estimate now also proves

$$
\sum_{n=1}^{N}B_n\le 40H_N\le40(1+\log N).
$$

Thus elementary size control reaches exactly a harmonic block allowance and a
logarithmic finite-horizon energy budget. It does not imply a uniform bound for
the partial block sums: the harmonic majorant is not summable. Any completion
of the critical route must therefore recover genuine decay or cancellation
beyond these coefficientwise estimates, for example in the centered
reciprocal-variation kernel above.

The analytic summation cost is now separately checked: for
$0<\beta\le1$,

$$
\sum_{k=1}^{N}k^{\beta-1}\le\frac{N^\beta}{\beta}.
$$

This transfer is now formalized with constants. If $C\ge0$, $0<\beta<1$, and

$$
|R_n|\le Cn^{\beta-1}\qquad(n\ge1),
$$

then the exact partial-summation identity and the finite power-sum bound give

$$
|M_N|\le\left(C+\frac C\beta\right)N^\beta.
$$

The existing full-range Mertens consumer therefore yields the completed
critical boundary directly from reciprocal-prefix decay. This completes the
analytic composition; proving that the actual signed reciprocal Möbius prefix
has any such decay remains the arithmetic obligation. In particular, the
elementary bound $|R_N|\le1$ does not satisfy this premise for any
$0<\beta<1$.

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
only at the same damping does not pay this particular estimate. The finite identity then transports convergence to the full completed quotient
$[\Pi_N(s)-R_T(z,s)]/(zs)$, retaining every debt and endpoint term. This
supplies no separate convergence or cancellation estimate for those terms.

The selected source `pickup_weighted_energy_integrable_initial` currently
provides the elementary energy domain $\tau>1$, corresponding here to
$\sigma>1/2$. Its relocated replay belongs to the monitor. Extending that
domain to every positive $\sigma$ still needs an independent signed
arithmetic upper estimate. The tail argument explains the precise missing
limit premise and cannot replace it.

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceSums.lean). Status: **written-argument**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.



This page retains the complete signed cutoff and tail hypotheses. Existing source-specific receipts certify their own revisions; the mathematical integration does not itself supply the remaining uniform arithmetic budget. Human mathematical direction: grwtsk contributors. Derivation and formalization assistance: OpenAI Codex.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean`](../../../../../GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 18 |
| Theorem/lemma commands | 13 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
