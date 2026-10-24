# site_functoriality_for_maps_X_to_Y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b57ada2f-76c5-ed9d-8661-8e579d990df1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff397ae-042c-d31f-b7a7-7b2adb36e2a5",
  "kind": "theorem",
  "lexical_name": "site_functoriality_for_maps_X_to_Y",
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
  "slug": "site-functoriality-for-maps-x-to-y--05379a21280db0f9dacbacea",
  "source": {
    "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2245,
    "line": 2238,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05379a21280db0f9dacbacea702d6ddd59882ed8f1a55b184db4939ee1fa8539",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff397ae-042c-d31f-b7a7-7b2adb36e2a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2238–2245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem site_functoriality_for_maps_X_to_Y
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X Y : PadicFormalScheme}
    (C : SiteFunctorialityCertificate (P := P) X Y) :
    C.functorial :=
  C.functorialCertified

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean#L2238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca219aa7dc0c4802d46e697f161618f5ff96f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
