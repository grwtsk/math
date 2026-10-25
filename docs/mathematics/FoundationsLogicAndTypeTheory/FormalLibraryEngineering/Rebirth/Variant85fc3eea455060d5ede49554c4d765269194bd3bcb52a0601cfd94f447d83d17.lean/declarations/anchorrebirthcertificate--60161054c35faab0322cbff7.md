# AnchorRebirthCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89419279b933a67a3aa09f0c014d69624d1700c138ed449339a17b725c2c5eb5",
  "kind": "structure",
  "lexical_name": "AnchorRebirthCertificate",
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
  "slug": "anchorrebirthcertificate--60161054c35faab0322cbff7",
  "source": {
    "blob": "99445c0dd69c0177f590610c2af438fedc60d73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rebirth/Variant85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60161054c35faab0322cbff74572b26b9082dccb65cf6c39f8d1776b8325ae48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rebirth/Variant85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89419279b933a67a3aa09f0c014d69624d1700c138ed449339a17b725c2c5eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnchorRebirthCertificate
    (Context : Type u)
    (N D : Nat)
    (SourceLabel TargetLabel : Type v)
    (sourceBeacon : SourceLabel → TensorState N D)
    (targetBeacon : TargetLabel → TensorState N D)
    (active : TensorState N D) where
  anchor : ReproductiveAnchorCertificate Context N D
  surgery : TensorState N D → TensorState N D
  selectsAnchor :
    surgery active = anchor.anchorState
  beaconPreservation :
    Mathematics.Operational.BeaconPreservationCertificate
      sourceBeacon targetBeacon surgery
  prestate : TensorState N D
  prestateExact : prestate = active

/-- Immutable candidate application: rejection preserves the exact prestate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rebirth/Variant85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rebirth/Variant85fc3eea455060d5ede49554c4d765269194bd3bcb52a0601cfd94f447d83d17.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99445c0dd69c0177f590610c2af438fedc60d73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
