# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryAbel.Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33321a56381efad3900beb9a84c5a1e7eeb5176",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33321a56381efad3900beb9a84c5a1e7eeb5176`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperProductCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductcoefficient--cb56c0e49f4b271e0653a8a0.md) | 19 | `declaration-track:cb56c0e49f4b271e0653a8a072382e00c6811d1cd32c16f62d2d50177dc63aef` |
| 2 | `def` | [upperProductSummatory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductsummatory--0ef86015efcb334f693ea9e5.md) | 25 | `declaration-track:0ef86015efcb334f693ea9e5d2a04fe330de26e8cdaa53f8e7d8f330cf9e499d` |
| 3 | `theorem` | [upperProductCoefficient_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductcoefficient-zero--1f78d0769ac67cd126d1403b.md) | 28 | `result-track:1f78d0769ac67cd126d1403b2cfc391d35f8d98bff132b951af0a2b221857432` |
| 4 | `theorem` | [upperProductCoefficient_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductcoefficient-one--f80148c6508839dde891228b.md) | 38 | `result-track:f80148c6508839dde891228b68e6af3ebbeb63ddde92cecf6a9a8635bc3a86d0` |
| 5 | `theorem` | [upperProductSummatory_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductsummatory-one--c96b6b327ffe3a532d555f62.md) | 52 | `result-track:c96b6b327ffe3a532d555f6278951155c9b73b84b8f36c9c5649948093dac726` |
| 6 | `theorem` | [upper_rectangle_eq_weighted_product_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upper-rectangle-eq-weighted-product-sum--043cd60eed3e065ac477c7be.md) | 57 | `result-track:043cd60eed3e065ac477c7be5873513cba2f62b0dd8fa767a6b30bc51a1c84fa` |
| 7 | `theorem` | [upperProductSummatory_eq_rectangle_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductsummatory-eq-rectangle-cutoff--aab6812948f368730f47e9b1.md) | 79 | `result-track:aab6812948f368730f47e9b179d30c933a67d3c2532f6ddf70d1e70b153e137f` |
| 8 | `theorem` | [upperProductSummatory_eq_zero_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductsummatory-eq-zero-sum--1f9df82bf4e48757ab62e9e2.md) | 96 | `result-track:1f9df82bf4e48757ab62e9e2e0c61a93170656b7f543d3d9ba241ba3ea2ba91c` |
| 9 | `theorem` | [upperProductSummatory_mul_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproductsummatory-mul-integrableon--01c8bca53f7c619e38f9a805.md) | 109 | `result-track:01c8bca53f7c619e38f9a80555dec04f845a2494015fa6a104b4f944ec223d18` |
| 10 | `theorem` | [upperProduct_sum_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upperproduct-sum-eq-abel--3bc6c31d6440bb18189a19ad.md) | 116 | `result-track:3bc6c31d6440bb18189a19adffe3f37165528dfe0c5e56c851cde7089b5de8c9` |
| 11 | `theorem` | [upper_rectangle_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/upper-rectangle-eq-abel--c3f6e7f9f4e58118e3fb9108.md) | 128 | `result-track:c3f6e7f9f4e58118e3fb91088cba7d5e65faa2d876d0b26873f2598e06a2b973` |
| 12 | `theorem` | [source_index_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/source-index-two--2bcab8b0d062a72e8af1f148.md) | 151 | `result-track:2bcab8b0d062a72e8af1f148294a5f0c860e25c575876f5ac2cc419a43a53815` |
| 13 | `theorem` | [source_square_cutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/source-square-cutoff--ebd4c20d32eb030e35cbbf87.md) | 156 | `result-track:ebd4c20d32eb030e35cbbf874c1bf6ffe9cabaae506136fa1f4bff5882701a1c` |
| 14 | `theorem` | [source_upper_boundary_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/source-upper-boundary-integrableon--da9553daae3f4f19b75d478b.md) | 168 | `result-track:da9553daae3f4f19b75d478bfb24cf8c9c19f1da6dfd514164840b9c0405ff46` |
| 15 | `theorem` | [source_upper_boundary_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/source-upper-boundary-intervalintegrable--247d4c0be94e0dbd135f9369.md) | 177 | `result-track:247d4c0be94e0dbd135f9369af318ddfe2c5c4170dab5a2518659737435e1097` |
| 16 | `theorem` | [source_upper_boundary_eq_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/declarations/source-upper-boundary-eq-abel--81cec4109ff8e9cfb93ea31b.md) | 187 | `result-track:81cec4109ff8e9cfb93ea31b1a6edd4606982a726ce71ded9fa00a883fad2ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
