# Exponential energy bounds and square integrability

Let $f:\mathbb R\to\mathbb R$ be continuous, and let $C,\delta,\sigma\in\mathbb R$. Assume $0<\sigma$, $\delta<\sigma$, and the cumulative square-energy bound

$$
\forall T\ge0:\qquad
\int_0^T f(u)^2\,du\le C e^{\delta T}.
$$

Then

$$
u\longmapsto e^{-\sigma u}f(u)^2
$$

is Lebesgue integrable on $[0,\infty)$. There is no separate $C\ge0$ hypothesis: setting $T=0$ in the assumed bound gives $0\le C$. The rate $\delta$ need not be positive. The strict inequality $\delta<\sigma$ is the required gap.

## Unit-block estimate

Continuity gives integrability on every compact interval. For each $n\in\mathbb N$, monotonicity of the exponential weight and nonnegativity of the square give

$$
\begin{aligned}
\int_{[n,n+1]}\left|e^{-\sigma u}f(u)^2\right|\,du
&\le e^{-\sigma n}\int_{[n,n+1]}f(u)^2\,du\\
&\le e^{-\sigma n}\int_0^{n+1}f(u)^2\,du\\
&\le (C e^\delta)e^{-(\sigma-\delta)n}.
\end{aligned}
$$

The last bound is summable because $\sigma-\delta>0$. The proof uses the zero-power case of the generic exponential-series summability lemma. Every $u\ge0$ lies in one of these blocks: take the natural floor $n=\lfloor u\rfloor$, so $n\le u<n+1$. Thus the summable block norm integrals cover the closed half-line, including zero. The argument is an implication from the supplied cumulative bound; it does not establish that bound for an arbitrary function.

## Strict threshold and arithmetic application

The existing [exponential threshold counterexample](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialThreshold.lean) uses $f(u)=e^{u/2}$. Its square-energy integral is $e^T-1\le e^T$ for $T\ge0$, so one may take $C=1$ and $\delta=1$. The tilt at $\sigma=2$ is integrable, while the tilt at $\sigma=1$ is identically one on the half-line and is not integrable. A single exponential rate therefore does not give its boundary tilt or every positive tilt.

The [actual arithmetic consumer](../../../../../../GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean) instantiates this theorem with the continuous Möbius pickup. In `pickupWeightedEnergyAll_of_subexp`, an assumed bound at every positive rate supplies $\delta=\sigma/2$ for each $\sigma>0$. The [signed pickup growth page](../../../../NumberTheory/Moebius/Energy/growth.md) records that arithmetic supplier as open. Moving the generic implication into Analysis does not pay the pickup bound or prove RH.

## Source and verification scope

[Source](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialEnergy.lean), compatibility declaration `GRWTSK.RiemannHypothesis.CCC.integrableOn_sq_tilt_of_energy_exponential`. Registry status: **historical-source-description**, with a separately qualified frozen relocation. The complete 3357-byte theorem comment, statement and proof, its hypotheses, compatibility name and original attribution are preserved. The standalone source adds the direct Mathlib real-star order instance provider needed to retain the original elaboration context.

The scoped pinned Lean replay uses trust zero and fatal warnings. It freshly exports the new generic owner, the arithmetic caller and their two affected source consumers, then checks the complete 26-owner family of 278 public, private and generated declarations and their standard transitive axioms, with no runtime exclusions. The actual Energy consumer reports 243 declarations across 22 owners. Five controls fail freshly for their exact intended diagnostic and source range; the phase-scaling control reuses its qualified unchanged two-source ancestry. Twenty-two unchanged source exports and pinned imported Mathlib objects are reused; this is not a Mathlib source rebuild.

All twenty-eight raw type and metadata records and the twenty-seven other complete proof values match exactly. The moved theorem changes only two measured compiler-generated lambda binder-name fields carrying its source-module label. Every other complete proof structure, constant, instance, variable index, binder flag and universe level, and the remaining raw representation, match exactly. A separate qualification permits only those two exact typed paths. Both the strict raw-equality failure and the initial sparse-import failure involving 267 instance/proof fields remain failed evidence; equality of all twenty-eight raw values is not asserted.

The native qualification covers these exact frozen owners and consumers. Other reverse consumers, the whole project and the full consumer replay remain unqualified by this result. The assumed arithmetic growth supplier and unconditional RH remain open. Original receipts keep their original source scopes; the documentation registry does not promote this page to a public fresh-selected theorem view.

Human mathematical direction: grwtsk contributors. Formalization and documentation assistance: OpenAI Codex. The local source is Copyright (c) 2026 grwtsk contributors, MIT. Mathlib results retain their upstream authorship and Apache-2.0 license. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/LaplaceTransform/ExponentialEnergy.lean`](../../../../../../GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialEnergy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
