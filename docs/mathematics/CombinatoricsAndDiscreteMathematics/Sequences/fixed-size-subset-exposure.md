# Conditional exposure of fixed-size subsets

Let `S` be a finite set, and let `a + b ≤ |S|`. First choose an `a`-element subset `A` uniformly from `S`. Conditional on this actual `A`, choose a `b`-element subset `B` uniformly from `S ∖ A`. Then `A ∪ B` is uniform among the `(a+b)`-element subsets of `S`. The case `a = 0` is included.

The [Lean source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean) defines the finite dependent pair space `exposurePairs`. Its fibers over `A` have size `choose (|S|−a) b`, and its fibers over any admissible union have size `choose (a+b) a`. An explicit bijection sends an `a`-subset of a fixed union `R` to `(A, R ∖ A)`. Thus the union law follows by counting, with positive denominators proved from `a+b ≤ |S|`.

## Conditional laws and averaging

`conditional_residual_probability` divides the actual first-part event fiber by its cardinality. It gives the uniform residual subset probability after conditioning on `A`. `exposure_first_marginal_probability` proves that the first choice itself has uniform marginal probability. `mean_union_exposure` proves the exact identity for every real-valued function of the union; `event_union_exposure` specializes it to events.

For any additive commutative group and any label function, `sum_union_exposure` translates the target for the second subset from `z` to `z − Σ(A)`. `mean_union_le_of_conditional` and `event_union_le_of_conditional` average bounds proved for every actual first outcome. No independence of nested subsets is asserted. Choosing both subsets independently from `S` would permit overlap and would not give this fixed-size union law.

This supplies the two-stage sampling step in Section 4 of Pham and Sauermann, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026, and is used by the [larger-slice bound](../../Analysis/HarmonicAnalysis/FourierAnalysis/larger-slice-anticoncentration.md).

## Verification and credit

The fresh selected receipt (artifact:gitblob:e80bd000264db3cc8c09f285808344be62e9680e) binds the exact source bytes and pinned environment. It freshly rebuilds the complete 22-module local project closure with trust zero and fatal warnings, compiles the positive consumer, verifies both intended rejections and audits all 761 owned declarations, including private and generated declarations. Only `propext`, `Classical.choice` and `Quot.sound` are permitted. Cached dependency source provenance and whole-library acceptance are outside this selected receipt. Historical records retain their original scope and bytes.

Original mathematical argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: grwtsk contributors. Lean implementation: OpenAI Codex. Mathlib authorship and licensing retained; no originality claim.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 23 |
| Theorem/lemma commands | 20 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
