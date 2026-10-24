# diagonalSucc_inv_single_right

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
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:514cab6c-09c2-9407-fe16-6e3af346ce37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f492f67a-3ea8-ee9c-6c03-fe77d3688a9a",
  "kind": "theorem",
  "lexical_name": "diagonalSucc_inv_single_right",
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
  "slug": "diagonalsucc-inv-single-right--6df90b4c852b5471e643abe2",
  "source": {
    "blob": "373d20302dca715335554e857905929ddba2cb39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df90b4c852b5471e643abe205d9e1a623a777b4597b90fda1b0a5f0f23e5822",
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

Occurrence: `result:f492f67a-3ea8-ee9c-6c03-fe77d3688a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalSucc_inv_single_right (g : G →₀ k) (f : Gⁿ) (r : k) :
    (diagonalSucc k G n).inv.hom (g ⊗ₜ Finsupp.single f r) =
      Finsupp.lift _ k G (fun a => single (a • partialProd f) r) g := by
  refine' g.induction _ _
/- Porting note: broken proof was
  · simp only [TensorProduct.zero_tmul, map_zero]
  · intro a b x ha hb hx
    simp only [lift_apply, smul_single', map_add, hx, diagonalSucc_inv_single_single,
      TensorProduct.add_tmul, Finsupp.sum_single_index, zero_mul, single_zero] -/
  · rw [TensorProduct.zero_tmul, map_zero, map_zero]
  · intro _ _ _ _ _ hx
    rw [TensorProduct.add_tmul, map_add, map_add, hx]
    simp_rw [lift_apply, smul_single', diagonalSucc_inv_single_single]
    rw [sum_single_index]
    · rw [zero_mul, single_zero]
#align group_cohomology.resolution.diagonal_succ_inv_single_right GroupCohomology.Resolution.diagonalSucc_inv_single_right

end Rep

open scoped TensorProduct

open Representation
set_option maxHeartbeats 800000 in
/-- The `k[G]`-linear isomorphism `k[G] ⊗ₖ k[Gⁿ] ≃ k[Gⁿ⁺¹]`, where the `k[G]`-module structure on
the lefthand side is `TensorProduct.leftModule`, whilst that of the righthand side comes from
`Representation.asModule`. Allows us to use `Algebra.TensorProduct.basis` to get a `k[G]`-basis
of the righthand side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373d20302dca715335554e857905929ddba2cb39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
