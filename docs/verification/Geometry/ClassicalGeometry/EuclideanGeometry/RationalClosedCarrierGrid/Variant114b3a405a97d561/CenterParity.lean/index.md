# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CenterParity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68a2aad2b71d8d945b7adf8ca8ab27247d7cf025",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/index.md) · [Full source](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68a2aad2b71d8d945b7adf8ca8ab27247d7cf025`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CertifiedInteriorMultiplicity`](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/center--5f55d9847054b9339484847c.md) | 41 | `declaration-track:5f55d9847054b9339484847c912689ef482ad2701d0f9463d379ec5efa95b2d5` |
| 2 | `def` | [oddCenterIndex](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/oddcenterindex--7a9b002f79e8417eafcd0a30.md) | 44 | `declaration-track:7a9b002f79e8417eafcd0a30ce85b9f6f8247d6141f3c8b3b849f2211bc9540a` |
| 3 | `def` | [evenCenterLeft](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/evencenterleft--ae59850ce9162550798c0102.md) | 48 | `declaration-track:ae59850ce9162550798c0102836aae33aabb666238eabda82b7afd440631368e` |
| 4 | `def` | [evenCenterRight](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/evencenterright--6a763ce0feafdad5a2e70b72.md) | 52 | `declaration-track:6a763ce0feafdad5a2e70b72e946555b504e6418d9071aa22f9a3028450a3887` |
| 5 | `theorem` | [odd_center_axisCarriers](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/odd-center-axiscarriers--18e9473e518736cc1b1746ec.md) | 57 | `result-track:18e9473e518736cc1b1746ec8f44335cdcd81e274a1c436d9c5d845b27128859` |
| 6 | `theorem` | [even_center_axisCarriers](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/even-center-axiscarriers--7393632dc1843e77eb421164.md) | 69 | `result-track:7393632dc1843e77eb421164a2e454ae89bfb9aab1a545f4996e13487bb95e22` |
| 7 | `theorem` | [odd_center_carrierMultiplicity](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/odd-center-carriermultiplicity--35b0141051222673b62f4a01.md) | 80 | `result-track:35b0141051222673b62f4a01e7c49712e1093ccbb2688d3a94bd34889a8273ab` |
| 8 | `theorem` | [even_center_carrierMultiplicity](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/even-center-carriermultiplicity--ee92a2710af1d7f130fd81e0.md) | 87 | `result-track:ee92a2710af1d7f130fd81e0fa2b238eb198dcec28d842e93dadaa52d87a58f1` |
| 9 | `theorem` | [odd_center_axisOriginMatches_iff](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/odd-center-axisoriginmatches-iff--4dd498bb98e739050ac07a33.md) | 101 | `result-track:4dd498bb98e739050ac07a3389c263ba48a7d1be26b7ea5ce49bbcb5af1e9b49` |
| 10 | `theorem` | [even_center_axisOriginMatches_false](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CenterParity.lean/declarations/even-center-axisoriginmatches-false--eab883a3b4e0477aa5490b90.md) | 123 | `result-track:eab883a3b4e0477aa5490b904c7918a9f9a9c00056f14a73b34c3ce8a0f1cafb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
