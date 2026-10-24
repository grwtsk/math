# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pointwise.Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660f6fd44d69453eb51e9bd7411d95f16b3d3226",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660f6fd44d69453eb51e9bd7411d95f16b3d3226`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseVAdd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwisevadd--0e7b49ebada8c6551b889a3e.md) | 40 | `declaration-track:0e7b49ebada8c6551b889a3ef0a675a5318b3e1a9bd019d4902db29453785ebe` |
| 2 | `lemma` | [coe_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/coe-pointwise-vadd--feb248a757132a5e354cbcd3.md) | 45 | `result-track:feb248a757132a5e354cbcd36d67238ccb0b98af67bc68276eae47c31022a7c2` |
| 3 | `def` | [pointwiseAddAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwiseaddaction--6257acd4e86c943a09db800b.md) | 52 | `declaration-track:6257acd4e86c943a09db800bd135390e56b26e2a8ae71b4c7b2259404be7233b` |
| 4 | `theorem` | [pointwise_vadd_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwise-vadd-eq-map--474cf16e69bb39c6bfb90057.md) | 57 | `result-track:474cf16e69bb39c6bfb9005775ed089606199eaae4cda4105a3ce27e8d613c2b` |
| 5 | `theorem` | [vadd_mem_pointwise_vadd_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/vadd-mem-pointwise-vadd-iff--74cad91ca1a96e41d63c5d76.md) | 61 | `result-track:74cad91ca1a96e41d63c5d764de921e2fbf11a21428b288c5c9dfe673b055ff1` |
| 6 | `theorem` | [pointwise_vadd_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwise-vadd-bot--4ec0c5866ac9a41e27bdfcf8.md) | 65 | `result-track:4ec0c5866ac9a41e27bdfcf872b679e40d7568809afb60635e54eec6ec25a3e8` |
| 7 | `lemma` | [pointwise_vadd_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwise-vadd-top--d375a782642736df9cfe24fe.md) | 68 | `result-track:d375a782642736df9cfe24fe78c8400cee74ddd5ebb8ba7701ae1e3a65bda6b1` |
| 8 | `theorem` | [pointwise_vadd_direction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwise-vadd-direction--bf70fadc39f2e9a6957cdff0.md) | 71 | `result-track:bf70fadc39f2e9a6957cdff0bf78ccd5faedee5033a8fc1729063579a152afd2` |
| 9 | `theorem` | [pointwise_vadd_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwise-vadd-span--c9c98b0fbf5cebb92ba26fef.md) | 76 | `result-track:c9c98b0fbf5cebb92ba26fef9af7336d9f927162b564ab7718b56c188ec36bc9` |
| 10 | `theorem` | [map_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/map-pointwise-vadd--70779142ccd87ba02ae5cfc2.md) | 79 | `result-track:70779142ccd87ba02ae5cfc2abe95d5bd2d963cc43a7c5031ca3576ae14e1a4a` |
| 11 | `def` | [pointwiseSMul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/pointwisesmul--aa05a873be2143d7c8e43cfa.md) | 98 | `declaration-track:aa05a873be2143d7c8e43cfac6e68c32b6c714da87bd0434d393ae3d9651b822` |
| 12 | `lemma` | [coe_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/coe-smul--16612472bb296cd6a1f66cba.md) | 104 | `result-track:16612472bb296cd6a1f66cba2949f723fa1900a98c34c4761dcfd692f2037ab8` |
| 13 | `lemma` | [smul_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-eq-map--195f63d5d88f303b4017b5a1.md) | 106 | `result-track:195f63d5d88f303b4017b5a1daa3cbf802e892392ab1c24208875cb322006361` |
| 14 | `lemma` | [smul_mem_smul_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-mem-smul-iff--0c991e09d9ce6c545313d529.md) | 109 | `result-track:0c991e09d9ce6c545313d5297a7eaadeba2c551d4cca567d95bc723e02a74d15` |
| 15 | `lemma` | [smul_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-bot--f8d217425709d75421a48281.md) | 112 | `result-track:f8d217425709d75421a48281e1392eb78157346192ad44a15dff6b6644f1ff93` |
| 16 | `lemma` | [smul_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-span--b56e97016eb29c1dbae181e0.md) | 115 | `result-track:b56e97016eb29c1dbae181e087c9c3786c395e865bc00a0971f57400e57b8a91` |
| 17 | `def` | [mulAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/mulaction--df3ecab19aef09f2060cbe73.md) | 131 | `declaration-track:df3ecab19aef09f2060cbe734c955a620f461d77ea34aff97f01349eac3b94b2` |
| 18 | `lemma` | [smul_mem_smul_iff_of_isUnit](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-mem-smul-iff-of-isunit--4ddb4c93e51c98978b8b31a8.md) | 136 | `result-track:4ddb4c93e51c98978b8b31a86cef8049230e96a603bc2b8a3ddd1f0c7623d264` |
| 19 | `lemma` | [smul_mem_smul_iff₀](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-mem-smul-iff--a9dfbe38944a8e3a4b4f1a7f.md) | 139 | `result-track:a9dfbe38944a8e3a4b4f1a7f9059d0636e81aad5355b21331978f24a0347faa4` |
| 20 | `lemma` | [smul_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/smul-top--21d0d9be576b489af04c4e2a.md) | 143 | `result-track:21d0d9be576b489af04c4e2a33b33a7449a60f301dab5d4bf29dd0f94261e875` |
| 21 | `lemma` | [direction_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean/declarations/direction-smul--d5cfeb27a34424d0f3f4c4a6.md) | 154 | `result-track:d5cfeb27a34424d0f3f4c4a61b2ed5a2f8586714c724fc3436abea1906076a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
