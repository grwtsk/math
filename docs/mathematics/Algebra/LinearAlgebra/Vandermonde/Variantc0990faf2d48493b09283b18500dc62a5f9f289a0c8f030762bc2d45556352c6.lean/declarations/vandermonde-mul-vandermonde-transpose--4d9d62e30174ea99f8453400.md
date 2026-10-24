# vandermonde_mul_vandermonde_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2d33487-9d28-7b7a-d4c9-b4e2c6814e9a",
  "kind": "theorem",
  "lexical_name": "vandermonde_mul_vandermonde_transpose",
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
  "slug": "vandermonde-mul-vandermonde-transpose--4d9d62e30174ea99f8453400",
  "source": {
    "blob": "1185a7bc609525b22a877b864f768aac307fad86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9d62e30174ea99f8453400087a4493fddb64683829e15c50ee266013226d63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2d33487-9d28-7b7a-d4c9-b4e2c6814e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vandermonde_mul_vandermonde_transpose {n : ℕ} (v w : Fin n → R) (i j) :
    (vandermonde v * (vandermonde w)ᵀ) i j = ∑ k : Fin n, (v i * w j) ^ (k : ℕ) := by
  simp only [vandermonde_apply, Matrix.mul_apply, Matrix.transpose_apply, mul_pow]
#align matrix.vandermonde_mul_vandermonde_transpose Matrix.vandermonde_mul_vandermonde_transpose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1185a7bc609525b22a877b864f768aac307fad86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
