# cutHamiltonian_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:584bfeda-4e82-f5c6-f56b-a43248762612",
  "kind": "theorem",
  "lexical_name": "cutHamiltonian_reindex",
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
  "slug": "cuthamiltonian-reindex--474c13b461f00f6767037325",
  "source": {
    "blob": "8dd5f847a770a48d890f3869ad3ded07306dd5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 108,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:474c13b461f00f6767037325b7e7b28ec3ea8fcd66de5fafcd30496974c830ba",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:584bfeda-4e82-f5c6-f56b-a43248762612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutHamiltonian_reindex (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) :
    Matrix.reindex (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (finSumFinEquiv : Fin N ⊕ Fin M ≃ Fin (N+M)).symm
      (cutHamiltonian (N+M) α V ξ origin (N-1)) =
    Matrix.fromBlocks (hamiltonian N α V ξ origin) 0 0
      (hamiltonian M α V ξ (origin+(N:ℤ))) := by
  ext i j
  rcases i with i | i <;> rcases j with j | j
  all_goals
    simp only [Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_symm,
      finSumFinEquiv_apply_left, finSumFinEquiv_apply_right,
      Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂,
      Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂,
      cutHamiltonian, hamiltonian, Matrix.sub_apply, Matrix.add_apply,
      Matrix.diagonal_apply, freeDirichlet, joiningEdge,
      Fin.val_castAdd, Fin.val_natAdd, Matrix.zero_apply]
  · have hi := i.isLt
    have hj := j.isLt
    have hc : N-1+1 = N := by omega
    have hn : ¬j.val = N-1+1 := by omega
    have hn' : ¬i.val = N-1+1 := by omega
    simp [hn, hn', Fin.castAdd_inj]
  · have hi := i.isLt
    have hj := j.isLt
    have hne : Fin.castAdd M i ≠ Fin.natAdd N j := by
      intro h
      have := congrArg Fin.val h
      simp only [Fin.val_castAdd, Fin.val_natAdd] at this
      omega
    simp only [if_neg hne]
    split_ifs <;> simp_all
    all_goals omega
  · have hi := i.isLt
    have hj := j.isLt
    have hne : Fin.natAdd N i ≠ Fin.castAdd M j := by
      intro h
      have := congrArg Fin.val h
      simp only [Fin.val_castAdd, Fin.val_natAdd] at this
      omega
    simp only [if_neg hne]
    split_ifs <;> simp_all
    all_goals omega
  · have hi := i.isLt
    have hj := j.isLt
    have hn : ¬N+j.val = N-1 := by omega
    have hn' : ¬N+i.val = N-1 := by omega
    simp [hn, hn', Fin.natAdd_inj, Nat.cast_add, add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd5f847a770a48d890f3869ad3ded07306dd5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
