# Verification target: GRWTSK.Algebra.UniversalAlgebra.Semantics.Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f8b2f9208a4ae8f4fd0a2e934bb14e0a65e1e8e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f8b2f9208a4ae8f4fd0a2e934bb14e0a65e1e8e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/bitfield--45003bb659edd1d042e2ee2d.md) | 26 | `declaration-track:45003bb659edd1d042e2ee2d6139f84afabe6e5979b86d5c86e4c5154adad722` |
| 2 | `def` | [BitField.bitAt](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/bitfield-bitat--ee4afba218533b708cdc1064.md) | 31 | `declaration-track:ee4afba218533b708cdc1064393dafefc2e246696aea01c0cc43a0e20f2a9e40` |
| 3 | `structure` | [GridCell](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/gridcell--f905f9b85fff8cd108f9eff7.md) | 35 | `declaration-track:f905f9b85fff8cd108f9eff7f455c49522c19d2394d25d159c9b2bdc897508cc` |
| 4 | `def` | [GridCell.rowMajorIndex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/gridcell-rowmajorindex--2556b594bb2a2ad4d630455d.md) | 41 | `declaration-track:2556b594bb2a2ad4d630455d64e581fbc322ebe1bf02bb7b947b30d6c3979258` |
| 5 | `structure` | [CarrierGrid](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/carriergrid--710945ee2187bb00515158b4.md) | 47 | `declaration-track:710945ee2187bb00515158b4e1fbd41cbd95c9a7ade06b237c504990169dbaca` |
| 6 | `abbrev` | [OwnershipMask](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/ownershipmask--1d27e7b031578f5ece687bbc.md) | 52 | `declaration-track:1d27e7b031578f5ece687bbc65225f71eb8dd6810d7b2cffaa51330402973e48` |
| 7 | `structure` | [FiniteRasterState](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/finiterasterstate--854ca42f19b61827cbf2c866.md) | 55 | `declaration-track:854ca42f19b61827cbf2c86689dc109e3dffb804710f79382e96a95d1ca67594` |
| 8 | `inductive` | [TriangleVertex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/trianglevertex--90d33c8656f0e0d31c9b53db.md) | 61 | `declaration-track:90d33c8656f0e0d31c9b53dbdf09a3a7be53e42a29de4a0a041febd7efe790d4` |
| 9 | `def` | [triangleSuccessor](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/trianglesuccessor--81793ccf8d0ea57e9189b798.md) | 68 | `declaration-track:81793ccf8d0ea57e9189b7989df3a6aa9dfeac592ffffcb88f76ac9ffddd97c7` |
| 10 | `theorem` | [triangleSuccessor_third_power](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/trianglesuccessor-third-power--c701fb7c0d93c86862ac8d90.md) | 81 | `result-track:c701fb7c0d93c86862ac8d909a114002f72721a5ebd5f85d66d64289549ad671` |
| 11 | `structure` | [BraidEndpointPresentation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/braidendpointpresentation--419814813d89ef4d1f41bd66.md) | 86 | `declaration-track:419814813d89ef4d1f41bd66e23d9ccff0defcd0b89a36a36407224f175417df` |
| 12 | `inductive` | [PipelineStage](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/pipelinestage--bac07a038d14285f94c3bb31.md) | 90 | `declaration-track:bac07a038d14285f94c3bb31bcd3ae04d7bd6c447d247d4f2a632e4fefb789d0` |
| 13 | `def` | [canonicalPipelineStages](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/canonicalpipelinestages--9c4a367b59f5b5a23fc8a5b2.md) | 101 | `declaration-track:9c4a367b59f5b5a23fc8a5b267a564489deb41fefeb55c499abbef7347bcf2d7` |
| 14 | `structure` | [PipelineTrace](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/pipelinetrace--28ed92f39615d2e52a4da80a.md) | 106 | `declaration-track:28ed92f39615d2e52a4da80a29cf74c4ab6cf51f4a1a7a68f73a76fb9225f11a` |
| 15 | `structure` | [ConfigurationInput](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/configurationinput--b737a4e35192822a2f9babbf.md) | 111 | `declaration-track:b737a4e35192822a2f9babbf3fe0804b23d665517220029100acb037c5a8ed0f` |
| 16 | `structure` | [DerivedConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/derivedconfiguration--704d8e478a392d780a504ee3.md) | 118 | `declaration-track:704d8e478a392d780a504ee3a5d77c4442dba4c08c91b1ec79ab3ab7d7901b7c` |
| 17 | `def` | [deriveConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/deriveconfiguration--50399f9bf1c915c88709a8f9.md) | 124 | `declaration-track:50399f9bf1c915c88709a8f97b13286b58f3da2d1192c445fb4f2da4cae24f34` |
| 18 | `theorem` | [derive_cells_per_axis](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/derive-cells-per-axis--cfdb2cf76abf7e1f83fcf27d.md) | 130 | `result-track:cfdb2cf76abf7e1f83fcf27dd29fc37324f999735074a4e7593f6560ae94e201` |
| 19 | `theorem` | [derive_raster_extent](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/derive-raster-extent--2accfed085af889b46314398.md) | 135 | `result-track:2accfed085af889b46314398c4f3797d9b98680436340d5ebe5c7b9dc2287066` |
| 20 | `abbrev` | [CarrierProduct](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/carrierproduct--29cdb04c92e639c66b7fbad8.md) | 143 | `declaration-track:29cdb04c92e639c66b7fbad80c53322320701dd58086f9cf0f9373c9ff08621c` |
| 21 | `def` | [firstProjection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/firstprojection--9dc4784df0bcb1cd0b6b0a02.md) | 146 | `declaration-track:9dc4784df0bcb1cd0b6b0a0279c0b150d0f8f185417dfa172133762dc8d95d8f` |
| 22 | `def` | [diagonalSection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/diagonalsection--7cafe8f51096ccc6bc59cd06.md) | 156 | `declaration-track:7cafe8f51096ccc6bc59cd0691c33bab3733869b2d7da362d1cb306b9bf82edb` |
| 23 | `def` | [graphPoint](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/graphpoint--2f654112e66e1f6a95876d43.md) | 160 | `declaration-track:2f654112e66e1f6a95876d4379f2e3c9e9564765c826b829ffd0785e960dacf1` |
| 24 | `def` | [LiesOnDiagonal](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/liesondiagonal--51d44343f4074923ea0ceec5.md) | 165 | `declaration-track:51d44343f4074923ea0ceec5f1d3e02e85c8bbe773d35fa4c3c9a382679e8187` |
| 25 | `def` | [LiesOnGraph](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/liesongraph--e7976c0079a3c1c380f99701.md) | 169 | `declaration-track:e7976c0079a3c1c380f99701769f145709bcab1a05f5ad305a9c1e669c5c03dd` |
| 26 | `def` | [FixedSet](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/fixedset--9f33872b468865f86ca19bac.md) | 174 | `declaration-track:9f33872b468865f86ca19bacaf17ca8711d1eb40acb1088839e8739360b641f3` |
| 27 | `abbrev` | [FixedPoint](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/fixedpoint--a39404ae55480b1c3970c50f.md) | 178 | `declaration-track:a39404ae55480b1c3970c50f9d993d834037e7522a106ef3b9a57998aa8636bd` |
| 28 | `abbrev` | [GraphDiagonalIntersection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/graphdiagonalintersection--661742e056272c893a3a8b83.md) | 182 | `declaration-track:661742e056272c893a3a8b839a72805b616a1af89acb7008d7516bd54d662d67` |
| 29 | `theorem` | [firstProjection_diagonalSection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/firstprojection-diagonalsection--b404088f3a116a12d8cc1eaf.md) | 187 | `result-track:b404088f3a116a12d8cc1eafbb6409ef2798c99874b60a8f8947e657c51dce89` |
| 30 | `theorem` | [firstProjection_comp_diagonalSection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/firstprojection-comp-diagonalsection--5730fdb37046641b4df24b2c.md) | 192 | `result-track:5730fdb37046641b4df24b2cae76e768485629a588f29d4fbfa93bbe6b6db125` |
| 31 | `theorem` | [graphPoint_liesOnGraph](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/graphpoint-liesongraph--c880fb133b79fa1c40f5be6a.md) | 198 | `result-track:c880fb133b79fa1c40f5be6a04d587ba5a54ed86ef86280ec0cb6a689e492d9c` |
| 32 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/mem-fixedset-iff-graphpoint-liesondiagonal--175aa805f2e9ca373452ceb5.md) | 204 | `result-track:175aa805f2e9ca373452ceb50c3f2509d9b55e15503a9fd8b786cb39ae899f96` |
| 33 | `def` | [fixedPointEquivGraphDiagonalIntersection](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/fixedpointequivgraphdiagonalintersection--c857bcd2b42c6c2551a6422e.md) | 216 | `declaration-track:c857bcd2b42c6c2551a6422e42b28842f2aa11384dfbf574ad5e5f7b3f8d78b7` |
| 34 | `theorem` | [fixedSet_identity](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/fixedset-identity--7f2ce3031aaa0da7ded5d3e8.md) | 234 | `result-track:7f2ce3031aaa0da7ded5d3e8f0a5eff6d724bcd1d2ad89376150d84c29d2fbf1` |
| 35 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/fixedpoint-eq-of-fixedset-eq-singleton--1fb0ca20abf9603b1e544d8b.md) | 242 | `result-track:1fb0ca20abf9603b1e544d8bbd961734a42bdffcf3bb85fb207d2d510196945d` |
| 36 | `structure` | [RepresentationRelation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/representationrelation--eaca5cb435387ac14c854b54.md) | 253 | `declaration-track:eaca5cb435387ac14c854b543086ea80fcef1888677a7ffd4448f934993b3d51` |
| 37 | `inductive` | [CorrespondenceStatus](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean/declarations/correspondencestatus--1f3d4c88328779407126d8fe.md) | 260 | `declaration-track:1f3d4c88328779407126d8fe99c724cf4f4c716fc0ebd2097a919600fbdf55ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
