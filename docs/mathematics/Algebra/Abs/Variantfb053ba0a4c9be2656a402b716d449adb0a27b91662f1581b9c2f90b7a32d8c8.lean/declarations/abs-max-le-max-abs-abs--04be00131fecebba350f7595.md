# abs_max_le_max_abs_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "018135c67a63f3e143642dd02c3b29c916da8089",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7d5b5c8-2b99-dcd2-d340-84a2d4596af3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:492a926e-c754-04c5-a06e-92c55ec8c2b7",
  "kind": "theorem",
  "lexical_name": "abs_max_le_max_abs_abs",
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
  "slug": "abs-max-le-max-abs-abs--04be00131fecebba350f7595",
  "source": {
    "blob": "018135c67a63f3e143642dd02c3b29c916da8089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 338,
    "path": "GRWTSK/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04be00131fecebba350f7595a6001d89c83533f54c3a0d22a80329c15cf96ace",
  "verification": {
    "reference": "docs/verification/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:492a926e-c754-04c5-a06e-92c55ec8c2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_max_le_max_abs_abs : |max a b| ≤ max |a| |b| :=
  (le_total a b).elim (fun h => (congr_arg _ <| max_eq_right h).trans_le <| le_max_right _ _)
    fun h => (congr_arg _ <| max_eq_left h).trans_le <| le_max_left _ _
#align abs_max_le_max_abs_abs abs_max_le_max_abs_abs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018135c67a63f3e143642dd02c3b29c916da8089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
