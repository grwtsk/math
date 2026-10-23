# Finite Laplace recordings and signed tails

The maintained source links use the current PMD placement. Earlier verification
receipts retain their recorded source paths, bytes and tool context. Fresh
proof replay of the relocated context remains pending; see the
source relocation scope (artifact:gitblob:18548a1c7e77002331dd18e929aa89fadf8af9c3#pmd-source-tree).

Human mathematical direction: grwtsk contributors. Derivation, formalization and checking assistance: OpenAI Codex. Local contribution: MIT; upstream Lean and Mathlib authorship and Apache-2.0 licensing remain preserved. No originality or independent acceptance is claimed. Continuing RH research belongs to [math #15](https://github.com/grwtsk/math/issues/15).

For a continuous real waveform with $f(0)=0$, define the clipped finite recording

$$
L_T(f;z)=\int_0^{\max(0,T)} e^{-zu}f(u)\,du.
$$

For a causal delay $a\ge0$ and $T\ge a$, the exact shifted transform is

$$
L_T(S_a f;z)=e^{-za}L_{T-a}(f;z).
$$

It uses the shorter recording. There is no limiting interchange or assumption on $\Re z$; these are integrals of continuous functions over compact intervals.

For a prime $p$ with $a=\log p\le T$, put

$$
w_p(z)=p^{-1/2}e^{-z\log p}=e^{-(z+1/2)\log p},\qquad
R_{p,T}(f;z)=\int_{T-\log p}^{T}e^{-zu}f(u)\,du.
$$

Lean proves the complete finite-window filter identity

$$
L_T(F_p f;z)=(1-w_p(z))L_T(f;z)+w_p(z)R_{p,T}(f;z).
$$

The correction keeps its complex sign. Bounding its magnitude, proving cancellation across successive prime insertions, or taking a limit requires further estimates. Dropping it produces a false finite-recording multiplier rule. The source counterexample uses the actual base note and the first prime at its birth, at the positive real Laplace parameter $z=1$. Before birth, including birth itself, the closed recording is unchanged by filtering because the new note vanishes at its causal origin.

The insertion identity applies directly to `primeNoteCascade P`, with its proved continuity and zero initial value. `noteWindowLaplace_actual_cascade` identifies the finite transform of the literal actual pickup with the complete prime cascade at the same recording horizon. Thus the result concerns the source already used by the RH consumer.

This contribution does not prove an arithmetic upper bound, negligible boundary correction, the PNT-based uniform-supplier rejection, or RH. The exact boundary formula makes the finite/infinite transform distinction explicit. A next useful step is to derive the complete cutoff transform in terms of the signed Möbius Dirichlet sum and endpoint sums, then seek an independently proved estimate preserving their cancellation.

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

The current import-only repair passed source elaboration at trust zero with fatal warnings. The statements, hypotheses and proof text are unchanged. Complete current owned-declaration auditing and affected-consumer acceptance remain pending; the historical status above is retained.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean`](../../../../../GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
