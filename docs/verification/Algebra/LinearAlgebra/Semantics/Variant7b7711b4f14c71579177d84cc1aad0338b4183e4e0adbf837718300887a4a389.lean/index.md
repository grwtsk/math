# Verification target: GRWTSK.Algebra.LinearAlgebra.Semantics.Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 3; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/bitfield--a56aa741d781bd8da9e1fa62.md) | 19 | `declaration-track:a56aa741d781bd8da9e1fa62cb6872432fa32b63ad800fb97e3a1ffa19df46de` |
| 2 | `def` | [BitField.bitAt](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/bitfield-bitat--3d5e0ea354dfe0272887d828.md) | 24 | `declaration-track:3d5e0ea354dfe0272887d828ccbc5a70afb3f20a81a7f2c5661fba7eeb0c8374` |
| 3 | `structure` | [CarrierGrid](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/carriergrid--072dc53fc0a04ccb01716408.md) | 28 | `declaration-track:072dc53fc0a04ccb01716408051bb2fcdf7591fb20109edaeb3560f69b65a1db` |
| 4 | `abbrev` | [OwnershipMask](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/ownershipmask--062ed37a307a1a07888195b2.md) | 33 | `declaration-track:062ed37a307a1a07888195b2ad2a935c1a0f1178c0f279a75e8020f253c40c1c` |
| 5 | `structure` | [FiniteRasterState](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/finiterasterstate--03cda2fe7c5cf87552a002f0.md) | 36 | `declaration-track:03cda2fe7c5cf87552a002f05a1fce7231c6d1d0f577b504bcfdefd7d3e0d70c` |
| 6 | `inductive` | [TriangleVertex](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/trianglevertex--de21bdaeff488c18c3ee3275.md) | 42 | `declaration-track:de21bdaeff488c18c3ee32755b5c90cfff85643b2219168b24a9d27fc685245d` |
| 7 | `def` | [triangleSuccessor](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/trianglesuccessor--ec575903e20c8d428e2dace4.md) | 49 | `declaration-track:ec575903e20c8d428e2dace4dd1e8f450fe29bf6569bda41878d1a5160f7078f` |
| 8 | `theorem` | [triangleSuccessor_third_power](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/trianglesuccessor-third-power--9cf6b6a820323592b0fc5b6c.md) | 62 | `result-track:9cf6b6a820323592b0fc5b6c0401aa8763db92e774e628f19409638ba5fbafef` |
| 9 | `structure` | [BraidEndpointPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/braidendpointpresentation--a9a399cec58e2b605f4d79be.md) | 67 | `declaration-track:a9a399cec58e2b605f4d79be88cf028b0c65ee188ab4fe65d7f9bfddb01812e5` |
| 10 | `inductive` | [PipelineStage](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/pipelinestage--edab32d07b9f427ae259ee52.md) | 71 | `declaration-track:edab32d07b9f427ae259ee523d59bf7fb912ce162f483da13f241c20463f06cb` |
| 11 | `def` | [canonicalPipelineStages](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/canonicalpipelinestages--ca0ed542db2504eaf76ff4b0.md) | 82 | `declaration-track:ca0ed542db2504eaf76ff4b088d73b354e0db1fc5ca951a5cde72c3038803d41` |
| 12 | `structure` | [PipelineTrace](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/pipelinetrace--ced7c896958a8ad724a8f854.md) | 87 | `declaration-track:ced7c896958a8ad724a8f85464615cf96f1a97c5d6acc4d766d7fe5548069170` |
| 13 | `structure` | [ConfigurationInput](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/configurationinput--42de098340ad566da3a31f81.md) | 92 | `declaration-track:42de098340ad566da3a31f81d0602f853eec7832b346f9527d8738a811102df7` |
| 14 | `structure` | [DerivedConfiguration](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/derivedconfiguration--5cbf61f776521b5a7386c494.md) | 99 | `declaration-track:5cbf61f776521b5a7386c49495d617c170caadf7725d335a08e258c33aed8e60` |
| 15 | `def` | [deriveConfiguration](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/deriveconfiguration--fdd27069aeff99e5657debbb.md) | 105 | `declaration-track:fdd27069aeff99e5657debbb34eec4ea0fbd5ff43503b80fad81894ea579c01e` |
| 16 | `theorem` | [derive_cells_per_axis](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/derive-cells-per-axis--769bb053d74c9cd4479fee17.md) | 111 | `result-track:769bb053d74c9cd4479fee179ea5063d9aced9688f7c9b87cef4576ec565f867` |
| 17 | `theorem` | [derive_raster_extent](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/derive-raster-extent--725da7ed906db8a00d6c3958.md) | 116 | `result-track:725da7ed906db8a00d6c3958986b1048cca1cfaad2ebdead11f5875ce4789412` |
| 18 | `abbrev` | [CarrierProduct](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/carrierproduct--88eabe1522a748243e5a2d08.md) | 124 | `declaration-track:88eabe1522a748243e5a2d085d280d37e60e98f766d27d28e132a2a1e1949457` |
| 19 | `def` | [firstProjection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/firstprojection--8a473f7fcd840367ae8990f4.md) | 127 | `declaration-track:8a473f7fcd840367ae8990f47f10e8a7cd543dd5788846ee8758d0e4703a289b` |
| 20 | `def` | [diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/diagonalsection--0961e8128a5e43d126836ab8.md) | 137 | `declaration-track:0961e8128a5e43d126836ab8a784d7dc26359a23389bc6b34fb316d57ce524d3` |
| 21 | `def` | [graphPoint](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/graphpoint--1195dee51fd66e403f33591f.md) | 141 | `declaration-track:1195dee51fd66e403f33591f3c9c14c4927439bfee8306cb253961cd517213f2` |
| 22 | `def` | [LiesOnDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/liesondiagonal--86fcaf4638f9fcb628fb1a0e.md) | 146 | `declaration-track:86fcaf4638f9fcb628fb1a0e315395f6e1423072a9e85bf6bc3b61968bb56d52` |
| 23 | `def` | [LiesOnGraph](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/liesongraph--8f063da7cca0da990c09db5b.md) | 150 | `declaration-track:8f063da7cca0da990c09db5b4e6dad703c7599f15f438afa12b276b2dd53771e` |
| 24 | `def` | [FixedSet](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/fixedset--c3320bf088d92a45176d1456.md) | 155 | `declaration-track:c3320bf088d92a45176d1456d611672109315e8222c49ab864fc276568a7b91a` |
| 25 | `abbrev` | [FixedPoint](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/fixedpoint--0ce75da15222e8ee45955970.md) | 159 | `declaration-track:0ce75da15222e8ee459559707ec58455fad648264556f0359c55f8a12fa5e76b` |
| 26 | `abbrev` | [GraphDiagonalIntersection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/graphdiagonalintersection--f6a96309e6218c291a9b00e9.md) | 163 | `declaration-track:f6a96309e6218c291a9b00e944de8b1c14b3b274d0313d276e31133675ce78f3` |
| 27 | `theorem` | [firstProjection_diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/firstprojection-diagonalsection--c574959d86e75e70c1ca3546.md) | 168 | `result-track:c574959d86e75e70c1ca3546cc875e33c6b6cd1f857aa02148c3b08fda9332e4` |
| 28 | `theorem` | [firstProjection_comp_diagonalSection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/firstprojection-comp-diagonalsection--ef92027dd9ea986447dca404.md) | 173 | `result-track:ef92027dd9ea986447dca40437a6deef8579817e57f2ef06bb2d00ae54cacdbf` |
| 29 | `theorem` | [graphPoint_liesOnGraph](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/graphpoint-liesongraph--52211fc98e0f4b178f592e21.md) | 179 | `result-track:52211fc98e0f4b178f592e2150f13afdccefe641fe5c953e0d99dec13069b467` |
| 30 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/mem-fixedset-iff-graphpoint-liesondiagonal--70d2bb3cdd00fe427d52dc8e.md) | 185 | `result-track:70d2bb3cdd00fe427d52dc8e8ea40025a055de9613eef51091b92ece9a7f606c` |
| 31 | `def` | [fixedPointEquivGraphDiagonalIntersection](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/fixedpointequivgraphdiagonalintersection--32721475a0f988c2f7c8d19a.md) | 197 | `declaration-track:32721475a0f988c2f7c8d19a4430fa261ae8723a181fa628b007625531ef2b53` |
| 32 | `theorem` | [fixedSet_identity](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/fixedset-identity--566c311077b55fcf13b5302f.md) | 215 | `result-track:566c311077b55fcf13b5302f26a4de7993e940f1fc049567f46ed1bff4d06950` |
| 33 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/fixedpoint-eq-of-fixedset-eq-singleton--5f36c46ba3f1c0182e905f21.md) | 223 | `result-track:5f36c46ba3f1c0182e905f21cb3fd10f01c0fc97ae58ff0836e3d0a721229e77` |
| 34 | `theorem` | [mem_fixedSet_linear_iff_mem_ker_id_sub](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/mem-fixedset-linear-iff-mem-ker-id-sub--18305177cdf9394081a27c03.md) | 238 | `result-track:18305177cdf9394081a27c03e8777d2fb372fd56061a908321aa68e455f40e52` |
| 35 | `structure` | [RepresentationRelation](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/representationrelation--144595a0b665f362f357a1e0.md) | 248 | `declaration-track:144595a0b665f362f357a1e013ee55bd9d14e6b8800d0f29a570eea5660b3169` |
| 36 | `inductive` | [CorrespondenceStatus](../../../../../mathematics/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/declarations/correspondencestatus--5e06f20422d1150ef09e71fe.md) | 255 | `declaration-track:5e06f20422d1150ef09e71feeffb3cc98e3a1035b8e72eca7e497dec00df8b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
