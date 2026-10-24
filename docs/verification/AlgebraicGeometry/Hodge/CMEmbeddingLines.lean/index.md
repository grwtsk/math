# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85d240717458e03ed3953a955709a9ae71e794f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85d240717458e03ed3953a955709a9ae71e794f`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance`](../../../../mathematics/AlgebraicGeometry/Hodge/CMFourBalance.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WeightOneHodgeType](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/weightonehodgetype--443f4d65bb453d10cdecd292.md) | 18 | `declaration-track:443f4d65bb453d10cdecd292637813b1513b70c8405516106140209767ec7d55` |
| 2 | `def` | [pIndex](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/pindex--0f52b5334a8dee6f9e343c60.md) | 23 | `declaration-track:0f52b5334a8dee6f9e343c600ac3f740773f451817913f45448556a7e8bd7fdd` |
| 3 | `def` | [qIndex](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/qindex--72129340845ea9efaca57e61.md) | 27 | `declaration-track:72129340845ea9efaca57e6199675cb9e9233135995f4e32eff16bb346f9cc89` |
| 4 | `def` | [typeOfSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/typeofsign--ba8388f864039f75c9c8a4fa.md) | 31 | `declaration-track:ba8388f864039f75c9c8a4fa0f18031efe5f16b2fb4a161ea19431aea2d17796` |
| 5 | `theorem` | [pIndex_typeOfSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/pindex-typeofsign--45f27d5fbedfbbdb8db0f757.md) | 35 | `result-track:45f27d5fbedfbbdb8db0f75789442d927103cd97d22711d68df401fe0fab8ab7` |
| 6 | `theorem` | [qIndex_typeOfSign_of_isSign](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/qindex-typeofsign-of-issign--f5fe7c0b06232e9e614fb853.md) | 39 | `result-track:f5fe7c0b06232e9e614fb8539d0526f8f41508e1111f33eb5dc5308510904a92` |
| 7 | `structure` | [EmbeddingLineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/embeddinglinerealization--d75e1bc669b3f66707248e43.md) | 50 | `declaration-track:d75e1bc669b3f66707248e4398575953bd7d7e847d2442249cd387eb61854f41` |
| 8 | `structure` | [LinearEmbeddingLineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/linearembeddinglinerealization--478f5955803147657b10cf29.md) | 64 | `declaration-track:478f5955803147657b10cf2932ecd66f6888b92f8da8718dfc44c865822711ff` |
| 9 | `def` | [LinearEmbeddingLineRealization.toEmbeddingLineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/linearembeddinglinerealization-toembeddinglinerealization--6e31c20ff186abc92f7bc04d.md) | 76 | `declaration-track:6e31c20ff186abc92f7bc04ddf45e348a09791f6b3d1bf0486927631ff9042e7` |
| 10 | `theorem` | [EmbeddingLineRealization.pIndex_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/embeddinglinerealization-pindex-eq--35addacb72b1e69da0c8144d.md) | 90 | `result-track:35addacb72b1e69da0c8144d215fb77a92315f196f48bd4f94e5317caf977c9f` |
| 11 | `theorem` | [EmbeddingLineRealization.qIndex_eq](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/embeddinglinerealization-qindex-eq--484aa6d7ea1dbd87603d6d5b.md) | 97 | `result-track:484aa6d7ea1dbd87603d6d5b924a11bb237ddac2bf86eba86ed17bd18de11e81` |
| 12 | `theorem` | [fourFactor_bidegree_two_two](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/fourfactor-bidegree-two-two--28244f8f4137f51a315d0b98.md) | 104 | `result-track:28244f8f4137f51a315d0b98a45a8d36e01ae5a997cf9330c87e59dd98384d69` |
| 13 | `theorem` | [fourFactor_allCoordinates_bidegree_two_two](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/fourfactor-allcoordinates-bidegree-two-two--14f7763484ab4b3429cc1331.md) | 127 | `result-track:14f7763484ab4b3429cc1331f615bf4f07049c0ccfaf06b1e6653a2fd394ff21` |
| 14 | `theorem` | [linearFourFactor_allCoordinates_bidegree_two_two](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/declarations/linearfourfactor-allcoordinates-bidegree-two-two--b31b166ceca85b4a0bbd2cd6.md) | 151 | `result-track:b31b166ceca85b4a0bbd2cd60417d8e842a0f24d731200d8953b7b7bdf2bd857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
