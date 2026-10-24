# upper_le_effectiveShellUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e18bf119863fcb2b9cbf1ff0a733116fad69c327",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9ee2bf9-920d-2e4b-a64f-c34550ba1d3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b63a8bde-77e8-99ca-6ccc-80ed2b61a27c",
  "kind": "theorem",
  "lexical_name": "upper_le_effectiveShellUpper",
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
  "slug": "upper-le-effectiveshellupper--9e753a9cb9143976c534447e",
  "source": {
    "blob": "e18bf119863fcb2b9cbf1ff0a733116fad69c327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e753a9cb9143976c534447e00327760d4266df29f1e2c6d6a072642189812a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b63a8bde-77e8-99ca-6ccc-80ed2b61a27c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_le_effectiveShellUpper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ min (2 ^ (q + 1) - 1) (2 * N) := by
  exact (Nat.le_min).2 ⟨
    Nat.le_sub_one_of_lt interval.upper_lt_shell_upper,
    interval.upper_le_scale⟩

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductDyadicInterval/Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18bf119863fcb2b9cbf1ff0a733116fad69c327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
