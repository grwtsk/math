# tendsto_lcRow0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d95aab6-1bf5-dd6a-6508-67ac9eadf943",
  "kind": "theorem",
  "lexical_name": "tendsto_lcRow0",
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
  "slug": "tendsto-lcrow0--b04aaa881a65239dc3cc6387",
  "source": {
    "blob": "be9a75cc088185b7bfaba3fdc237ec3c32cf3469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 206,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b04aaa881a65239dc3cc6387815d2f5de22ee83293cbd2c9a1607a746354671f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d95aab6-1bf5-dd6a-6508-67ac9eadf943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lcRow0 {cd : Fin 2 → ℤ} (hcd : IsCoprime (cd 0) (cd 1)) :
    Tendsto (fun g : { g : SL(2, ℤ) // (↑ₘg) 1 = cd } => lcRow0 cd ↑(↑g : SL(2, ℝ))) cofinite
      (cocompact ℝ) := by
  let mB : ℝ → Matrix (Fin 2) (Fin 2) ℝ := fun t => of ![![t, (-(1 : ℤ) : ℝ)], (↑) ∘ cd]
  have hmB : Continuous mB := by
    refine' continuous_matrix _
    simp only [Fin.forall_fin_two, continuous_const, continuous_id', of_apply, cons_val_zero,
      cons_val_one, and_self_iff]
  refine' Filter.Tendsto.of_tendsto_comp _ (comap_cocompact_le hmB)
  let f₁ : SL(2, ℤ) → Matrix (Fin 2) (Fin 2) ℝ := fun g =>
    Matrix.map (↑g : Matrix _ _ ℤ) ((↑) : ℤ → ℝ)
  have cocompact_ℝ_to_cofinite_ℤ_matrix :
    Tendsto (fun m : Matrix (Fin 2) (Fin 2) ℤ => Matrix.map m ((↑) : ℤ → ℝ)) cofinite
      (cocompact _) := by
    simpa only [coprodᵢ_cofinite, coprodᵢ_cocompact] using
      Tendsto.pi_map_coprodᵢ fun _ : Fin 2 =>
        Tendsto.pi_map_coprodᵢ fun _ : Fin 2 => Int.tendsto_coe_cofinite
  have hf₁ : Tendsto f₁ cofinite (cocompact _) :=
    cocompact_ℝ_to_cofinite_ℤ_matrix.comp Subtype.coe_injective.tendsto_cofinite
  have hf₂ : ClosedEmbedding (lcRow0Extend hcd) :=
    (lcRow0Extend hcd).toContinuousLinearEquiv.toHomeomorph.closedEmbedding
  convert hf₂.tendsto_cocompact.comp (hf₁.comp Subtype.coe_injective.tendsto_cofinite) using 1
  ext ⟨g, rfl⟩ i j : 3
  fin_cases i <;> [fin_cases j; skip]
  -- the following are proved by `simp`, but it is replaced by `simp only` to avoid timeouts.
  · simp only [mulVec, dotProduct, Fin.sum_univ_two, coe_matrix_coe,
      Int.coe_castRingHom, lcRow0_apply, Function.comp_apply, cons_val_zero, lcRow0Extend_apply,
      LinearMap.GeneralLinearGroup.coeFn_generalLinearEquiv, GeneralLinearGroup.coe_toLinear,
      val_planeConformalMatrix, neg_neg, mulVecLin_apply, cons_val_one, head_cons, of_apply,
      Fin.mk_zero, Fin.mk_one]
  · convert congr_arg (fun n : ℤ => (-n : ℝ)) g.det_coe.symm using 1
    simp only [mulVec, dotProduct, Fin.sum_univ_two, Matrix.det_fin_two, Function.comp_apply,
      Subtype.coe_mk, lcRow0Extend_apply, cons_val_zero,
      LinearMap.GeneralLinearGroup.coeFn_generalLinearEquiv, GeneralLinearGroup.coe_toLinear,
      val_planeConformalMatrix, mulVecLin_apply, cons_val_one, head_cons, map_apply, neg_mul,
      Int.cast_sub, Int.cast_mul, neg_sub, of_apply, Fin.mk_zero, Fin.mk_one]
    ring
  · rfl
#align modular_group.tendsto_lc_row0 ModularGroup.tendsto_lcRow0

/-- This replaces `(g•z).re = a/c + *` in the standard theory with the following novel identity:
  `g • z = (a c + b d) / (c^2 + d^2) + (d z - c) / ((c^2 + d^2) (c z + d))`
  which does not need to be decomposed depending on whether `c = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9a75cc088185b7bfaba3fdc237ec3c32cf3469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
