# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousCompMeasurePreserving.Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "773826f1307d6e21c372e9f061266bd0249e379a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `773826f1307d6e21c372e9f061266bd0249e379a`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compMeasurePreserving_continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/compmeasurepreserving-continuous--766a1f827cc2ed954b891ce4.md) | 50 | `result-track:766a1f827cc2ed954b891ce4535f4cd45afbffe01b247ddab9fea129a2bcbff2` |
| 2 | `theorem` | [Filter.Tendsto.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/filter-tendsto-compmeasurepreservinglp--2d2ad9ca9aa9e5e97f902ff3.md) | 74 | `result-track:2d2ad9ca9aa9e5e97f902ff39ab3071662f58b867927fe48942a1f35bf390410` |
| 3 | `theorem` | [ContinuousWithinAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/continuouswithinat-compmeasurepreservinglp--09f133c24d32ecd0066773bb.md) | 88 | `result-track:09f133c24d32ecd0066773bb61dbf970fb995f13271ce593316e65dc4737e69a` |
| 4 | `theorem` | [ContinuousAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/continuousat-compmeasurepreservinglp--bd63b5702d4e9575548e72d3.md) | 93 | `result-track:bd63b5702d4e9575548e72d34a10f8215c38bf46d77257c26cdfe155a1a35451` |
| 5 | `theorem` | [ContinuousOn.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/continuouson-compmeasurepreservinglp--62cc1ee51e88322b978fbac2.md) | 98 | `result-track:62cc1ee51e88322b978fbac2d29d7200cd5f269966d2f9590a6c80e6c79b068e` |
| 6 | `theorem` | [Continuous.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variantce38aa94970a0632ffaa1dc351e55a229ad583aaaf54ff68f754ebea373856e9.lean/declarations/continuous-compmeasurepreservinglp--14653e928c23c22586636891.md) | 103 | `result-track:14653e928c23c22586636891987c610d9bcb92fcb071a169eb1fc1f419293410` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
