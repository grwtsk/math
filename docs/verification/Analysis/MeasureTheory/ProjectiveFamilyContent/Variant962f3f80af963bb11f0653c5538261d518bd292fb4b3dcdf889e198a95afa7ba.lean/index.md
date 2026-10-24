# Verification target: GRWTSK.Analysis.MeasureTheory.ProjectiveFamilyContent.Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d198a0f5f15ae48194826ef7d0bcd41b146bcb2b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d198a0f5f15ae48194826ef7d0bcd41b146bcb2b`.

Source path: `GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.AddContent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetAlgebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSetAlgebra_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/issetalgebra-measurablecylinders--6dd6b3a8c9c86739053ba427.md) | 48 | `result-track:6dd6b3a8c9c86739053ba427016cf40fafc092e831c5f88cc7b12ad778d7b6c1` |
| 2 | `lemma` | [isSetRing_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/issetring-measurablecylinders--37592bdd75515c5879260f4e.md) | 53 | `result-track:37592bdd75515c5879260f4ee8b4421fd7a0d169bc49d2c4ff5e96002e01d70e` |
| 3 | `lemma` | [isSetSemiring_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/issetsemiring-measurablecylinders--dfe62deab290c1af94a1cdaa.md) | 56 | `result-track:dfe62deab290c1af94a1cdaab0bb2734d22e93e43ef7f77f5c5158c80e8352cd` |
| 4 | `def` | [projectiveFamilyFun](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilyfun--78abe632abf3d62675826df8.md) | 67 | `declaration-track:78abe632abf3d62675826df85e54b91358edec5494885ce7a76003f1934468b7` |
| 5 | `lemma` | [projectiveFamilyFun_congr](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilyfun-congr--435fbbdde4971fe49004be25.md) | 72 | `result-track:435fbbdde4971fe49004be25a1012693ec655789542b59e447cf70ea33810bfe` |
| 6 | `lemma` | [projectiveFamilyFun_empty](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilyfun-empty--d9dd877244cec70c8ab24793.md) | 79 | `result-track:d9dd877244cec70c8ab24793508df6a30a0ed12cd555c459a29a196ea5520dc1` |
| 7 | `lemma` | [projectiveFamilyFun_union](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilyfun-union--f47eadceb9e549bbdb026be3.md) | 84 | `result-track:f47eadceb9e549bbdb026be34f89b65d00617256699d46c34a0d7beedf0199db` |
| 8 | `def` | [projectiveFamilyContent](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent--dd96b334926e35e54f1c2690.md) | 113 | `declaration-track:dd96b334926e35e54f1c26902760a1eb5eae2ac85df6b6a9b46f4c7d4f139905` |
| 9 | `lemma` | [projectiveFamilyContent_eq](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-eq--a279503e2a4726ccfd24d606.md) | 118 | `result-track:a279503e2a4726ccfd24d60697349320df88e0532576db9e437d5f9f668f7b71` |
| 10 | `lemma` | [projectiveFamilyContent_congr](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-congr--87320f9b69a0550a618c5fe8.md) | 121 | `result-track:87320f9b69a0550a618c5fe83c5d5238bfacd26bb1404419bbb5c6c1e8cdece8` |
| 11 | `lemma` | [projectiveFamilyContent_cylinder](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-cylinder--9850c6ff352d2feca58ff479.md) | 127 | `result-track:9850c6ff352d2feca58ff4798a1cbf3177fb230646301991474b909a4b3c1223` |
| 12 | `lemma` | [projectiveFamilyContent_mono](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-mono--e80feab3892666bdbd91f6a9.md) | 130 | `result-track:e80feab3892666bdbd91f6a9fdfefd42eed10f0435a6ee6ff7ea091241e155ee` |
| 13 | `lemma` | [projectiveFamilyContent_iUnion_le](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-iunion-le--a0c1a50eb52e95f3a4277201.md) | 135 | `result-track:a0c1a50eb52e95f3a4277201a1ee632edd0237fdfaa71eeeaf5c8adff0f0a163` |
| 14 | `lemma` | [projectiveFamilyContent_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-ne-top--7b80c62c9f0dd8f6f81a1454.md) | 145 | `result-track:7b80c62c9f0dd8f6f81a1454d3cb67a84ff1143523c12d20c07f3888cdf23b5b` |
| 15 | `lemma` | [projectiveFamilyContent_diff](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-diff--19d956f4d4c3306fd128ebac.md) | 153 | `result-track:19d956f4d4c3306fd128ebac412b8a279fdc6d588b822dd3813b668c0dce51d1` |
| 16 | `lemma` | [projectiveFamilyContent_diff_of_subset](../../../../../mathematics/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/declarations/projectivefamilycontent-diff-of-subset--7d10aaa5560b3059eb97f1f5.md) | 159 | `result-track:7d10aaa5560b3059eb97f1f58a415a863f928f91af2db39d01635c3974642b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
