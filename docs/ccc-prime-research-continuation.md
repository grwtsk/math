# Continuing the CCC prime recording route

All mathematical work from the prime-cascade and complete-recording contribution is developed in grwtsk/math. Human mathematical direction: R.A. Jacob Martone. Derivation, Lean formalization and checking assistance: OpenAI Codex. Local contributions are MIT; original Lean and Mathlib authorship and Apache-2.0 licensing remain preserved. RH remains open.

The source checkpoints are the [exact cascade](ccc-prime-cascade.md), [complete recording blocks](ccc-recording-scale.md), [finite-window correction](ccc-prime-window-laplace.md) and [exact cutoff transform](ccc-cutoff-laplace.md). Their source-bound receipts are `evidence/prime-cascade-checks.json`, `evidence/recording-scale-checks.json`, `evidence/prime-window-laplace-checks.json` and `evidence/cutoff-laplace-checks.json`. The cascade implementation issue [#95](https://github.com/grwtsk/math/issues/95) is complete. Continuing arithmetic research belongs to [#15](https://github.com/grwtsk/math/issues/15), which stays open.

## Mathematical frontier

Lean proves the literal pickup's exact finite prime cascade, the full signed insertion energy, a logarithmic reciprocal-prime-mass allowance, an actual negative correlation at the prefix before prime 11, and the exact doubled-recording decomposition. Every ordered echo interaction is retained. Existence of a `RecordingScaleBound` is equivalent to P04; its conditional RH consumer does not establish that bound or reduce its known arithmetic difficulty.

The uniform suppliers over independently varying finite prefixes and recording horizons are analytically obstructed by the finite-cascade Laplace transform and the unconditional prime number theorem. This rejection is a written analytic argument, not a replayed Lean PNT theorem. Do not return to it as an open supplier conjecture. The negative-correlation counterexample is separately kernel checked and rules out the nonnegative-echo shortcut.

## Next proof work

The [finite-window Laplace identity](ccc-prime-window-laplace.md) retains its entire boundary correction. A shifted waveform's truncated transform looks back to a shorter window; treating it as a multiplier on the full recording discards a signed tail. The one-prime correction applies to an actual finite cascade and preserves before-birth and event-equality cases. A checked prime-two counterexample at positive Laplace parameter one prevents dropping the tail. The new [source-specific cutoff identity](ccc-cutoff-laplace.md) integrates the complete actual response inventory and retains both signed endpoint sums. Do not count renaming P04, finite quadrature, or repeated passing audits as a new arithmetic estimate.

Seek an independently proved bound on the complete signed recording, or a weaker estimate at every positive exponential rate. Spectral comparisons require the exact observable identification and a paid full residual. Determinant one, topology, a raw finite Euler product, and unsigned estimates alone do not supply this debt. Preserve failed routes and record the next concrete untried obligation after each run.

The exact cutoff formula is now Lean formalized in `PickupCutoffLaplace`. For $T\ge0$, $N=\lfloor e^T\rfloor$, $s=z+1/2$, and $z\ne0$, $s\ne0$, set

$$
D_N(s)=\sum_{n=1}^N\mu(n)e^{-s\log n},\quad
A_N=\sum_{n=1}^N\frac{\mu(n)}{\sqrt n},\quad
M_N=\sum_{n=1}^N\mu(n).
$$

Integrating each active response gives

$$
L_T(W;z)=\frac{D_N(s)}{zs}
-\frac{2e^{-zT}}{z}A_N
+\frac{2e^{-sT}}{s}M_N.
$$

The single-response integral, finite signed integral linearity and full cutoff identity are proved. A note born exactly at the endpoint has zero transform; $T=0$ is included. Two actual zero-window counterexamples show that either signed endpoint omission is false. No new axiom or arithmetic-growth premise is used.

The independent arithmetic lemma `cutoff_three_product_debt` proves

$$
(1-e^{-s\log2})(1-e^{-s\log3})=D_3(s)+e^{-s\log6}
$$

for every complex $s$. The positive-sign product six is above the inventory and its exponential never vanishes. Thus `cutoff_three_not_raw_product` rejects the raw-product substitution for every complex $s$. This is distinct from the already checked prime-two finite-window counterexample. It is an exact arithmetic identity, not a new growth estimate.

The general cutoff-debt identity is now formalized in `FinitePrimeProductDebt`.
It expands the raw prime product over every subset of the primes at most $N$,
identifies the born products with $D_N(s)$, and retains the complete signed sum
for products above $N$. It also proves that those unborn causal atoms vanish on
the matching recording, that the debt at $s=0$ is exactly the negative Mertens
prefix, and that the actual cutoff transform equals the raw product minus the
debt and both endpoint corrections.

The hard-window Fourier adapter is now also proved. For every $\sigma>0$ and
$T\ge0$, `completedNumerator_verticalLine_parseval` identifies the angular
$L^2$ mass of the complete quotient—raw prime product minus unborn debt and
both endpoint terms—with
$\int_0^T e^{-2\sigma u}W(u)^2\,du$. Thus Fourier normalization and the
finite-window representative are no longer open interfaces.

`VerticalLineCriterion` packages the needed uniform statement as
`CompletedVerticalLineUniform` and proves it equivalent to
`PickupWeightedEnergyAll` and to vanishing of the actual pickup-energy
abscissa. The forward proof removes damping on each finite interval and yields
subexponential energy; the reverse proof restricts the integrable half-line
density. Consequently this completed vertical-line condition feeds the
existing literal-RH consumer, but is exactly the unpaid all-rate arithmetic
criterion rather than a new estimate.

The next untried obligation is an independently proved bound for that complete
signed vertical-line expression, uniform in the recording horizon, or a
genuinely weaker cancellation lemma that still feeds the every-positive-
damping energy criterion. Keep the debt and both pickup endpoint terms together;
bounding separate unsigned pieces can destroy the cancellation. No adequate
signed upper estimate is known here.

## Continuation and integration

Use the existing main checkout, the pinned Lean 4.33.0 and Mathlib environment, fresh selected project source replay at trust zero, literal statement checks and transitive axiom audits allowing only `propext`, `Classical.choice` and `Quot.sound`. Refresh manifests for changed bytes. Preserve unrelated work and inspect any concurrent commits before a publication includes them. Do not import raw conversations, private proof logs or manuscript archives into public math sources.

The human authorizes continued research without an expiry, coherent checked integration into main, completed relevant issue closure and cleanup of fully merged branches/worktrees. Unsolved RH, P04 and other research obligations remain open. Do not force-push, erase history, discard changes, prune another task's active checkout, activate hosted workflows, tag, release or deploy.

The existing spectral, waveform, migration and repository-monitor work has independent continuation records. This contribution owns the prime recording and finite Laplace boundary route. Operational state and raw diagnostics remain in ignored local storage. The chat continuation runs every fifteen minutes until the human stops or redirects it; a next-day return is not an expiry. Report meaningful checked results, verification failures, completion or needed human decisions, and avoid repeating unchanged status.
