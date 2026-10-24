# pencil_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8924526-238c-b959-858e-a1ebf999426e",
  "kind": "theorem",
  "lexical_name": "pencil_conjugate",
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
  "slug": "pencil-conjugate--d15191989eaab0ca7678c607",
  "source": {
    "blob": "79a8a59b18bfb2d95122528a17d3949e81d3b6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 11,
    "path": "GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15191989eaab0ca7678c6071b98cdfde6a68a12a0d056282fec04606f80219e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/ConjugateLocalFactor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8924526-238c-b959-858e-a1ebf999426e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pencil_conjugate (A B U V : Matrix n n R) (uv : U * V = 1)
    (intertwines : A * U = U * B) (t : R) :
    1 - t • A = U * (1 - t • B) * V := by
  have ha : A = U * B * V := by
    calc
      A = A * (U * V) := by rw [uv, Matrix.mul_one]
      _ = (A * U) * V := by rw [Matrix.mul_assoc]
      _ = U * B * V := by rw [intertwines]
  rw [Matrix.mul_sub, Matrix.mul_one, Matrix.sub_mul,
    Matrix.mul_smul, Matrix.smul_mul, uv, ← ha]

/-- Equality at every local parameter t; both inverse identities are explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/ConjugateLocalFactor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/ConjugateLocalFactor.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a8a59b18bfb2d95122528a17d3949e81d3b6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
