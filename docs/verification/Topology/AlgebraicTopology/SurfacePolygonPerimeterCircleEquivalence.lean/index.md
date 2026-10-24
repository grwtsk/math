# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/cornerdiscretetopology--29de0a2815c2ec73d13c7f8f.md) | 72 | `declaration-track:29de0a2815c2ec73d13c7f8f407af42c4b7e942baa1167e7b3fac91ff7183eb7` |
| 2 | `instance` | [cornerDiscrete](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/cornerdiscrete--b1c0fd75ea22c9a050f0d0d5.md) | 75 | `declaration-track:b1c0fd75ea22c9a050f0d0d5264b049c3660d8c15d24d5876a3c2385af1e4bcd` |
| 3 | `theorem` | [handleOrdinal_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/handleordinal-injective--9f72e5444ab32748c87018c4.md) | 79 | `result-track:9f72e5444ab32748c87018c47e1259f8d30a8869611cb19cccbaa9be14ad0463` |
| 4 | `theorem` | [directedSideOrdinal_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/directedsideordinal-injective--9a5dee4d31c692c65df79bc6.md) | 110 | `result-track:9a5dee4d31c692c65df79bc6270cafca83ed310d9da90d3bbaef7fb9d1b5e14a` |
| 5 | `def` | [handleOfOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/handleofordinal--112e9300a15d37730006f7e6.md) | 128 | `declaration-track:112e9300a15d37730006f7e63c8f43b530cbe76cba51b1f0ca1e2a02f4396b16` |
| 6 | `theorem` | [handleOrdinal_handleOfOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/handleordinal-handleofordinal--9cce2c0fd42d52d5647f53ad.md) | 136 | `result-track:9cce2c0fd42d52d5647f53ad2def378d953e239f75b82eca4c685d837ed072de` |
| 7 | `def` | [cornerOfOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/cornerofordinal--7766de60813c84ca0615129e.md) | 147 | `declaration-track:7766de60813c84ca0615129ef0c67b69b6f135c140186275a02e65b7ca9354b1` |
| 8 | `theorem` | [directedSideOrdinal_cornerOfOrdinal](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/directedsideordinal-cornerofordinal--93c6838f774dbd1a69286eb7.md) | 154 | `result-track:93c6838f774dbd1a69286eb7fa779c1bf7c1f74da54a9814199bfa96dbc69f1c` |
| 9 | `def` | [sourceRealAngularAddress](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/sourcerealangularaddress--1d77cb106b04fca24688ecc0.md) | 164 | `declaration-track:1d77cb106b04fca24688ecc0ccd7b1ea0928b1de2ab3c1e0ad7ab5c3dba6133a` |
| 10 | `theorem` | [sourceAngularAddress_eq_coe_real](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/sourceangularaddress-eq-coe-real--7e74778ed46ae86ad73a8f9a.md) | 167 | `result-track:7e74778ed46ae86ad73a8f9a84df6cb6a03b0de63a056abbe11839fa83536025` |
| 11 | `def` | [nextDirectedCorner](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/nextdirectedcorner--02d5160c1f0aac6f9d08dce0.md) | 176 | `declaration-track:02d5160c1f0aac6f9d08dce03c221a824ef937d8f0536dfca9279d87d636dcdd` |
| 12 | `theorem` | [perimeterProjection_one_eq_nextDirectedCorner](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterprojection-one-eq-nextdirectedcorner--e52ff2952b62d9af28fe08a8.md) | 192 | `result-track:e52ff2952b62d9af28fe08a86b6efeb8bee45f829941711922da23ac117401e7` |
| 13 | `def` | [canonicalBoundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/canonicalboundarypoint--b2d2eb570792a132e69989fa.md) | 210 | `declaration-track:b2d2eb570792a132e69989fa4a707a3f0161444d250bd202eba5ec00062099b8` |
| 14 | `theorem` | [canonicalBoundaryPoint_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/canonicalboundarypoint-projection--90304e0b1993e9a776bc9e1b.md) | 220 | `result-track:90304e0b1993e9a776bc9e1b37a662aaafca464b3f94526bd859b5b605281f8a` |
| 15 | `theorem` | [canonicalBoundaryPoint_parameter_lt_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/canonicalboundarypoint-parameter-lt-one--d8c95fb9223659aed1268463.md) | 233 | `result-track:d8c95fb9223659aed1268463ca6cdaf4f816b39b2fd2f549a4947502dbdd4284` |
| 16 | `theorem` | [sourceAngularAddress_canonical](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/sourceangularaddress-canonical--b9b7776b5d1bc3c54a274d93.md) | 249 | `result-track:b9b7776b5d1bc3c54a274d93697b30845813a86054a880904ce476cab29d7a39` |
| 17 | `theorem` | [canonicalRealAngularAddress_mem_Ico](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/canonicalrealangularaddress-mem-ico--54b207c299c616282c25f07e.md) | 259 | `result-track:54b207c299c616282c25f07ec1d70a496efcf97a76efb75630a96370f204acc1` |
| 18 | `theorem` | [boundaryPoint_eq_of_realAngularAddress_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/boundarypoint-eq-of-realangularaddress-eq--191e29b599bbfa56d8e6fbe3.md) | 287 | `result-track:191e29b599bbfa56d8e6fbe303331d205cce65d6b04dbf12c225af7f84ca57a3` |
| 19 | `theorem` | [exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/exists-boundarypoint-realangularaddress-eq-of-mem-ico--512b03be9130ae72223fc70a.md) | 344 | `result-track:512b03be9130ae72223fc70a0de62e293270a57c7389781533e50e521689801c` |
| 20 | `theorem` | [perimeterAngle_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterangle-injective--99dbc2da290baf6bf66b7737.md) | 383 | `result-track:99dbc2da290baf6bf66b77374d29536e85268de41ad61fdd46f8f887dcfb1e18` |
| 21 | `theorem` | [perimeterAngle_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterangle-surjective--cafeb910f57a02353e60661e.md) | 442 | `result-track:cafeb910f57a02353e60661e202c792e00de436c60644dd51247596be2d7a919` |
| 22 | `theorem` | [perimeterAngle_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterangle-bijective--c4dd469d5f4a06890b9c46cb.md) | 456 | `result-track:c4dd469d5f4a06890b9c46cb7959644a61356d8d23200ad7f39c7b1955ca2043` |
| 23 | `theorem` | [perimeterAngle_eq_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterangle-eq-iff--3753f0646782159195639931.md) | 460 | `result-track:3753f06467821591956399311da49a106191e5096d0e7bb6fc8b0d443a96478b` |
| 24 | `theorem` | [perimeterProjection_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterprojection-surjective--8db959a8cb19697201508c28.md) | 466 | `result-track:8db959a8cb19697201508c28b24b3fcf07b93eb0925dc33c0bbb66e67bf52370` |
| 25 | `theorem` | [unpairedPerimeter_isCompact](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/unpairedperimeter-iscompact--9c8aaee8d940e159b9f4d8ed.md) | 475 | `result-track:9c8aaee8d940e159b9f4d8ed9ab555f4aaa06bfe4cebda87faaabe50f76f3bbf` |
| 26 | `theorem` | [unpairedPerimeterCompactSpace](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/unpairedperimetercompactspace--2ca517dc909161b27473b5b9.md) | 490 | `result-track:2ca517dc909161b27473b5b92744f1caff518c19f4dbb70afc4ae54c1165ee6f` |
| 27 | `def` | [perimeterCircleHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimetercirclehomeomorph--55138311ebd6002889d91235.md) | 496 | `declaration-track:55138311ebd6002889d91235755261de2d7be25f15f006c513e82d1cb6d1ae1a` |
| 28 | `theorem` | [perimeterCircleHomeomorph_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimetercirclehomeomorph-apply--4a8ba00ab9af7fbf57a8b02a.md) | 505 | `result-track:4a8ba00ab9af7fbf57a8b02a961bc80ec8b642bf32328560dd9140cb6ee0e571` |
| 29 | `def` | [perimeterUnitCircleHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterunitcirclehomeomorph--4641793048f7b7b9dd826ddb.md) | 511 | `declaration-track:4641793048f7b7b9dd826ddbe2b5008881440f764aa2587403bb8e82536ff667` |
| 30 | `theorem` | [perimeterUnitCircleHomeomorph_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterunitcirclehomeomorph-apply--cc67becdf63d446a795cc9be.md) | 515 | `result-track:cc67becdf63d446a795cc9bef435d54ccb9daa6a8222101778567c3071368628` |
| 31 | `theorem` | [perimeterUnitAngle_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/perimeterunitangle-bijective--ca08ea41d7f13bcee2e680ca.md) | 522 | `result-track:ca08ea41d7f13bcee2e680ca04d572475380b7fcc96b3f3489e1863a524b3ea0` |
| 32 | `def` | [genusTwoPerimeterCircleHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/genustwoperimetercirclehomeomorph--2bd5a5a1c8ac21a3ebf2fc7a.md) | 536 | `declaration-track:2bd5a5a1c8ac21a3ebf2fc7a57924b0e019e56b3fc5f3835d1222fde2c3eb5b1` |
| 33 | `def` | [genusThreePerimeterCircleHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/declarations/genusthreeperimetercirclehomeomorph--bbaa6f6cd0703d7e7cf33071.md) | 543 | `declaration-track:bbaa6f6cd0703d7e7cf330710e7f26e0d3da4a92688e625c92049b17f9b485f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
