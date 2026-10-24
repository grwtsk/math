# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.CertifiedInteriorMultiplicity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10b920a549643b63e17288f645b1aa0806a49201",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/index.md) · [Full source](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10b920a549643b63e17288f645b1aa0806a49201`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.ClosedSupportAndOrigins`](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/ClosedSupportAndOrigins.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InteriorAxisStratum](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/interioraxisstratum--6fa94cf20aee493a09225db2.md) | 41 | `declaration-track:6fa94cf20aee493a09225db20da63fae512ca1eff4fd7dc4028f160d283f7682` |
| 2 | `def` | [InteriorAxisStratum.codimension](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/interioraxisstratum-codimension--5a978ba9568ab185798a2a26.md) | 51 | `declaration-track:5a978ba9568ab185798a2a26b6513f5885611762b0f1ccdac7affa4933f0b48a` |
| 3 | `theorem` | [fin_eq_of_val_eq](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/fin-eq-of-val-eq--e200d797ce499f75a7bc62fe.md) | 58 | `result-track:e200d797ce499f75a7bc62fe0a5122fdd8f973366ef7f731b6d7c374b2b395c4` |
| 4 | `theorem` | [axisCarriers_eq_singleton_of_cell](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/axiscarriers-eq-singleton-of-cell--c865d10d715968030f40dd8e.md) | 64 | `result-track:c865d10d715968030f40dd8eb68d545aeb08b567b6d1ef864d084d000f2cfb36` |
| 5 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/axiscarriers-eq-pair-of-internalboundary--43c46cf8e1c3e13aac220c3a.md) | 92 | `result-track:43c46cf8e1c3e13aac220c3ac5bbae8136390bfbac728aa5c521a7ce1bee3436` |
| 6 | `structure` | [InteriorGridStratum](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/interiorgridstratum--be367ab602f42579dc7e95bd.md) | 128 | `declaration-track:be367ab602f42579dc7e95bd953217d1cc445231e8a0286190ec24e0439ac246` |
| 7 | `def` | [InteriorGridStratum.codimension](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/interiorgridstratum-codimension--132d6b602fe3b01fabd52130.md) | 134 | `declaration-track:132d6b602fe3b01fabd521305022beb64fca09143d2a54c9dd3a9a51c9d3fdc8` |
| 8 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/RationalClosedCarrierGrid/Variant114b3a405a97d561/CertifiedInteriorMultiplicity.lean/declarations/carriermultiplicity-eq-two-pow-codimension--d45209d464774f121f26c8f3.md) | 142 | `result-track:d45209d464774f121f26c8f3a736a3ce73be2e1d4f4cb351a2697c1702576ad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
