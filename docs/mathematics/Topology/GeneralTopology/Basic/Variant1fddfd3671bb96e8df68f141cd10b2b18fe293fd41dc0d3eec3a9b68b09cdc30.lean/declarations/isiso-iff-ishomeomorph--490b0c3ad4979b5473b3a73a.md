# isIso_iff_isHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ac5fef9586f03308397f48609bb7b3e214d5386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d605b922-a471-344f-ba7d-c48b117fb739",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e293ea87-522e-7960-c91d-0d037bfc78fe",
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
  "slug": "isiso-iff-ishomeomorph--490b0c3ad4979b5473b3a73a",
  "source": {
    "blob": "2ac5fef9586f03308397f48609bb7b3e214d5386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490b0c3ad4979b5473b3a73a0cdeffc0f062ae4f54ee5c5ca1c8fc1c458cf822",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e293ea87-522e-7960-c91d-0d037bfc78fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_iff_isHomeomorph {X Y : TopCat.{u}} (f : X ⟶ Y) :
    IsIso f ↔ IsHomeomorph f :=
  ⟨fun _ ↦ (homeoOfIso (asIso f)).isHomeomorph,
    fun H ↦ isIso_of_bijective_of_isOpenMap _ H.bijective H.isOpenMap⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1fddfd3671bb96e8df68f141cd10b2b18fe293fd41dc0d3eec3a9b68b09cdc30.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ac5fef9586f03308397f48609bb7b3e214d5386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
