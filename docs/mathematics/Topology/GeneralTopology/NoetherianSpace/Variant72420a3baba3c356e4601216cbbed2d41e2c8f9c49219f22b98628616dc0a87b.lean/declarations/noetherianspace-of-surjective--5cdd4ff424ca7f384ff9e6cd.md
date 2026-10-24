# noetherianSpace_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef65b7291e25696524a52bbf78901a8cba675e46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0964ed5-b536-14df-3a59-e4bca59fc3dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a386ec60-16e3-e31f-e297-6f265a67f991",
  "kind": "theorem",
  "lexical_name": "noetherianSpace_of_surjective",
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
  "slug": "noetherianspace-of-surjective--5cdd4ff424ca7f384ff9e6cd",
  "source": {
    "blob": "ef65b7291e25696524a52bbf78901a8cba675e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cdd4ff424ca7f384ff9e6cd48ae7d52a4a0ef4ba91e28f8aa99feb5b8cf8527",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a386ec60-16e3-e31f-e297-6f265a67f991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noetherianSpace_of_surjective [NoetherianSpace α] (f : α → β) (hf : Continuous f)
    (hf' : Function.Surjective f) : NoetherianSpace β :=
  noetherianSpace_iff_isCompact.2 <| (Set.image_surjective.mpr hf').forall.2 fun s =>
    (NoetherianSpace.isCompact s).image hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant72420a3baba3c356e4601216cbbed2d41e2c8f9c49219f22b98628616dc0a87b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef65b7291e25696524a52bbf78901a8cba675e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
