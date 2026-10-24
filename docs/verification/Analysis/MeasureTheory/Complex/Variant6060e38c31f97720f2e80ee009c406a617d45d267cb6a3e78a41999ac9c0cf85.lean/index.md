# Verification target: GRWTSK.Analysis.MeasureTheory.Complex.Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb54b9e8e982c2581d5d41743fcbc6e72aeb75b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb54b9e8e982c2581d5d41743fcbc6e72aeb75b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/complexmeasure--de065daa0f1fbc14d7796fed.md) | 44 | `declaration-track:de065daa0f1fbc14d7796fed4d21788cd12df49710716f84a0d85e82987f4bf5` |
| 2 | `def` | [re](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/re--3a7f3edce2548e97ac3013b6.md) | 51 | `declaration-track:3a7f3edce2548e97ac3013b6c0c58effbae6dc4afbbeebe3f251c669b6cce979` |
| 3 | `def` | [im](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/im--4574177db94116debd7975ce.md) | 56 | `declaration-track:4574177db94116debd7975ce6d65b110c03c786dfe03383910989fc911ddc212` |
| 4 | `def` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure--7e115961b23f5d01634c3beb.md) | 61 | `declaration-track:7e115961b23f5d01634c3beb6e7b51318ad17ef0a580f548ce76148a26b66856` |
| 5 | `theorem` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure-apply--e6608bc1d0a328ca8163ce6d.md) | 68 | `result-track:e6608bc1d0a328ca8163ce6d2c64399b0979e4ead8df0dab0e7754ea37b0a345` |
| 6 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/tocomplexmeasure-to-signedmeasure--5cadb57ee20deca577557c85.md) | 71 | `result-track:5cadb57ee20deca577557c859184ad3bf647825f6847e4ec94b4ac15123b88d5` |
| 7 | `theorem` | [_root_.MeasureTheory.SignedMeasure.re_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/root-measuretheory-signedmeasure-re-tocomplexmeasure--b6b445d9b7bd3fb1acb64ee3.md) | 74 | `result-track:b6b445d9b7bd3fb1acb64ee33ad2956b60936a98ffba4621e2f1252c0513add3` |
| 8 | `theorem` | [_root_.MeasureTheory.SignedMeasure.im_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/root-measuretheory-signedmeasure-im-tocomplexmeasure--f1c8564768fbf05854776c26.md) | 77 | `result-track:f1c8564768fbf05854776c2610935d4db14a9156d5b600d5efbb09fb2b6fdc79` |
| 9 | `def` | [equivSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/equivsignedmeasure--07c0dc1bee1f7142e3589c79.md) | 82 | `declaration-track:07c0dc1bee1f7142e3589c7941e0302ee8fc41dd8fc8eda7fcbb2f93f105f6ef` |
| 10 | `def` | [equivSignedMeasureₗ](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/equivsignedmeasure--4974ed5d754a36b32a637bab.md) | 95 | `declaration-track:4974ed5d754a36b32a637bab0d7768c9b85ba930d7b507a833f8e462136e5887` |
| 11 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.lean/declarations/absolutelycontinuous-ennreal-iff--9bfed73bbe58e593f2cf56e2.md) | 107 | `result-track:9bfed73bbe58e593f2cf56e24921c571da52ace7d3a2086d1d719748e1cac835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
