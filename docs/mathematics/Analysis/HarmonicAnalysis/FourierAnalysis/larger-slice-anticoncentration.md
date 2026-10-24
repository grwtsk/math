# Larger-slice subset sum anti-concentration

For every real `0 < ε < 1`, there is a positive constant `Cε` such that, for every prime `p`, every finite set `S ⊆ ZMod p` of size `n ≥ 2`, every positive natural `m ≤ (1−ε)n`, and every `z`,

`Pr[Σ(R) = z] ≤ 1/p + Cε √(log n)/(n √m)`,

where `R` is uniform among the `m`-element subsets of `S`. There is no logarithmic lower restriction on `m`. The explicit constant in the [Lean source](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean) is `Cε = 128000 · 2²⁴ / ε²`.

This is Corollary 1.4 of Pham and Sauermann, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. The result permits zero in `S`; sampling uses finite sets. The theorem `prime_subsetSumProbability_le_largerSlice` derives the nonzero-modulus instance from primality. `exists_larger_slice_anticoncentration_constant` quantifies one constant uniformly over all the stated moduli, sets, sizes and targets.

## Proof from the closed small-slice theorem

Write `C = 2²⁴` and `Nε = 64000 C/ε`. If `n ≤ Nε²`, or if `m ≤ C log n`, the existing completion estimate `Pr[Σ(R)=z] ≤ 1/(n−m+1) ≤ 1/(εn)` is absorbed by the displayed error term. These cases need no additional analytic premise.

Otherwise set `k = min(m, ⌊εn/(1000 log n)⌋)`, expose `m−k` elements, and retain `k` elements to sample from the complement. [Parameter lemmas](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean) prove every floor, positivity and cardinality restriction: every complement has size `r = n−m+k ≥ εn`, and `C log r ≤ k ≤ 10⁻³ r/log r`. The proved estimate `(log n)² ≤ 16√n` supplies the explicit finite threshold.

The [exact two-stage exposure law](../../../CombinatoricsAndDiscreteMathematics/Sequences/fixed-size-subset-exposure.md) makes the union uniform among all `m`-element subsets. Apply the closed [Theorem 1.3](subset-sum-anticoncentration.md) to each residual set at target `z−Σ(A)` and average these conditional bounds. The [scalar comparison](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean) uses `k ≥ εm/(2000 log n)` to obtain the required `√(log n)` loss. It introduces no unproved independence or concentration assertion.

The source proof's opening reference to “Theorem 1.2” for the constant is read as Theorem 1.3, which is the anti-concentration theorem actually invoked in that proof. All applied Lean hypotheses are explicit.

## Boundaries and controls

The restrictions `m ≥ 1` and `ε > 0` are substantive. For `p=5`, `S={0,1}`, and `m=0`, the empty-subset sum has mass one while the claimed formula with `√m` has right side `1/5`. At `ε=0`, the displayed explicit coefficient is zero in Lean; the full subset of `{0,1}` again has mass one. This refutes that extension of the explicit formula, without asserting a finite example disproves every possible alternative coefficient. The controls also check actual conditional fiber counts and reject theorem applications missing their required hypotheses.

Conditional chain estimates, the three Section 5 failure-event estimates, the asymptotic source-range rearrangement theorem and the full Graham conjecture require further work. This corollary supplies none of those missing proofs by assumption. Existing clock, certificate, budget and controller results keep their original hypotheses.

## Verification and credit

The fresh selected receipt (artifact:gitblob:e80bd000264db3cc8c09f285808344be62e9680e) binds the exact source bytes, retained paper v1 identity, pinned Lean and Mathlib, a fresh 22-module local project closure, the positive consumer and both intended type rejections. All 761 owned declarations, including private and generated declarations, pass the standard-three axiom policy. The complete selected source-ownership inventory (artifact:gitblob:0a09fc9ea5c8ecf51b21b3b91a59f00427406e67) records actual Lean names, types, hypotheses and axioms. Cached dependency object-to-source provenance and whole-library replay are outside this selected receipt; subsequent integration evidence is recorded separately. Historical receipts retain their original scope and identities.

Original mathematical argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex. Mathlib authorship and licensing retained; no originality claim.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/ZModLargerSlice.lean`](../../../../../GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSlice.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 5 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
