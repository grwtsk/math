# Verification target: GRWTSK.Analysis.MeasureTheory.EmbeddingReal.Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c38dafd8a2f841d4ff3a8836bf2c14f2e54b0b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c38dafd8a2f841d4ff3a8836bf2c14f2e54b0b4`.

Source path: `GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_nat_measurableEquiv_range_coe_fin_of_finite](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/exists-nat-measurableequiv-range-coe-fin-of-finite--dd36095b68cc1804f3065f9e.md) | 26 | `result-track:dd36095b68cc1804f3065f9efedde89a9d51431cc7dc7f7c4a812337429d5a75` |
| 2 | `theorem` | [measurableEquiv_range_coe_nat_of_infinite_of_countable](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/measurableequiv-range-coe-nat-of-infinite-of-countable--b21e79b4bf71adbb73540cfd.md) | 32 | `result-track:b21e79b4bf71adbb73540cfdcb93df4cc3438883615eaef446c3c54cca9b9188` |
| 3 | `theorem` | [exists_subset_real_measurableEquiv](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/exists-subset-real-measurableequiv--22c3541afee53a8ee5e3c724.md) | 41 | `result-track:22c3541afee53a8ee5e3c724750a34e44b6070f7d6eb100c4305b7b33f0ae403` |
| 4 | `theorem` | [exists_measurableEmbedding_real](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/exists-measurableembedding-real--83c20a83c1583820fbb038be.md) | 61 | `result-track:83c20a83c1583820fbb038be6edfd3343698e01079ca27335dd964c9d97774bd` |
| 5 | `def` | [embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/embeddingreal--a2d9ce31e0d1ad6ad9dff5a4.md) | 67 | `declaration-track:a2d9ce31e0d1ad6ad9dff5a4d2c63a918ac02ae681d00f79df91c018782affe4` |
| 6 | `lemma` | [measurableEmbedding_embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/measurableembedding-embeddingreal--eac67956d557b9d1dd8a4615.md) | 70 | `result-track:eac67956d557b9d1dd8a4615b5237a9e53a6424ad800c89f828cd13e08d4d9e9` |
| 7 | `lemma` | [measurable_embeddingReal](../../../../../mathematics/Analysis/MeasureTheory/EmbeddingReal/Variant2372d3ade28ce7b92c7793931f0c97ec96f20da3647bb51bdd7c454609590354.lean/declarations/measurable-embeddingreal--5c3d8e62a3ad96df2aac33ff.md) | 75 | `result-track:5c3d8e62a3ad96df2aac33fffb8cdf419176201d62b23023edf5c4d68245583d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
