# det_rectangular_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caeeaffe-b190-6df5-7e09-bbd75b4c0f89",
  "kind": "theorem",
  "lexical_name": "det_rectangular_expansion",
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
  "slug": "det-rectangular-expansion--b2f4f95fb4e281b5cce0834a",
  "source": {
    "blob": "815cdef05ea1f8bc9f10cece01207eb7e2871871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f4f95fb4e281b5cce0834a4a17c730763e2a9638f087b3eea4e8a124530c07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caeeaffe-b190-6df5-7e09-bbd75b4c0f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_rectangular_expansion {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ) :
    Matrix.det (A * B) =
      ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * ∏ i, B (f i) i := by
  simp only [Matrix.det_apply', Matrix.mul_apply,
    Finset.prod_univ_sum, Fintype.piFinset_univ, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro f _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro σ _
  simp only [Matrix.submatrix_apply, id_eq, Finset.prod_mul_distrib]
  ring

/-- Cauchy--Binet with all intermediate functions and an explicit factorial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815cdef05ea1f8bc9f10cece01207eb7e2871871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
