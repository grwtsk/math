# exact_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3cca27a-5071-98d1-1fa2-deb6d47a2b2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8029d6c4-7dc9-dbe0-07e9-f13d18c687a8",
  "kind": "theorem",
  "lexical_name": "exact_congruence",
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
  "slug": "exact-congruence--d29bec30b045880a06ebf73c",
  "source": {
    "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d29bec30b045880a06ebf73c78ddefaba1d98a0e632bd0bf31ba96ea93aa3fe5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8029d6c4-7dc9-dbe0-07e9-f13d18c687a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_congruence (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hB : B.IsHermitian) :
    fromBlocks A Cᴴ C B = (shear C B)ᴴ *
      fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B *
        shear C B := by
  have hi : (⅟B)ᴴ = ⅟B := by simpa only [Matrix.invOf_eq_nonsing_inv] using hB.inv.eq
  rw [shear, fromBlocks_conjTranspose, conjTranspose_one, conjTranspose_one,
    conjTranspose_zero, conjTranspose_mul, hi]
  exact fromBlocks_eq_of_invertible₂₂ A Cᴴ C B

omit [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e997df2712ca975312660201fcdbf5871dfd1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
