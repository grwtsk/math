# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleBijection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [handleOrdinalEquiv](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/handleordinalequiv--60cbbc5e99a3e38473e1696c.md) | 70 | `declaration-track:60cbbc5e99a3e38473e1696c6d6720c1d896e5717881727123c1f7edc0e366ad` |
| 2 | `def` | [directedSideOrdinalEquiv](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/directedsideordinalequiv--bffd89ecbd68af01e44ce852.md) | 76 | `declaration-track:bffd89ecbd68af01e44ce85280efe27378d971841d9169eaeff46d053e829488` |
| 3 | `theorem` | [handleOrdinalEquiv_val](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/handleordinalequiv-val--ad5f9c0b8790bc36cc51c4a5.md) | 84 | `result-track:ad5f9c0b8790bc36cc51c4a5e72e1c5eab0d7e73bada003aacf3e5e7a793cffd` |
| 4 | `theorem` | [directedSideOrdinalEquiv_val](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/directedsideordinalequiv-val--5bc71caf689bfd8ed348f9b7.md) | 97 | `result-track:5bc71caf689bfd8ed348f9b763f7a064b4ea256e528d40117914bcac5812deea` |
| 5 | `theorem` | [directedSideOrdinal_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/directedsideordinal-injective--e8d5c81646e06a14670e8031.md) | 109 | `result-track:e8d5c81646e06a14670e80313c3bf133a9c1f7589303a8dea20a274f9756389c` |
| 6 | `theorem` | [directedSideOrdinal_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/directedsideordinal-surjective--46cf78b5211f959dd7781872.md) | 118 | `result-track:46cf78b5211f959dd7781872ea57008d6c922545fc8d0e5a0e9552a61f601701` |
| 7 | `def` | [successorSide](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/successorside--e0524180a77ad99e11f05442.md) | 128 | `declaration-track:e0524180a77ad99e11f0544281074b5cf96736deaacd144c1001256f92ad9370` |
| 8 | `theorem` | [successorSide_perimeter_seam](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/successorside-perimeter-seam--c00b6c8abafe26b4dedb5815.md) | 138 | `result-track:c00b6c8abafe26b4dedb5815f79b8ff9028ca0816ac05adab29d4e7971592548` |
| 9 | `def` | [normalizedSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedsource--0df267274ce726fca6f3b7de.md) | 155 | `declaration-track:0df267274ce726fca6f3b7debe8f9ae818164766528ac60be1e7becc6df8f3f6` |
| 10 | `theorem` | [perimeterConnected_normalizedSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterconnected-normalizedsource--13b13a7c6e5e67ff417d33fb.md) | 161 | `result-track:13b13a7c6e5e67ff417d33fbbfab547eb8336445daaf4357acb6e53fb42eb35b` |
| 11 | `theorem` | [normalizedSource_fraction_lt_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedsource-fraction-lt-one--42034ddf68bfd0a2ee06988e.md) | 175 | `result-track:42034ddf68bfd0a2ee06988e619343d88d12d99485bb054ee21d2830af0972e5` |
| 12 | `def` | [realAngularAddress](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/realangularaddress--947bbd622dd57cebff7a680f.md) | 188 | `declaration-track:947bbd622dd57cebff7a680f40faa0013113368a0a88fa90da162a3152f2bfd4` |
| 13 | `theorem` | [sourceAngularAddress_eq_coe_realAngularAddress](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/sourceangularaddress-eq-coe-realangularaddress--a84267b65edefa7420d33892.md) | 191 | `result-track:a84267b65edefa7420d338923adf14972a7bfa5f452395789c35c7b415fd2bdc` |
| 14 | `theorem` | [normalizedRealAngle_mem_Ico](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedrealangle-mem-ico--817be5bd478fd8634cc29669.md) | 198 | `result-track:817be5bd478fd8634cc29669a14853686135f92968a8b1ccc6b9fd1cadca7712` |
| 15 | `theorem` | [normalizedRealAngle_floor](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedrealangle-floor--35b698c8629424ad67139e79.md) | 218 | `result-track:35b698c8629424ad67139e794adb4aebf833a4f077076af321c61fe9f5b6fb25` |
| 16 | `theorem` | [normalizedRealAngle_eq_of_circle_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedrealangle-eq-of-circle-eq--69c8dad0758d4ae18d829f72.md) | 235 | `result-track:69c8dad0758d4ae18d829f72481d9f8fbb3aff5d4ee3fa412913c95718e07cea` |
| 17 | `theorem` | [normalizedSource_eq_of_angle_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/normalizedsource-eq-of-angle-eq--e03ae60c790e4eea6a6f1658.md) | 257 | `result-track:e03ae60c790e4eea6a6f1658381c9d78ee03d819aeb4afa5343acc30ee66525b` |
| 18 | `theorem` | [angle_eq_iff_perimeterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/angle-eq-iff-perimeterconnected--410ed456b4f5e537d6eaa975.md) | 288 | `result-track:410ed456b4f5e537d6eaa9752d07106e0ca0cb8ca9a8d06ac0d5f47616557743` |
| 19 | `theorem` | [perimeterAngle_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterangle-injective--6250449c8da0e3a47a849fdf.md) | 308 | `result-track:6250449c8da0e3a47a849fdf7bed208a83eee4cba9fcdfb97e764f2dbd7e429c` |
| 20 | `def` | [circleFundamentalRepresentative](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/circlefundamentalrepresentative--5066a5e4e28d72430b72ada1.md) | 321 | `declaration-track:5066a5e4e28d72430b72ada1884db04ae2ced5de04eb3e2f3a4391785ab1b338` |
| 21 | `theorem` | [circleRepresentative_floor_lt](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/circlerepresentative-floor-lt--61235bd327ebbba1d3857958.md) | 330 | `result-track:61235bd327ebbba1d38579582c4ef46f8d54da71620ae837919ef41ceb09ebf7` |
| 22 | `def` | [sourceOfCircleRepresentative](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/sourceofcirclerepresentative--7cdf32660d80df5708ad3df8.md) | 343 | `declaration-track:7cdf32660d80df5708ad3df89d52df977aa8caa7f53f0eafccd3f460e8e7c6b2` |
| 23 | `theorem` | [perimeterAngle_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterangle-surjective--08a610d2bd2699899339bafe.md) | 368 | `result-track:08a610d2bd2699899339bafe18f528357b9df28e02eefe4aa28ec9c5210a376e` |
| 24 | `theorem` | [perimeterAngle_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterangle-bijective--678073409d449ff7ab27093c.md) | 395 | `result-track:678073409d449ff7ab27093c9baff3a5978ece4911b6818d97e2456e95790c93` |
| 25 | `instance` | [unpairedPerimeter_compactSpace](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/unpairedperimeter-compactspace--3438a3f644aa332d36e18e3b.md) | 403 | `declaration-track:3438a3f644aa332d36e18e3b061a5ba8ac3b4f364336dd521712b0300ea0bbf8` |
| 26 | `instance` | [circlePeriodPositive](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/circleperiodpositive--a22191a6a0bc22b0a20d6967.md) | 412 | `declaration-track:a22191a6a0bc22b0a20d69675817dc2770da9f1e7592386c7d78a0f1da8cb0a5` |
| 27 | `def` | [perimeterHomeomorphAddCircle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterhomeomorphaddcircle--9c6d16087b56936a2872353f.md) | 420 | `declaration-track:9c6d16087b56936a2872353ff3fcc7a135d4751ee47397e50443ae0b9ccc0517` |
| 28 | `def` | [perimeterHomeomorphUnitAddCircle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterhomeomorphunitaddcircle--646c59fe5e2c29c831170197.md) | 431 | `declaration-track:646c59fe5e2c29c831170197927b1e5ef8382d8ba926edc3941b9b8ec4a78fc7` |
| 29 | `theorem` | [perimeterHomeomorph_source_formula](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/perimeterhomeomorph-source-formula--c6451f22f46326d7b33835c4.md) | 438 | `result-track:c6451f22f46326d7b33835c4df934e72fc35804637bbd2f57c27bd414f5cc7c3` |
| 30 | `theorem` | [attaching_noninjective_despite_perimeter_circle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/attaching-noninjective-despite-perimeter-circle--d321dd46d99ff10f43728f28.md) | 450 | `result-track:d321dd46d99ff10f43728f2848cb40570e6ac192435a830388f4d78d7dcd4360` |
| 31 | `theorem` | [genus_two_circle_bijection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/genus-two-circle-bijection--9b759a3ddc1c75e4db0bfb21.md) | 457 | `result-track:9b759a3ddc1c75e4db0bfb21f8811758279ae2f91287dbb099226a1bfe1fca93` |
| 32 | `theorem` | [genus_three_circle_bijection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/declarations/genus-three-circle-bijection--4700f67711853817e25fdc64.md) | 462 | `result-track:4700f67711853817e25fdc641c9c3fc15e511e5892c2c5b1e193f1a4274506aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
