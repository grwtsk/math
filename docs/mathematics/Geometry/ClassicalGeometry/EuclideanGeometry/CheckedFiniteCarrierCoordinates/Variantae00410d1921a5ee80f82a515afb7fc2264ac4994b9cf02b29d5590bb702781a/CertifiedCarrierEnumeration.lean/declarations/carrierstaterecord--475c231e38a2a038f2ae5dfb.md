# CarrierStateRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5cf177caf0f78d5a8f9bd5a5fdde84def5508ca1e4c11cba3d46b19ca5211fd",
  "kind": "structure",
  "lexical_name": "CarrierStateRecord",
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
  "slug": "carrierstaterecord--475c231e38a2a038f2ae5dfb",
  "source": {
    "blob": "477c1a12c010137245f3a9b2498ff84810103a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CertifiedCarrierEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:475c231e38a2a038f2ae5dfb8319139551d0f1fe250d18a86ef3b2e40da21ff6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CertifiedCarrierEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5cf177caf0f78d5a8f9bd5a5fdde84def5508ca1e4c11cba3d46b19ca5211fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CarrierStateRecord (size carrierCount : Nat) where
  point : NormalizedPoint
  carriers : Fin carrierCount → GridCell size size
  weights : FiniteRasterState carrierCount
  eachCarrierIsExact : ∀ index, ExactCarrier size point (carriers index)
  everyExactCarrierPresent : ∀ cell, ExactCarrier size point cell →
    ∃ index, carriers index = cell
  carriersInjective : Function.Injective carriers
  complete : Bool
  completeChecked : complete = true

/-- Abstract a checked runtime state record to its semantic finite state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CertifiedCarrierEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CertifiedCarrierEnumeration.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `477c1a12c010137245f3a9b2498ff84810103a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
