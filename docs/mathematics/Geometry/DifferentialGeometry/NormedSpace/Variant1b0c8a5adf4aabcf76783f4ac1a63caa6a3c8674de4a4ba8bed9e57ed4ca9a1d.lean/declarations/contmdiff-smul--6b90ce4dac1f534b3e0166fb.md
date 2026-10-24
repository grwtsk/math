# ContMDiff.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3636c81b5541dc170f09795b708c2bc85b0b7293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d2217e7-bf43-d2f9-3b5b-8d21ffb4dfcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98d899c9-88bb-79fb-4129-18d33128e78f",
  "kind": "theorem",
  "lexical_name": "ContMDiff.smul",
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
  "slug": "contmdiff-smul--6b90ce4dac1f534b3e0166fb",
  "source": {
    "blob": "3636c81b5541dc170f09795b708c2bc85b0b7293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 283,
    "path": "GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b90ce4dac1f534b3e0166fb99c44383f31762e53c53d1d94956aa29b5c54a3d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d899c9-88bb-79fb-4129-18d33128e78f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiff.smul {f : M → 𝕜} {g : M → V} (hf : ContMDiff I 𝓘(𝕜) n f)
    (hg : ContMDiff I 𝓘(𝕜, V) n g) : ContMDiff I 𝓘(𝕜, V) n fun p => f p • g p := fun x =>
  (hf x).smul (hg x)

@[deprecated (since := "2024-11-20")] alias SmoothWithinAt.smul := ContMDiffWithinAt.smul

@[deprecated (since := "2024-11-20")] alias SmoothAt.smul := ContMDiffAt.smul

@[deprecated (since := "2024-11-20")] alias SmoothOn.smul := ContMDiffOn.smul

@[deprecated (since := "2024-11-20")] alias Smooth.smul := ContMDiff.smul
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/NormedSpace/Variant1b0c8a5adf4aabcf76783f4ac1a63caa6a3c8674de4a4ba8bed9e57ed4ca9a1d.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3636c81b5541dc170f09795b708c2bc85b0b7293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
