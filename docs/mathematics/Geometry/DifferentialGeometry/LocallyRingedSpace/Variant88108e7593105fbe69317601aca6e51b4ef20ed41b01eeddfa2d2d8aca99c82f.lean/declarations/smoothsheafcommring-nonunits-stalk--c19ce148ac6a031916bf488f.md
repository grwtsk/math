# smoothSheafCommRing.nonunits_stalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "108d4c93e2b2b51ab667e102b3f4305c16f1dd13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a11d4ed9-e13b-2fb4-d383-b2c9824ffbba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04c58a5b-8a85-1503-3679-c28aa26a52f4",
  "kind": "theorem",
  "lexical_name": "smoothSheafCommRing.nonunits_stalk",
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
  "slug": "smoothsheafcommring-nonunits-stalk--c19ce148ac6a031916bf488f",
  "source": {
    "blob": "108d4c93e2b2b51ab667e102b3f4305c16f1dd13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c19ce148ac6a031916bf488f370ee8a8ff40ee7f0c2e204895c757991056ba12",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04c58a5b-8a85-1503-3679-c28aa26a52f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothSheafCommRing.nonunits_stalk (x : M) :
    nonunits ((smoothSheafCommRing IM 𝓘(𝕜) M 𝕜).presheaf.stalk x)
    = RingHom.ker (smoothSheafCommRing.eval IM 𝓘(𝕜) M 𝕜 x) := by
  ext1 f
  rw [mem_nonunits_iff, not_iff_comm, Iff.comm]
  apply smoothSheafCommRing.isUnit_stalk_iff

/-- The stalks of the structure sheaf of a smooth manifold are local rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `108d4c93e2b2b51ab667e102b3f4305c16f1dd13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
