# list_prod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29e832b2e7e192e645e15bfaee4edd025fef522a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e20d4fb-8fed-5715-1c14-d9ee7482bccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e39b30ce-41be-0af1-8aa1-ee04ee72de05",
  "kind": "theorem",
  "lexical_name": "list_prod_left",
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
  "slug": "list-prod-left--d20dafb2c6886286d872fd0a",
  "source": {
    "blob": "29e832b2e7e192e645e15bfaee4edd025fef522a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20dafb2c6886286d872fd0ac4463a8552523c14eac56e3b31fa4373772e7db6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39b30ce-41be-0af1-8aa1-ee04ee72de05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem list_prod_left {l : List ℤ} {n : ℕ} : J(l.prod | n) = (l.map fun a => J(a | n)).prod := by
  induction' l with n l' ih
  · simp only [List.prod_nil, List.map_nil, one_left]
  · rw [List.map, List.prod_cons, List.prod_cons, mul_left, ih]
#align jacobi_sym.list_prod_left jacobiSym.list_prod_left

/-- We can pull out a product over a list in the second argument of the Jacobi symbol. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e832b2e7e192e645e15bfaee4edd025fef522a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
