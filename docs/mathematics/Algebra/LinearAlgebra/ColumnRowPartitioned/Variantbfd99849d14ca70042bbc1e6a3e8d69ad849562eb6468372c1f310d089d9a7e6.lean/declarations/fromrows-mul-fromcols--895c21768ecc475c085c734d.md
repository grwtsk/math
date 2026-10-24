# fromRows_mul_fromCols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "499e31f34561c6c5d136f733ada6f46669464a48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a741768-e9fd-7716-8e0d-77b3a3683933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6b461e6-c6b4-8cd6-e727-5cf436d04c21",
  "kind": "lemma",
  "lexical_name": "fromRows_mul_fromCols",
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
  "slug": "fromrows-mul-fromcols--895c21768ecc475c085c734d",
  "source": {
    "blob": "499e31f34561c6c5d136f733ada6f46669464a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895c21768ecc475c085c734d85993181ec1a8095a7063d10a42b8018680e2b50",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6b461e6-c6b4-8cd6-e727-5cf436d04c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromRows_mul_fromCols [Fintype n] (A₁ : Matrix m₁ n R) (A₂ : Matrix m₂ n R)
    (B₁ : Matrix n n₁ R) (B₂ : Matrix n n₂ R) :
    (fromRows A₁ A₂) * (fromCols B₁ B₂) =
      fromBlocks (A₁ * B₁) (A₁ * B₂) (A₂ * B₁) (A₂ * B₂) := by
  ext (_ | _) (_ | _) <;> simp

@[deprecated (since := "2024-12-11")] alias fromRows_mul_fromColumns := fromRows_mul_fromCols

/-- A column partitioned matrix multiplied by a row partitioned matrix gives the sum of the "outer"
products of the block matrices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499e31f34561c6c5d136f733ada6f46669464a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
