# actionDiagonalSucc_inv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373d20302dca715335554e857905929ddba2cb39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13d10a1e-eae1-af3e-132b-3e413e4feca5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:311d95ef-9dff-c814-4491-7400c2b951d6",
  "kind": "theorem",
  "lexical_name": "actionDiagonalSucc_inv_apply",
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
  "slug": "actiondiagonalsucc-inv-apply--56750c1169bc474b6398874a",
  "source": {
    "blob": "373d20302dca715335554e857905929ddba2cb39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56750c1169bc474b6398874af54606edaa203f40c4449a5c3d8202b7be54ae79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:311d95ef-9dff-c814-4491-7400c2b951d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actionDiagonalSucc_inv_apply {G : Type u} [Group G] {n : ℕ} (g : G) (f : Fin n → G) :
    (actionDiagonalSucc G n).inv.hom (g, f) = (g • Fin.partialProd f : Fin (n + 1) → G) := by
  revert g
  induction' n with n hn
  · intro g
    funext (x : Fin 1)
    simp only [Subsingleton.elim x 0, Pi.smul_apply, Fin.partialProd_zero, smul_eq_mul, mul_one]
    rfl
  · intro g
/- Porting note: broken proof was
    ext
    dsimp only [actionDiagonalSucc]
    simp only [Iso.trans_inv, comp_hom, hn, diagonalSucc_inv_hom, types_comp_apply, tensorIso_inv,
      Iso.refl_inv, Action.tensorHom, id_hom, tensor_apply, types_id_apply,
      leftRegularTensorIso_inv_hom, tensor_rho, leftRegular_ρ_apply, Pi.smul_apply, smul_eq_mul]
    refine' Fin.cases _ _ x
    · simp only [Fin.cons_zero, Fin.partialProd_zero, mul_one]
    · intro i
      simpa only [Fin.cons_succ, Pi.smul_apply, smul_eq_mul, Fin.partialProd_succ', mul_assoc] -/
    funext x
    dsimp [actionDiagonalSucc]
    erw [hn, Equiv.piFinSuccAboveEquiv_symm_apply]
    refine' Fin.cases _ (fun i => _) x
    · simp only [Fin.insertNth_zero, Fin.cons_zero, Fin.partialProd_zero, mul_one]
    · simp only [Fin.cons_succ, Pi.smul_apply, smul_eq_mul, Fin.partialProd_succ', ←mul_assoc]
      rfl
set_option linter.uppercaseLean3 false in
#align group_cohomology.resolution.Action_diagonal_succ_inv_apply GroupCohomology.Resolution.actionDiagonalSucc_inv_apply

end Action

section Rep

open Rep

/-- An isomorphism of `k`-linear representations of `G` from `k[Gⁿ⁺¹]` to `k[G] ⊗ₖ k[Gⁿ]` (on
which `G` acts by `ρ(g₁)(g₂ ⊗ x) = (g₁ * g₂) ⊗ x`) sending `(g₀, ..., gₙ)` to
`g₀ ⊗ (g₀⁻¹g₁, g₁⁻¹g₂, ..., gₙ₋₁⁻¹gₙ)`. The inverse sends `g₀ ⊗ (g₁, ..., gₙ)` to
`(g₀, g₀g₁, ..., g₀g₁...gₙ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373d20302dca715335554e857905929ddba2cb39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
