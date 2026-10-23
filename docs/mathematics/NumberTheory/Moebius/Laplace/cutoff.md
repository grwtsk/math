# Exact signed cutoff Laplace transform

Human mathematical direction: grwtsk contributors. Derivation, Lean implementation and checking assistance: OpenAI Codex. Local sources are MIT; Lean and Mathlib retain their authorship and Apache-2.0 licensing. RH remains open. This contribution belongs to [research issue #15](https://github.com/grwtsk/math/issues/15).

For the actual closed pickup $W$, let $T\ge0$, $N=\lfloor e^T\rfloor$, $s=z+1/2$, with $z\ne0$ and $s\ne0$. Define

$$
D_N(s)=\sum_{n=1}^N\mu(n)e^{-s\log n},\qquad
A_N=\sum_{n=1}^N\mu(n)n^{-1/2},\qquad M_N=\sum_{n=1}^N\mu(n).
$$

The [Lean source](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean) proves

$$
L_T(W;z)=\frac{D_N(s)}{zs}
-\frac{2e^{-zT}}{z}A_N+\frac{2e^{-sT}}{s}M_N.
$$

`wholePickup_cutoff_laplace` integrates the existing actual finite response inventory. Each active response contributes

$$
L_T(h_n;z)=\frac{e^{-s\log n}}{zs}
-\frac{2e^{-zT}}{z\sqrt n}+\frac{2e^{-sT}}{s}.
$$

`pickupResponseWindowLaplace` uses the zero response before birth, continuity at the closed birth event, adjacent interval splitting and complex exponential antiderivatives. The inventory includes a note born at $T$; its integral is zero. `pickupResponseWindow_at_birth` checks this case directly for every complex parameter. The general transform also includes $T=0$. At that cutoff $N=1$, both endpoint corrections are essential: `cutoff_zero_not_without_weighted_endpoint` and `cutoff_zero_not_without_mertens_endpoint` each disprove an omission at $z=1$, $s=3/2$.

The new independent arithmetic check `cutoff_three_product_debt` proves, for every complex $s$,

$$
(1-e^{-s\log2})(1-e^{-s\log3})=D_3(s)+e^{-s\log6}.
$$

The omitted squarefree product six carries the positive Möbius sign. Its exponential is never zero, so `cutoff_three_not_raw_product` disproves equality with the raw prime product for every complex $s$. This is a new exact arithmetic counterexample, distinct from the earlier finite-window prime-two multiplier counterexample. It does not establish any asymptotic growth estimate.

## Verification and remaining debt

The selected cutoff checker elaborates the complete selected project import closure at trust zero under pinned Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, using pinned public dependency objects. The native audit enumerates all declarations owned by the new module, checks literal statements, rejects new or unsafe axioms, and permits only `propext`, `Classical.choice` and `Quot.sound` in transitive axiom closures. Five deliberately ill-typed controls test omission of either endpoint, loss of either nonzero denominator premise and substitution of the raw prime product. Acceptance is source scoped, without independent human review.

The exact transform supplies no independent bound on its signed terms. P04, `RecordingScaleBound`, an adequate horizon-matched signed estimate and Mathlib's unchanged `_root_.RiemannHypothesis` remain open. No new assumption supplies any of them. The earlier PNT obstruction remains written mathematics with an explicitly imported classical PNT premise; this contribution does not formalize PNT.

The general arithmetic cutoff-debt identity is now proved in
`FinitePrimeProductDebt`: the raw finite prime product is partitioned into the
born prefix $D_N(s)$ and the complete signed sum of products above $N$. The
matching unborn causal responses vanish on the recording, while the transform
retains that debt and both endpoint sums. The next concrete obligation is a
uniform signed vertical-line estimate for this complete numerator. An unsigned
triangle bound or a target-equivalent assumed supplier is not an RH advance.
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


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

This page retains the complete signed cutoff and tail hypotheses. Existing source-specific receipts certify their own revisions; the mathematical integration does not itself supply the remaining uniform arithmetic budget. Human mathematical direction: grwtsk contributors. Derivation and formalization assistance: OpenAI Codex.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean`](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 14 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
