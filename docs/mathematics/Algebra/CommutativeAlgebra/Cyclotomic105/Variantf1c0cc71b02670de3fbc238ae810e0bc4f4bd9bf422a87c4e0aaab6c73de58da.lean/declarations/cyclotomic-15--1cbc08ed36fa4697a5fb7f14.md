# cyclotomic_15

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f05b5d44f1eba77b275342cd0f480a6f383910ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1c0cc71b02670de3fbc238ae810e0bc4f4bd9bf422a87c4e0aaab6c73de58da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dc30f2f-d6a9-62ff-25c3-1dfb15e81b36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ec2dca2-4808-1f1b-0c57-bf0a19c96284",
  "kind": "theorem",
  "lexical_name": "cyclotomic_15",
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
  "slug": "cyclotomic-15--1cbc08ed36fa4697a5fb7f14",
  "source": {
    "blob": "f05b5d44f1eba77b275342cd0f480a6f383910ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variantf1c0cc71b02670de3fbc238ae810e0bc4f4bd9bf422a87c4e0aaab6c73de58da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbc08ed36fa4697a5fb7f149239d3a748b6a3183fbe72b24a2bb4ff3a58cb61",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variantf1c0cc71b02670de3fbc238ae810e0bc4f4bd9bf422a87c4e0aaab6c73de58da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec2dca2-4808-1f1b-0c57-bf0a19c96284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_15 : cyclotomic 15 ℤ = 1 - X + X ^ 3 - X ^ 4 + X ^ 5 - X ^ 7 + X ^ 8 := by
  refine' ((eq_cyclotomic_iff (by norm_num) _).2 _).symm
  rw [properDivisors_15, Finset.prod_insert _, Finset.prod_insert _, Finset.prod_singleton,
    cyclotomic_one, cyclotomic_3, cyclotomic_5]
  ring
  repeat' norm_num
#align counterexample.cyclotomic_15 Counterexample.cyclotomic_15

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variantf1c0cc71b02670de3fbc238ae810e0bc4f4bd9bf422a87c4e0aaab6c73de58da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variantf1c0cc71b02670de3fbc238ae810e0bc4f4bd9bf422a87c4e0aaab6c73de58da.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05b5d44f1eba77b275342cd0f480a6f383910ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
