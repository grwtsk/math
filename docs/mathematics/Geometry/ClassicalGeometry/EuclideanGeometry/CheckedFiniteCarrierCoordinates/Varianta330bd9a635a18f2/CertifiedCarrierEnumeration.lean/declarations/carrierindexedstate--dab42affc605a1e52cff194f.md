# CarrierIndexedState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765bab1a90eb91aae09f0d5eb5e8072e5a44d46690b3a273175990fb1b97b052",
  "kind": "structure",
  "lexical_name": "CarrierIndexedState",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "carrierindexedstate--dab42affc605a1e52cff194f",
  "source": {
    "blob": "2cfb92dd47021aeeb2907ec25c66ce9540fd2156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dab42affc605a1e52cff194f6bc10a9f077cabe43c62950c9bcb5088c5c37ce3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765bab1a90eb91aae09f0d5eb5e8072e5a44d46690b3a273175990fb1b97b052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CarrierIndexedState (size carrierCount : Nat) where
  sourcePoint : NormalizedPoint
  carrier : Fin carrierCount → GridCell size size
  distribution : FiniteRasterState carrierCount
  carrierSound : ∀ index, ExactCarrier size sourcePoint (carrier index)
  carrierComplete : ∀ cell, ExactCarrier size sourcePoint cell →
    ∃ index, carrier index = cell
  carrierInjective : Function.Injective carrier


/-- A typed runtime record for a carrier-indexed state.  The `complete` field
models the runtime provenance bit only after its proof obligations are met. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Varianta330bd9a635a18f2/CertifiedCarrierEnumeration.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb92dd47021aeeb2907ec25c66ce9540fd2156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
