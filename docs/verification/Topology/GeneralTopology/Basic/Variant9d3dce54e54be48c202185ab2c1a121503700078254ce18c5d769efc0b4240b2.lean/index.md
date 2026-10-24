# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58f395a4c479e254b20ff7e3d40997094ea96bee`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean.json)

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
| 1 | `lemma` | [CompactlySupportedContinuousMap.monotone_of_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/compactlysupportedcontinuousmap-monotone-of-nnreal--5a44ea723f364e9b75393666.md) | 49 | `result-track:5a44ea723f364e9b753936660af1be17bf3c28837978d9736392c191c288c26e` |
| 2 | `def` | [rieszContentAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux--f9f84898e0175135f3eaf3f0.md) | 61 | `declaration-track:f9f84898e0175135f3eaf3f0914f361689e0f4e7c31df6fb7685fb1ce83d4158` |
| 3 | `theorem` | [rieszContentAux_image_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux-image-nonempty--cdbca41e25200e3a1b069bdf.md) | 70 | `result-track:cdbca41e25200e3a1b069bdff9ae0f095394453219bcced8d02d60524e20ac27` |
| 4 | `theorem` | [rieszContentAux_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux-mono--2c6dc506936c0720ae47437c.md) | 93 | `result-track:2c6dc506936c0720ae47437cbbefaf5e9e3a355afaacc8f56994c238b349c22e` |
| 5 | `theorem` | [rieszContentAux_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux-le--be433b0b9a336b344dd0661e.md) | 105 | `result-track:be433b0b9a336b344dd0661e6f91e52a515a19b5974801ee3b946ee35a5b9955` |
| 6 | `theorem` | [exists_lt_rieszContentAux_add_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/exists-lt-rieszcontentaux-add-pos--191ba241a043a2eb2705e86a.md) | 114 | `result-track:191ba241a043a2eb2705e86a0a4bcf97d8185db2ffec2d1f7608d7cbef960417` |
| 7 | `theorem` | [rieszContentAux_sup_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux-sup-le--ea7e1873ce793f6a4caf5525.md) | 126 | `result-track:ea7e1873ce793f6a4caf552582c8849ef9cf826d2f73e8d35340f743baa15657` |
| 8 | `lemma` | [exists_continuous_add_one_of_isCompact_nnreal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/exists-continuous-add-one-of-iscompact-nnreal--17b53114df01bfbb244c4066.md) | 153 | `result-track:17b53114df01bfbb244c406697163b24fbdc65c28e3d02fcadade702d7515798` |
| 9 | `lemma` | [rieszContentAux_union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontentaux-union--fc5b9245d8382eb43413eff6.md) | 234 | `result-track:fc5b9245d8382eb43413eff6c7196f79c85f8c08ce5755ff7440e0216607bf2f` |
| 10 | `def` | [rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontent--cb2e2a384a54956710bd38ab.md) | 275 | `declaration-track:cb2e2a384a54956710bd38ab36ca2aadf3f58e0225c9230d62c9c487ceb32a39` |
| 11 | `lemma` | [rieszContent_ne_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszcontent-ne-top--f0442f44d4efc2df03edfdea.md) | 281 | `result-track:f0442f44d4efc2df03edfdea198d37d8a99a077409fa284967475321c0e9bad5` |
| 12 | `lemma` | [contentRegular_rieszContent](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/contentregular-rieszcontent--1b3b1691ac8d805a174fbc3b.md) | 285 | `result-track:1b3b1691ac8d805a174fbc3bd935500acd76f0040acdc8ec25e99dd31d0e438b` |
| 13 | `def` | [rieszMeasure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/rieszmeasure--74fcf7514a5d41f50c1715ed.md) | 324 | `declaration-track:74fcf7514a5d41f50c1715ed1d9a091236d0d1fb0331d562adadda9bc026eac4` |
| 14 | `lemma` | [le_rieszMeasure_of_isCompact_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/le-rieszmeasure-of-iscompact-tsupport-subset--d2f6fc876cdf4d2b03e14eb6.md) | 327 | `result-track:d2f6fc876cdf4d2b03e14eb6e7f6e2a070f84f160afcbf2554d7e09cee921812` |
| 15 | `lemma` | [le_rieszMeasure_of_tsupport_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/declarations/le-rieszmeasure-of-tsupport-subset--f898773f4bf6ece1a8850f4e.md) | 345 | `result-track:f898773f4bf6ece1a8850f4e8101e5376185b2ac3b0a11ce80fca9790d24990f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
