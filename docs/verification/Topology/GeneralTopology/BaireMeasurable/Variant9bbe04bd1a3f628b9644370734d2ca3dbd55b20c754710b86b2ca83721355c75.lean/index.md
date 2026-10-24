# Verification target: GRWTSK.Topology.GeneralTopology.BaireMeasurable.Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd6ca04ffb5df2c1d8592ab406362becf2d17083",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd6ca04ffb5df2c1d8592ab406362becf2d17083`.

Source path: `GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.EventuallyMeasurable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coborder_mem_residual](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/coborder-mem-residual--b352145dae559b009ca9c48c.md) | 45 | `result-track:b352145dae559b009ca9c48cd8fb2c1fb331e7da71ca05c483c21a6980b01d52` |
| 2 | `theorem` | [closure_residualEq](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/closure-residualeq--f5ebc4f884ad643748b5e0cb.md) | 48 | `result-track:f5ebc4f884ad643748b5e0cb1007c3e1f5374340770caa2f25a7c675f870ae8d` |
| 3 | `def` | [BaireMeasurableSet](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/bairemeasurableset--a2277fed7c31ad11155cd143.md) | 59 | `declaration-track:a2277fed7c31ad11155cd1436d0be92ed8bf9ced5ea8bb68e6c9c6bde12e49da` |
| 4 | `theorem` | [of_mem_residual](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/of-mem-residual--35c04b83a355fb9d523fdf56.md) | 66 | `result-track:35c04b83a355fb9d523fdf567ec05b6d91753bcb98babfa9a46aaedd3485b965` |
| 5 | `theorem` | [_root_.MeasurableSet.baireMeasurableSet](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/root-measurableset-bairemeasurableset--2fd4df7404acaa6f045dae3f.md) | 69 | `result-track:2fd4df7404acaa6f045dae3fcefcdc0cde67a8c813cbd4cf47f94585f4fc92b5` |
| 6 | `theorem` | [_root_.IsOpen.baireMeasurableSet](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/root-isopen-bairemeasurableset--81ede51cd7618a0d107b9db1.md) | 74 | `result-track:81ede51cd7618a0d107b9db1759cb00d741e12160047a74bd093554181a219c0` |
| 7 | `theorem` | [compl](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/compl--aabd3b1c07a63dfbccaf2773.md) | 78 | `result-track:aabd3b1c07a63dfbccaf2773e8d7eb1cc728ad53d86af40679e6872a62e4ae72` |
| 8 | `theorem` | [of_compl](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/of-compl--94693f3f9789aebc92e5b0a4.md) | 80 | `result-track:94693f3f9789aebc92e5b0a418752242289c2415260cc9588b5555a5f62533ec` |
| 9 | `theorem` | [_root_.IsMeagre.baireMeasurableSet](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/root-ismeagre-bairemeasurableset--e7588d6681e782a43fca7d08.md) | 82 | `result-track:e7588d6681e782a43fca7d08abd5f89b78a50c799fce6008619df692453fc7fd` |
| 10 | `theorem` | [iUnion](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/iunion--58c2178d21b67b1e71ef2334.md) | 85 | `result-track:58c2178d21b67b1e71ef23340e1189e0377c4f0cc28ef6700cc5c4a1e3154445` |
| 11 | `theorem` | [biUnion](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/biunion--937540085607ab9cd1a719ac.md) | 89 | `result-track:937540085607ab9cd1a719accf74706484eb6adcd340c5bc659c450e8640a689` |
| 12 | `theorem` | [sUnion](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/sunion--c4afbf3865c1e8c389ee14ff.md) | 93 | `result-track:c4afbf3865c1e8c389ee14ff9d7b7ec1e88767e4c0afc909ba78896ce7487d7f` |
| 13 | `theorem` | [iInter](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/iinter--02ba0082e142652fb846bb51.md) | 97 | `result-track:02ba0082e142652fb846bb517c8602f7dc88d4c2c327574cb6aab5552520d5a1` |
| 14 | `theorem` | [biInter](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/biinter--9a26121a4e18f34a637fb22c.md) | 101 | `result-track:9a26121a4e18f34a637fb22c337a864a74f355597d95e1da8b4537ac43e7b5c1` |
| 15 | `theorem` | [sInter](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/sinter--a5d781211af3e17f43b5a084.md) | 105 | `result-track:a5d781211af3e17f43b5a084f955b6db43196f633047239f0128d4cd77838885` |
| 16 | `theorem` | [union](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/union--3ef3abf0506410a524803810.md) | 109 | `result-track:3ef3abf0506410a52480381051ea4af1507743b588397a7829ff5c9987a224e8` |
| 17 | `theorem` | [inter](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/inter--cdea6c574d87daa6c62b190b.md) | 113 | `result-track:cdea6c574d87daa6c62b190b21d5b7d96fb52f2e07e477d77328b09642e98eae` |
| 18 | `theorem` | [diff](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/diff--370e99fd4f61f4989c8df037.md) | 117 | `result-track:370e99fd4f61f4989c8df03744b575b2dcbe7176c8ae6eb263761fdfd0fb9869` |
| 19 | `theorem` | [congr](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/congr--7c96635c30a25e1f1fa146e6.md) | 121 | `result-track:7c96635c30a25e1f1fa146e686d8afdd764fb039c13a4a92aeaf6bcfd9ac53e9` |
| 20 | `theorem` | [MeasurableSet.residualEq_isOpen](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/measurableset-residualeq-isopen--1780b52804ce19003f0b8f3c.md) | 129 | `result-track:1780b52804ce19003f0b8f3c78b1c750be2faa7a0a8ddd31c318dfdd77f2d28c` |
| 21 | `theorem` | [BaireMeasurableSet.residualEq_isOpen](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/bairemeasurableset-residualeq-isopen--46485a0af34d78ab6fb9cea2.md) | 142 | `result-track:46485a0af34d78ab6fb9cea26183e50c3f2d7dbf38ad81f4bf1b2590df5bf510` |
| 22 | `theorem` | [BaireMeasurableSet.iff_residualEq_isOpen](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/bairemeasurableset-iff-residualeq-isopen--2bd95bfcb0d7a4c49d1250d1.md) | 150 | `result-track:2bd95bfcb0d7a4c49d1250d12eb918605279f196609bd9ac80b03e8b0168a43c` |
| 23 | `theorem` | [tendsto_residual_of_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/tendsto-residual-of-isopenmap--e14343242e459f8b50565708.md) | 160 | `result-track:e14343242e459f8b5056570885d19663c253b7ac5e768597526e552a18003f32` |
| 24 | `theorem` | [IsMeagre.preimage_of_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/ismeagre-preimage-of-isopenmap--66252bcf1faa1260439ce49a.md) | 167 | `result-track:66252bcf1faa1260439ce49ae71dfa7620c44ca6696be59ba985758c42fb3363` |
| 25 | `theorem` | [BaireMeasurableSet.preimage](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/bairemeasurableset-preimage--4b5bb5adbda0f56838c5f784.md) | 172 | `result-track:4b5bb5adbda0f56838c5f784227a7cca60413e8fdcb2e117833f7fa7a02ee5aa` |
| 26 | `theorem` | [Homeomorph.residual_map_eq](../../../../../mathematics/Topology/GeneralTopology/BaireMeasurable/Variant9bbe04bd1a3f628b9644370734d2ca3dbd55b20c754710b86b2ca83721355c75.lean/declarations/homeomorph-residual-map-eq--b7ffb7df433aa720e877139f.md) | 179 | `result-track:b7ffb7df433aa720e877139f3f29f6e64c4cf07e13bbbc3dfcb3f34068c12a1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
