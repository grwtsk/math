# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vertex.Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4bffac35133d31d23e5d83d85bb823eba81d99f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4bffac35133d31d23e5d83d85bb823eba81d99f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Residue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MemoryKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/memorykind--e54ef9db1776f1c4cb8a16a8.md) | 8 | `declaration-track:e54ef9db1776f1c4cb8a16a84c4a875fee9d37a6ca6f8dd434444c907090dd79` |
| 2 | `def` | [MemoryKind.defaultSide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/memorykind-defaultside--0bcc8cfbac9e89d88247c47c.md) | 21 | `declaration-track:0bcc8cfbac9e89d88247c47c0d0a96a4b06d0dc5af120e083f4c49f853973555` |
| 3 | `structure` | [MemoryVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/memoryvertex--864d4c3740b065658b11992a.md) | 33 | `declaration-track:864d4c3740b065658b11992a9789de56461ce7d13edb8d1b3968f13e386c778e` |
| 4 | `def` | [noopVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/noopvertex--613d243179d1ad2bec1bd7f0.md) | 45 | `declaration-track:613d243179d1ad2bec1bd7f03fe87e033a274239067b1d903686c629f926ae04` |
| 5 | `def` | [MemoryVertex.usesDefaultBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/memoryvertex-usesdefaultboundary--7d8c86cf6902540cceb03a11.md) | 56 | `declaration-track:7d8c86cf6902540cceb03a11bd5feaabe351a65d9b75043f99ab28c447ea27df` |
| 6 | `def` | [MemoryVertex.isBridgeWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/memoryvertex-isbridgewitness--4f79f8d4642383c48cc87b6c.md) | 59 | `declaration-track:4f79f8d4642383c48cc87b6c606590e541d4bf1d20b6e01695f73ae0e4d23dbb` |
| 7 | `def` | [supportBounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/supportbounded--56b26ddf04eb5dc5ad0b1842.md) | 64 | `declaration-track:56b26ddf04eb5dc5ad0b184238097df9eaab90d8ce25bbadac379ec0a2547e3d` |
| 8 | `theorem` | [residueWitness_defaults_bridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/residuewitness-defaults-bridge--8787cdb10abe3b12b49e7111.md) | 67 | `result-track:8787cdb10abe3b12b49e71111d67ab474932bb0dc0d114f520b877150c9967e1` |
| 9 | `theorem` | [refusalWitness_defaults_bridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/refusalwitness-defaults-bridge--ce0652f685be1d01bd321c7c.md) | 71 | `result-track:ce0652f685be1d01bd321c7c68bd80cf8b027450bc24e57799f37b1eb33407a0` |
| 10 | `theorem` | [sourceTreeNode_defaults_bridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/sourcetreenode-defaults-bridge--7da1a54a07d3d44b60327449.md) | 75 | `result-track:7da1a54a07d3d44b603274498b661943fe6ab1d11df08ab21dac676d56d5e687` |
| 11 | `theorem` | [noopVertex_is_default_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vertex/Variant4ce37db800201ddbdc2c025a9cb26e5071b4b0ab26cb457c566d40de32ddf461.lean/declarations/noopvertex-is-default-boundary--23ed3d7b83ba864f8844efe5.md) | 79 | `result-track:23ed3d7b83ba864f8844efe5dc6c2b46993eb9ab099203fd3206b9646c6eb842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
