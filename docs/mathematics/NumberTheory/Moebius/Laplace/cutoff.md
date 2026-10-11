# Exact signed cutoff Laplace transform

Human mathematical direction: R.A. Jacob Martone. Derivation, Lean implementation and checking assistance: OpenAI Codex. Local sources are MIT; Lean and Mathlib retain their authorship and Apache-2.0 licensing. RH remains open. This contribution belongs to [research issue #15](https://github.com/grwtsk/math/issues/15).

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

The exact transform supplies no independent bound on its signed terms. P04, `RecordingScaleBound`, an adequate horizon-matched signed estimate and Mathlib's unchanged `_root_.RiemannHypothesis` remain open. No new assumption supplies any of them. The earlier PNT obstruction remains written mathematics with an explicitly imported classical PNT premise; this contribution does not formalize PNT.

The next concrete obligation is the general arithmetic cutoff-debt identity: expand the raw finite prime product over subsets, identify the born subset products with $D_N(s)$, and retain the full signed sum of products above $N$. Then test a cancellation estimate on that actual debt at a matched horizon. An unsigned triangle bound or a target-equivalent assumed supplier is not an RH advance.
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

[Source](../../../../../GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
