# mapPiLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c989ee13dee10527db7b06ecf8271da01b8f4ea549e68fbe4cf5df11feafb8b3",
  "kind": "def",
  "lexical_name": "mapPiLocalization",
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
  "slug": "mappilocalization--2ba4a7ae21d269fa37eb6123",
  "source": {
    "blob": "f0f42fb2b767cda39bab581085ef117a8e0a895d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 215,
    "path": "GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba4a7ae21d269fa37eb61230b66de3b3fd47d80f191ca83555d1912f7a2231a",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c989ee13dee10527db7b06ecf8271da01b8f4ea549e68fbe4cf5df11feafb8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapPiLocalization : PiLocalization R →+* PiLocalization S :=
  Pi.ringHom fun I ↦ (Localization.localRingHom _ I.1 f rfl).comp (Pi.evalRingHom _ (f.specComap I))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f42fb2b767cda39bab581085ef117a8e0a895d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
