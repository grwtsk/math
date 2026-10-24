# hasEigenvalue_toLin_diagonal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:218fba8e-beeb-83a0-d5ef-ffdb285d25fe",
  "kind": "lemma",
  "lexical_name": "hasEigenvalue_toLin_diagonal_iff",
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
  "slug": "haseigenvalue-tolin-diagonal-iff--f33a0fdc06d032768deffac6",
  "source": {
    "blob": "ca11a587379bb1cb32a0bbf67b57b52a2210a224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f33a0fdc06d032768deffac69d10430dc96e2a89684f3a879d4b8ca2f3322506",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:218fba8e-beeb-83a0-d5ef-ffdb285d25fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasEigenvalue_toLin_diagonal_iff (d : n → R) {μ : R} [NoZeroSMulDivisors R M]
    (b : Basis n R M) : HasEigenvalue (toLin b b (diagonal d)) μ ↔ ∃ i, d i = μ := by
  have (i : n) : HasEigenvalue (toLin b b (diagonal d)) (d i) :=
    hasEigenvalue_of_hasEigenvector <| hasEigenvector_toLin_diagonal d i b
  constructor
  · contrapose!
    intro hμ h_eig
    have h_iSup : ⨆ μ ∈ Set.range d, eigenspace (toLin b b (diagonal d)) μ = ⊤ := by
      rw [eq_top_iff, ← b.span_eq, Submodule.span_le]
      rintro - ⟨i, rfl⟩
      simp only [SetLike.mem_coe]
      apply Submodule.mem_iSup_of_mem (d i)
      apply Submodule.mem_iSup_of_mem ⟨i, rfl⟩
      rw [mem_eigenspace_iff]
      exact (hasEigenvector_toLin_diagonal d i b).apply_eq_smul
    have hμ_notMem : μ ∉ Set.range d := by simpa using fun i ↦ (hμ i)
    have := eigenspaces_iSupIndep (toLin b b (diagonal d)) |>.disjoint_biSup hμ_notMem
    rw [h_iSup, disjoint_top] at this
    exact h_eig this
  · rintro ⟨i, rfl⟩
    exact this i

/-- Eigenvalues of a diagonal linear operator with respect to standard basis
    are the diagonal entries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant213331f051d11b33aac28cf3a31d57e8bb7b0325a12b07bd01d98065e9e2b50f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca11a587379bb1cb32a0bbf67b57b52a2210a224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
