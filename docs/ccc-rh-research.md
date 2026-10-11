# CCC pickup energy and the remaining Riemann hypothesis bound

The exact closed Möbius pickup has checked conditional returns to Mathlib's literal `RiemannHypothesis`. P04, its complete signed cross-energy polynomial bound, remains open. A broader sufficient condition now retains a separate bound for every positive exponential rate; that arithmetic condition also remains open. The two attached papers provide representation and spectral tools, but neither supplies either bound. This is a reconstruction and application of established mathematics, with local mathematical direction by grwtsk contributors and formalization assistance by OpenAI Codex. No unconditional RH proof or mathematical originality claim is made.

## Exact arithmetic objects

For every real $T\ge0$, use the closed cutoff $N_T=\lfloor e^T\rfloor$, the actual Möbius coefficients, and

$$
M(x)=\sum_{1\le n\le x}\mu(n),\qquad
W(T)=\int_0^T e^{-u/2}M(e^u)\,du.
$$

The finite identity is

$$
W(T)=2\sum_{n=1}^{N_T}\frac{\mu(n)}{\sqrt n}
       -2e^{-T/2}M(e^T).
$$

Both prefixes retain the same closed cutoff. At $u=\log n$, the response

$$
h_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{[\log n,\infty)}(u)
$$

is zero. Touching atoms therefore remain in the inventory without changing the completed pickup.

Let $H_T(m,n)=\int_0^T h_m(u)h_n(u)\,du$. The full ordered signed sum satisfies

$$
\mathcal E(T)=\int_0^T W(u)^2\,du
=\mathcal D(T)+\mathcal X(T),
$$

where $\mathcal D(T)=\sum_n\mu(n)^2H_T(n,n)$ and $\mathcal X(T)=\sum_{m\ne n}\mu(m)\mu(n)H_T(m,n)$. This response Gram is distinct from the original source-vector correlation Gram.

The nonsingular comparison is constant below one and proves

$$
0\le\mathcal D(T)\le2T^2-8T+16(1-e^{-T/2})\le2T^2.
$$

It never integrates the singular inverse-square-root expression below one. These identities and inequalities cover every nonnegative real time, including zero and noninteger cutoffs.

## The exact open premise

`PickupCrossPoly` is the literal proposition

$$
\exists C,r\ge0\;\forall T\ge0:\quad
\mathcal X(T)\le C(1+T)^r.
$$

The checked energy identity and diagonal bound make it equivalent to `PickupEnergyPoly`. Cross witnesses $C,r$ give energy witnesses $C+2,\max(r,2)$; energy witnesses also bound the cross sum with the same constant and exponent. No witness of either proposition is supplied.

Polynomial energy pays every strictly positive exponential tilt of the signed pickup. Its Laplace transform is holomorphic on $\Re z>0$, and the actual Dirichlet/Fubini calculation gives

$$
L(z)=\frac1{z(z+1/2)\zeta(z+1/2)}\qquad(\Re z>1/2).
$$

The entire regularized zeta product continues this identity across the shifted zeta pole. A hypothetical nontrivial zero with real part greater than one half contradicts the continued identity. The exact functional-equation reflection then excludes zeros to the left. Trivial-zero and pole exclusions are retained.

Thus `riemannHypothesis_of_pickupCrossPoly` has exactly the open P04 premise. This route requires no pointwise polynomial amplitude return and no classical Mertens-decay hypothesis. It proves a sufficient condition for RH; no converse from RH to the polynomial budget is claimed. The separate matched-defect/amplitude premise P05 also remains open in the upstream research and is outside this energy-only reconstruction.

## Growth rates, convergence boundaries and every real time

The continuation in `EnergyContinuum.lean` proves a sufficient condition beyond the polynomial class:

$$
\forall\varepsilon>0\ \exists C_\varepsilon\ge0
\forall T\ge0:\quad \mathcal X(T)\le C_\varepsilon e^{\varepsilon T}.
$$

The constant may depend on the rate, but must bound every time. One rate, finitely many rates, or a constant chosen separately at each time does not satisfy this proposition. Polynomial P04 implies this all-rate condition, with the explicit factorial cost in `GrowthBounds.lean`; no converse to polynomial P04 is asserted.

Define the actual pickup convergence boundary by

$$
\alpha_W=\inf\left\{\sigma>0:
  e^{-\sigma u}W(u)^2\in L^1([0,\infty))\right\}.
$$

The initial exponential allowance makes this set nonempty and proves $0\le\alpha_W\le1$. Causal positivity makes actual integrability monotone in damping. Every $\sigma>\alpha_W$ is integrable, and a paid damping floor bounds the integral uniformly at all larger dampings. No value at $\sigma=\alpha_W$, or at damping zero, follows from that statement.

The following equivalences are checked for the literal pickup:

$$
\mathcal X\text{ has an all-rate subexponential upper bound}
\ \Longleftrightarrow
\mathcal E\text{ has one}
\ \Longleftrightarrow
\forall\sigma>0:\ \int_0^\infty e^{-\sigma u}W(u)^2\,du<\infty
\ \Longleftrightarrow\ \alpha_W=0.
$$

Each condition implies RH through the actual signed Laplace transform and its proved reciprocal-zeta identity. None has been proved unconditionally. The integral notation in this equivalence denotes genuine integrability, rather than the default value of a Bochner integral when integrability fails. No converse from RH is formalized.

`SampledBudgets.lean` proves that polynomial P04 at every natural time is equivalent to all-real P04. It also proves the sampled/all-real equivalence for the all-rate condition. The explicit between-sample estimate is

$$
\mathcal X(T)\le\mathcal X(\lceil T\rceil)+2(1+T)^2,\qquad T\ge0.
$$

This uses monotonicity of energy, not of signed cross-energy. A sampled polynomial witness $(C,r)$ gives the all-real witness $(C2^r+2,\max(r,2))$. A sampled energy exponential bound gains precisely a factor $e^\varepsilon$. Every sample is quantified; finite numerical evidence does not meet these contracts.

`ResidualBudgets.lean` permits an independently identified continuous comparison waveform $g$, with its entire signed difference retained:

$$
\mathcal E_W(T)\le2\mathcal E_g(T)+2\mathcal E_{W-g}(T).
$$

An all-rate energy bound for both $g$ and $W-g$ implies the actual pickup budget and RH. The comparison and residual suppliers remain unproved. The determinant reformulation likewise has exactly the same all-rate energy debt.

`BoundaryControl.lean` checks a separate generic example $g(u)=e^{u/2}$: its squared energy is integrable at damping two and divergent at damping one. This waveform is not the Möbius pickup. It proves that continuity and initial positive-damping integrability alone cannot justify crossing a convergence boundary.

## Distinct observables and current verification

The pickup-response Gram, original source-vector Gram, signed scalar readout,
and controller storage have distinct definitions. A transfer between them
requires an exact observable adapter with all signs, domains and residuals.
An energy bound alone does not supply the pointwise strict-polarity supplier.

The current subject-path migration changes source identities. Historical
scoped receipts retain their recorded meanings; they are not a complete
acceptance receipt for the relocated library. Full replay of the current
inventory and consumer audits remain pending.

## Determinants preserve the same arithmetic obligation

[Gavrilova and Petrov, arXiv:2305.17747v3](https://arxiv.org/abs/2305.17747v3), Theorem 1.2, shows that determinant-shaped Grothendieck weights need not give determinantal correlations. Theorem 2.3 embeds those measures in a two-dimensional process, but Remark 2.5 rules out the naive diagonal correlation formula for certain adjacent configurations. Section 2.5 retains marginal coefficient extraction. These facts require a genuine correlation or observable-preserving adapter before a point-process theorem can be applied to the signed Möbius pickup.

For the literal CCC inventory, set $c_n=\mu(n)$ and define

$$
Z(T)=\det\bigl(I+(H_Tc)c^{\mathsf T}\bigr).
$$

The Weinstein–Aronszajn identity gives the checked exact formula

$$
Z(T)=1+c^{\mathsf T}H_Tc=1+\mathcal E(T).
$$

Consequently $Z(T)\le1+C(1+T)^q$ is exactly the original energy bound. This representation alone has no determinantal point-process identification and supplies no arithmetic cancellation. It does not rule out other representations with independently proved estimates.

Finite Cauchy–Schwarz gives the unconditional allowance

$$
\mathcal E(T)\le N_T\mathcal D(T)\le2e^TT^2.
$$

The factor $N_T$ retains the full inventory and produces exponential growth. This upper allowance cannot serve as a polynomial witness. Energy positivity separately gives $\mathcal X(T)\ge-2T^2$, a lower bound in the opposite direction from P04.

## The almost Mathieu operator needs an arithmetic identification

[Avila, Last, Shamis and Zhou, arXiv:2110.07974v2](https://arxiv.org/abs/2110.07974v2), equation (1.1), defines

$$
(H_{\alpha,\lambda,\theta}\psi)(n)
=\psi(n+1)+\psi(n-1)+2\lambda\cos(2\pi\alpha n+\theta)\psi(n).
$$

The local real scalar recurrence adapter preserves integer sites, the unscaled phase, the current/previous state, and the determinant-one transfer. Its transfer matrix has determinant one for every real energy, while energy three at zero coupling has absolute trace three. Determinant one therefore supplies no unrestricted trace bound; no spectral membership is asserted for that example.

The paper's Theorems 1–3 impose explicit irrational-frequency, coupling, and approximation hypotheses and establish poor spectral regularity in those regimes. For the general Lipschitz potential in equation (2.5), Proposition 2.9 compares the phase-averaged integrated-density-of-states measures:

$$
\rho_{\alpha'}([r_-,r_+])
\ge \rho_\alpha([r_-+\kappa,r_+-\kappa])-\frac4L,
\qquad
L\ge1,\quad
\kappa\ge2\pi\|\phi\|_{\mathrm{Lip}}|\alpha'-\alpha|L.
$$

Both the interval shrinkage and finite-size error survive any proposed limiting adapter. None of these statements identifies the spectrum or measure with the CCC arithmetic pickup. An applicable spectral route must construct that identification, prove its hypotheses, and bound every correction sufficiently to reach a literal pickup consumer. No such adapter was obtained here, and the paper does not refute RH or rule out every spectral approach.

## Local verification

Run `lake build --wfail` and `python3 scripts/check_ccc_energy.py`. The latter freshly elaborates and exports the complete selected project import closure at trust zero, checks literal consumer contracts, records all declarations owned by the new modules and their transitive axioms, and rejects removal of P04, replacement of a bound by a determinant identity, alteration of the almost Mathieu phase, substitution of one damping for all dampings, finite samples for every sample, and omission of the comparison residual. Pinned dependency objects are used. The current receipt is `evidence/ccc-energy-checks.json`.

These sources are local candidates. Cross-repository source identities and recovery receipts remain in ignored local records; no upstream acceptance, publication, remote write, or manuscript build follows from this scoped check. The mathematical residual is an unconditional actual arithmetic supplier: polynomial P04 would suffice, as would the broader every-rate subexponential condition or, equivalently in this formalization, $\alpha_W=0$. All remain open.
