# unitLattice_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47c98f78-6fe3-f4a7-6a38-09326c67a2ec",
  "kind": "theorem",
  "lexical_name": "unitLattice_span_eq_top",
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
  "slug": "unitlattice-span-eq-top--682297935189cab165055054",
  "source": {
    "blob": "693ef0c44a0ae1cd78b0bfdf1c59bfde4e43ebce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:682297935189cab165055054ff3765149c2b2ba41fc86e3122b4fd2e75c8266f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c98f78-6fe3-f4a7-6a38-09326c67a2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitLattice_span_eq_top :
    Submodule.span ℝ (unitLattice K : Set (logSpace K)) = ⊤ := by
  classical
  refine le_antisymm le_top ?_
  -- The standard basis
  let B := Pi.basisFun ℝ {w : InfinitePlace K // w ≠ w₀}
  -- The image by log_embedding of the family of units constructed above
  let v := fun w : { w : InfinitePlace K // w ≠ w₀ } ↦
    logEmbedding K (Additive.ofMul (exists_unit K w).choose)
  -- To prove the result, it is enough to prove that the family `v` is linearly independent
  suffices B.det v ≠ 0 by
    rw [← isUnit_iff_ne_zero, ← is_basis_iff_det] at this
    rw [← this.2]
    refine  Submodule.span_monotone fun _ ⟨w, hw⟩ ↦ ⟨(exists_unit K w).choose, trivial, hw⟩
  rw [Basis.det_apply]
  -- We use a specific lemma to prove that this determinant is nonzero
  refine det_ne_zero_of_sum_col_lt_diag (fun w ↦ ?_)
  simp_rw [Real.norm_eq_abs, B, Basis.coePiBasisFun.toMatrix_eq_transpose, Matrix.transpose_apply]
  rw [← sub_pos, sum_congr rfl (fun x hx ↦ abs_of_neg ?_), sum_neg_distrib, sub_neg_eq_add,
    sum_erase_eq_sub (mem_univ _), ← add_comm_sub]
  · refine add_pos_of_nonneg_of_pos ?_ ?_
    · rw [sub_nonneg]
      exact le_abs_self _
    · rw [sum_logEmbedding_component (exists_unit K w).choose]
      refine mul_pos_of_neg_of_neg ?_ ((exists_unit K w).choose_spec _ w.prop.symm)
      rw [mult]; split_ifs <;> norm_num
  · refine mul_neg_of_pos_of_neg ?_ ((exists_unit K w).choose_spec x ?_)
    · rw [mult]; split_ifs <;> norm_num
    · exact Subtype.ext_iff_val.not.mp (ne_of_mem_erase hx)

end span_top

end dirichletUnitTheorem

section statements

variable [NumberField K]

open dirichletUnitTheorem Module

/-- The unit rank of the number field `K`, it is equal to `card (InfinitePlace K) - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variant9af6d194500857a0f1749a815c02c421bf0d25e762be9a0d68a85be0382dcad3.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693ef0c44a0ae1cd78b0bfdf1c59bfde4e43ebce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
