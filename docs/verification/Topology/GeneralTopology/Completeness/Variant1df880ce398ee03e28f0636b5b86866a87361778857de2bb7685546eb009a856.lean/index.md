# Verification target: GRWTSK.Topology.GeneralTopology.Completeness.Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2`.

Source path: `GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean.json)

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
| 1 | `def` | [ofMemClosureImageCoeBounded](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/ofmemclosureimagecoebounded--8f5b4f68c67b54420e9b9013.md) | 44 | `declaration-track:8f5b4f68c67b54420e9b901305166369372e00f2dcda93ad7798c620626e9411` |
| 2 | `def` | [ofTendstoOfBoundedRange](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/oftendstoofboundedrange--41a986864df0bac529718891.md) | 62 | `declaration-track:41a986864df0bac5297188916487fac6896fe21809be21972576cccf0ce94c24` |
| 3 | `theorem` | [tendsto_of_tendsto_pointwise_of_cauchySeq](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/tendsto-of-tendsto-pointwise-of-cauchyseq--403587fe4737983d2236cfdf.md) | 71 | `result-track:403587fe4737983d2236cfdf858681dc6913a0ee3dbb041c209b5882d10b3605` |
| 4 | `theorem` | [isCompact_closure_image_coe_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/iscompact-closure-image-coe-of-bounded--3fd588898ddc0d6646b885ba.md) | 93 | `result-track:3fd588898ddc0d6646b885ba7fa31a1261ece57cc0ebf108468f8b5962ae4983` |
| 5 | `theorem` | [isCompact_image_coe_of_bounded_of_closed_image](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/iscompact-image-coe-of-bounded-of-closed-image--d4d47ab1ffff406537aa9948.md) | 105 | `result-track:d4d47ab1ffff406537aa9948343e8dfff343ee9a35f2a160d5a55b533f59c938` |
| 6 | `theorem` | [isClosed_image_coe_of_bounded_of_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/isclosed-image-coe-of-bounded-of-weak-closed--21e7715ea3f3dd2ca69ed153.md) | 115 | `result-track:21e7715ea3f3dd2ca69ed15393327769676db1f0fe028f35e180845720d7aed2` |
| 7 | `theorem` | [isCompact_image_coe_of_bounded_of_weak_closed](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/iscompact-image-coe-of-bounded-of-weak-closed--97daaa1a15252376515bad0e.md) | 126 | `result-track:97daaa1a15252376515bad0e31a00b30968ba8133dedb04b4750b637656936e0` |
| 8 | `theorem` | [is_weak_closed_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/is-weak-closed-closedball--41a4735f8ef1ce37fa4cbd77.md) | 135 | `result-track:41a4735f8ef1ce37fa4cbd770d8a3d81c7188dbba2cb65f7572254a021ac055c` |
| 9 | `theorem` | [isClosed_image_coe_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/isclosed-image-coe-closedball--3ec81e638700186d2afbea79.md) | 148 | `result-track:3ec81e638700186d2afbea79899610244d4798ddbf4f83d6ab4d3a88b0772066` |
| 10 | `theorem` | [isCompact_image_coe_closedBall](../../../../../mathematics/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/declarations/iscompact-image-coe-closedball--b8e831110dd5a363ff1fd817.md) | 156 | `result-track:b8e831110dd5a363ff1fd8176ef51089fc78d21bbbd8a8fad41e18b9739137df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
