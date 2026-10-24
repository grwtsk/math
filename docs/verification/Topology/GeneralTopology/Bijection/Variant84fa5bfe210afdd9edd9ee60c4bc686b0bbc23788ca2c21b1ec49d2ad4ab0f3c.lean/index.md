# Verification target: GRWTSK.Topology.GeneralTopology.Bijection.Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c5f43204e5e0175b3a410f9b88f372e5288be6d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c5f43204e5e0175b3a410f9b88f372e5288be6d`.

Source path: `GRWTSK/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Epistemology.Induction.Gluing` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ScaledContinuousBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/scaledcontinuousbijection--b212a30965699962ebcd1709.md) | 7 | `declaration-track:b212a30965699962ebcd17090292c0405d75dff733905f04fd291b65e6b4606d` |
| 2 | `theorem` | [continuous_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/continuous-bijection-scales--c2673b789f80c10505fd3392.md) | 12 | `result-track:c2673b789f80c10505fd33922b8401584506a6b397f2b06c6238ef56524d9617` |
| 3 | `def` | [ScaledFiveLayerBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/scaledfivelayerbijection--e94a76ae15af07641b7c8228.md) | 18 | `declaration-track:e94a76ae15af07641b7c8228585d585d7d1366f930f6dd780b5773648c0406fa` |
| 4 | `theorem` | [five_layer_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/five-layer-bijection-scales--ba52ccf0906e1b55fd072241.md) | 23 | `result-track:ba52ccf0906e1b55fd072241ee52d3f34f004191d83915064930d258ea322b1c` |
| 5 | `def` | [ScaledCategoricalObjectBijection](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/scaledcategoricalobjectbijection--6c592589616aaad14b4b8456.md) | 29 | `declaration-track:6c592589616aaad14b4b8456e7f6800e1111a666556e57a8268d33744ca8cc7f` |
| 6 | `theorem` | [categorical_object_bijection_scales](../../../../../mathematics/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/declarations/categorical-object-bijection-scales--f47bbf87cce681093993f3f6.md) | 34 | `result-track:f47bbf87cce681093993f3f6d1347636322b249f1c566e4043bf2caf5935f937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
