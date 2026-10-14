# Conditional logarithmic Mertens boundary estimate

## Unconditional finite identities

For real damping `σ`, the source defines

$$
G_\sigma(u)=e^{-\sigma u}\,\mathrm{pickupVelocity}(u).
$$

It proves the exact identities

$$
G_\sigma(u)=e^{-(\sigma+1/2)u}M(e^u),\qquad
e^{-\sigma t}\,\mathrm{wholePickup}(t)
=V_{\sigma,G_\sigma}(t),
$$

where `M` is the repository's literal closed real-cutoff `mertensPrefix` and
$V$ is the [finite exponential Volterra operator](../../Analysis/Integration/exponential-volterra-l2.md).
The source is interval integrable on every finite interval. At `σ = 1/2`, it
also proves finite-interval square integrability, the identity
$G_{1/2}(u)=e^{-u}M(e^u)$, the pointwise bound $|G_{1/2}(u)|\le1$, and

$$
\int_0^1 G_{1/2}(u)^2\,du\le1.
$$

The unconditional finite-window return `verticalLineMass_le_dampedSource`
states that, for `σ > 0`, `T >= 0`, and an explicit finite-interval square
integrability hypothesis,

$$
\mathrm{verticalLineMass}(\sigma,T)
\le \frac{1}{\sigma^2}\int_0^T G_\sigma(u)^2\,du.
$$

This is the finite Volterra estimate applied to the exact pickup identity. It
does not provide a horizon-independent bound on the source integral.

## Generic conditional transfers

The source also isolates three reusable conditional steps. If the exact
damped source has an exponential envelope

$$
|G_\sigma(u)|\le C e^{-au}\quad(u\ge0),
$$

with $C\ge0$, $a>0$, and $\sigma>0$, then it proves

$$
\mathrm{verticalLineMass}(\sigma,T)
\le \frac{C^2}{2\sigma^2a}\quad(T\ge0).
$$

It then derives this envelope from either a real-cutoff estimate
$|M(x)|\le Cx^\beta$ for $x\ge1$, or a natural-cutoff estimate for
`pickupMertensPrefix`, provided $\beta<\sigma+1/2`; the natural form also
assumes $\beta\ge0$. In both cases the returned denominator is
$2\sigma^2(\sigma+1/2-\beta)$. These are transfer theorems only: the source
retains the exponential or arithmetic bound as an explicit hypothesis and
does not supply the exponent.

## Explicit conditional premise and return

The remaining arithmetic input is a named proposition, not a theorem supplied
by the module:

$$
\mathrm{MertensLogSquareBound}:=
\forall x\in\mathbb R,\quad x>1\Longrightarrow
|M(x)|\le \frac{3x}{(\log x)^2}.
$$

Assuming a term `hM : MertensLogSquareBound`, the source proves, in order,

$$
G_{1/2}(u)^2\le 9u^{-4}\quad(u\ge1),
$$

$$
\int_1^T G_{1/2}(u)^2\,du\le3\quad(T\ge1),\qquad
\int_0^T G_{1/2}(u)^2\,du\le4\quad(T\ge0),
$$

and therefore

$$
\mathrm{verticalLineMass}(1/2,T)\le16\quad(T\ge0).
$$

It packages the last estimate as
`CriticalBoundaryVerticalLineUniform` and, by monotonicity, obtains the same
constant `16` for every `σ >= 1/2`. The tail, total-source, and
Mertens-derived constant-`16` conclusions all retain `hM`; the separate
monotonicity lemma instead accepts the boundary estimate as a premise. The
module does not prove `MertensLogSquareBound`, does not make the
critical-boundary estimate unconditional, and does not prove the Riemann
hypothesis unconditionally.

The published source for the intended arithmetic premise is Johnston,
Leong, and Tudzi, Theorem A.1, equation (A.5),
[arXiv:2408.04143v2](https://arxiv.org/pdf/2408.04143v2). Its constant
`2.91890` implies the displayed premise with constant `3`. That theorem has
not yet been admitted and replayed in the pinned Lean environment, so the
literature citation is evidence for the mathematical supplier, not a native
formal supplier.

## Completed-transform scope

The existing finite Parseval identity identifies `verticalLineMass σ T` with
the normalized completed expression. At `σ = 1/2`, the conditional bound
above therefore prices the normalized expression by `16`, or equivalently
the corresponding unnormalized integral by `32 * π`. This statement retains
the unborn-product debt and both signed endpoint sums in the completed
numerator. It neither deletes those corrections nor bounds the raw finite
Euler product by itself.

The coordinate is also essential: `σ = 1/2` corresponds to `Re s = 1`, not
to the critical line. Once the logarithmic Mertens supplier is admitted, the
remaining damping interval is still

$$
0<\sigma<\frac12.
$$

The logarithmic majorant used here becomes
$e^{(1-2\sigma)u}/u^4$ in that interval and is not integrable. This only
shows that this particular majorization stops at the boundary; it does not
show that the actual signed energy diverges.

## Next quantitative obligation

The next reciprocal damping is `σ = 1/3`. The formal power-transfer theorem
shows exactly what a pointwise power supplier would need to provide:

$$
|M(x)|\le Cx^\beta\quad(x\ge1),\qquad \beta<\frac56.
$$

It would then give, uniformly for `T >= 0`,

$$
\mathrm{verticalLineMass}(1/3,T)
\le
\frac{C^2}{2(1/3)^2(5/6-\beta)}.
$$

This is a transfer specification, not a theorem supplying such a `β`.

The inspected external `openai-math` declaration
`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` proves a zero-free region
`Re s > 7/8`. It does not prove a Mertens estimate. A quantitative bridge
would still have to identify `1/ζ` coefficients with Möbius, control vertical
growth and every Perron or Mellin contour edge and truncation term, recover
the exact cutoff, and replay under this repository's pins. Even if that bridge
eventually supplied `|M(x)| <<_η x^(7/8+η)`, the present transfer would only
pay `σ > 3/8 + η`; it would not reach `σ = 1/3`.

Human mathematical direction: R.A. Jacob Martone. Formalization assistance:
OpenAI Codex. Local work is MIT; Lean and Mathlib retain their upstream
authorship and licenses.

## Source and verification scope

[Source](../../../../GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean).
Status: **fresh-selected**. [Verification receipt](../../../../evidence/NumberTheory/Moebius/logarithmic-mertens-boundary-checks.json) ·
[credit and evidence limits](../../../reference/documentation-history.md).
The receipt covers the conditional theorem and its separate consumer under the
pinned compiler with trust zero, fatal warnings, and an owned-declaration axiom
audit. The displayed Mertens premise remains explicitly unproved here.
