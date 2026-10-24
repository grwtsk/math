# isSquare_iff_exists_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdf30b3dbc04906b714810eff6b29f719a775071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bafa786-13ca-7de9-42d8-4f0d1be5cc34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5442f00f-e7ec-136a-a214-57c890267ca4",
  "kind": "theorem",
  "lexical_name": "isSquare_iff_exists_sq",
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
  "slug": "issquare-iff-exists-sq--48f4c312bddcf12763edc0c5",
  "source": {
    "blob": "fdf30b3dbc04906b714810eff6b29f719a775071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f4c312bddcf12763edc0c51f310bd42ac2d52fd4d65c58f23702020a4dddd3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5442f00f-e7ec-136a-a214-57c890267ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSquare_iff_exists_sq (m : α) : IsSquare m ↔ ∃ c, m = c ^ 2 := by simp [IsSquare, pow_two]
#align is_square_iff_exists_sq isSquare_iff_exists_sq
#align even_iff_exists_two_nsmul even_iff_exists_two_nsmul

alias ⟨IsSquare.exists_sq, isSquare_of_exists_sq⟩ := isSquare_iff_exists_sq
#align is_square.exists_sq IsSquare.exists_sq
#align is_square_of_exists_sq isSquare_of_exists_sq

attribute
  [to_additive Even.exists_two_nsmul
      "Alias of the forwards direction of `even_iff_exists_two_nsmul`."]
  IsSquare.exists_sq
#align even.exists_two_nsmul Even.exists_two_nsmul

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Parity/Variant9e6ac7b3f0c0b481233179891c6c3113eec384c461a77cf77ea748e500b90a4a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf30b3dbc04906b714810eff6b29f719a775071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
