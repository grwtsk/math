# exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91cadf4b-849a-0e7d-11e0-d8351710cb2b",
  "kind": "theorem",
  "lexical_name": "exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction",
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
  "slug": "exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction--c62e69d5b5c055282a65e965",
  "source": {
    "blob": "c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 602,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c62e69d5b5c055282a65e965a262a9b2c291b52fc994f4a3950f18c7ec0b2a80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91cadf4b-849a-0e7d-11e0-d8351710cb2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction
    (IH :
      ∀ M : Matrix (Fin r) (Fin r) 𝕜,
        ∃ (L₀ L₀' : List (TransvectionStruct (Fin r) 𝕜)) (D₀ : Fin r → 𝕜),
          (L₀.map toMatrix).prod * M * (L₀'.map toMatrix).prod = diagonal D₀)
    (M : Matrix (Fin r ⊕ Unit) (Fin r ⊕ Unit) 𝕜) :
    ∃ (L L' : List (TransvectionStruct (Fin r ⊕ Unit) 𝕜)) (D : Fin r ⊕ Unit → 𝕜),
      (L.map toMatrix).prod * M * (L'.map toMatrix).prod = diagonal D := by
  rcases exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec M with ⟨L₁, L₁', hM⟩
  let M' := (L₁.map toMatrix).prod * M * (L₁'.map toMatrix).prod
  let M'' := toBlocks₁₁ M'
  rcases IH M'' with ⟨L₀, L₀', D₀, h₀⟩
  set c := M' (inr unit) (inr unit)
  refine
    ⟨L₀.map (sumInl Unit) ++ L₁, L₁' ++ L₀'.map (sumInl Unit),
      Sum.elim D₀ fun _ => M' (inr unit) (inr unit), ?_⟩
  suffices (L₀.map (toMatrix ∘ sumInl Unit)).prod * M' * (L₀'.map (toMatrix ∘ sumInl Unit)).prod =
      diagonal (Sum.elim D₀ fun _ => c) by
    simpa [M', c, Matrix.mul_assoc]
  have : M' = fromBlocks M'' 0 0 (diagonal fun _ => c) := by
    rw [← fromBlocks_toBlocks M', hM.1, hM.2]
    rfl
  rw [this]
  simp [h₀]

variable {n p} [Fintype n] [Fintype p]

/-- Reduction to diagonal form by elementary operations is invariant under reindexing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
