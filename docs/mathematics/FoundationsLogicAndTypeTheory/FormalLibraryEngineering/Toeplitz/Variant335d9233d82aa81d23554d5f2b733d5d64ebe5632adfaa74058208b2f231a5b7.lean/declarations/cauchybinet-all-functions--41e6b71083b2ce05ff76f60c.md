# cauchyBinet_all_functions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1609b8c1-cfbf-5cd0-b358-eb40f3ca8766",
  "kind": "theorem",
  "lexical_name": "cauchyBinet_all_functions",
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
  "slug": "cauchybinet-all-functions--41e6b71083b2ce05ff76f60c",
  "source": {
    "blob": "815cdef05ea1f8bc9f10cece01207eb7e2871871",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e6b71083b2ce05ff76f60c657fdd805b4659830400af97838a6493c5db11ec",
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

Occurrence: `result:1609b8c1-cfbf-5cd0-b358-eb40f3ca8766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchyBinet_all_functions {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) (B : Matrix (Fin N) (Fin k) ℝ) :
    (k.factorial : ℝ) * Matrix.det (A * B) =
      ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id) := by
  have hσ (σ : Equiv.Perm (Fin k)) :
      (∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          ((Equiv.Perm.sign σ : ℤ) : ℝ) * ∏ i, B (f (σ i)) i) =
        Matrix.det (A * B) := by
    rw [det_rectangular_expansion]
    apply Fintype.sum_equiv (precomposeEquiv σ)
    intro f
    have hd := Matrix.det_permute' σ (A.submatrix id f)
    have he : (A.submatrix id (f ∘ σ)) = (A.submatrix id f).submatrix id σ := rfl
    change Matrix.det (A.submatrix id f) * _ * _ =
      Matrix.det (A.submatrix id (f ∘ σ)) * _
    rw [he, hd]
    change _ = (((Equiv.Perm.sign σ : ℤ) : ℝ) * (A.submatrix id f).det) *
      ∏ i, B (f (σ i)) i
    ring
  symm
  calc
    (∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) * Matrix.det (B.submatrix f id)) =
      ∑ σ : Equiv.Perm (Fin k), ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          ((Equiv.Perm.sign σ : ℤ) : ℝ) * ∏ i, B (f (σ i)) i := by
      conv_lhs =>
        enter [2, f]
        rw [Matrix.det_apply' (B.submatrix f id)]
      simp only [Matrix.submatrix_apply, id_eq, Finset.mul_sum, ← mul_assoc]
      rw [Finset.sum_comm]
    _ = ∑ _σ : Equiv.Perm (Fin k), Matrix.det (A * B) := by
      apply Finset.sum_congr rfl
      intro σ _
      exact hσ σ
    _ = (k.factorial : ℝ) * Matrix.det (A * B) := by
      simp [Fintype.card_perm]

/-- The product associated with an arbitrary intermediate tuple is nonnegative
when the increasing selections in both factors are nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant335d9233d82aa81d23554d5f2b733d5d64ebe5632adfaa74058208b2f231a5b7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815cdef05ea1f8bc9f10cece01207eb7e2871871` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
