# det_kronecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c94f90d-8f67-1962-a539-586ec8bbb6b2",
  "kind": "theorem",
  "lexical_name": "det_kronecker",
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
  "slug": "det-kronecker--8ca952ab3e3bc6fbfe83c526",
  "source": {
    "blob": "d1fa7b7d4db2412d7429f8df6820d03d652dc307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca952ab3e3bc6fbfe83c526a7ebf49fbf14f482c2ce267a4b7bf2256c5c732c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c94f90d-8f67-1962-a539-586ec8bbb6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_kronecker [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] [CommRing R]
    (A : Matrix m m R) (B : Matrix n n R) :
    det (A ⊗ₖ B) = det A ^ Fintype.card n * det B ^ Fintype.card m := by
  refine (det_kroneckerMapBilinear (Algebra.lmul ℕ R).toLinearMap mul_mul_mul_comm _ _).trans ?_
  congr 3
  · ext i j
    exact mul_one _
  · ext i j
    exact one_mul _

end Kronecker

/-! ### Specialization to `Matrix.kroneckerMap (⊗ₜ)` -/


section KroneckerTmul

variable (R)

open TensorProduct

open Matrix TensorProduct

section Module

suppress_compilation

variable [CommSemiring R] [AddCommMonoid α] [AddCommMonoid β] [AddCommMonoid γ]
variable [Module R α] [Module R β] [Module R γ]

/-- The Kronecker tensor product. This is just a shorthand for `kroneckerMap (⊗ₜ)`.
Prefer the notation `⊗ₖₜ` rather than this definition. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1fa7b7d4db2412d7429f8df6820d03d652dc307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
