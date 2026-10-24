# isIso_iff_isHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:772ea3b0-f3cc-1e0c-4c66-4de21d9c4409",
  "kind": "lemma",
  "lexical_name": "isIso_iff_isHomeomorph",
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
  "slug": "isiso-iff-ishomeomorph--ae6a3cfe38e40df124a26cc3",
  "source": {
    "blob": "ea6df0c45a175a9486863caed944bd205e68ec93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae6a3cfe38e40df124a26cc3a3e0221e0fb23dfb07be780a21cbdbf9732a5979",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:772ea3b0-f3cc-1e0c-4c66-4de21d9c4409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_iff_isHomeomorph {X Y : TopCat.{u}} (f : X ⟶ Y) :
    IsIso f ↔ IsHomeomorph f :=
  ⟨fun _ ↦ (homeoOfIso (asIso f)).isHomeomorph,
    fun H ↦ isIso_of_bijective_of_isOpenMap _ H.bijective H.isOpenMap⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea6df0c45a175a9486863caed944bd205e68ec93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
