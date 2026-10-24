# abs_det_eq_abs_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54806301-2a38-918e-4956-041d00dfe72b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aad290bc-0733-5516-bba6-047a5b513142",
  "kind": "theorem",
  "lexical_name": "abs_det_eq_abs_det",
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
  "slug": "abs-det-eq-abs-det--c6a7a7cf30139c108d24efba",
  "source": {
    "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a7a7cf30139c108d24efba4226379c42e9383a23bf9edf6c223d9dfade172c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad290bc-0733-5516-bba6-047a5b513142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_det_eq_abs_det (u : Fin (rank K) → (𝓞 K)ˣ)
    {w₁ w₂ : InfinitePlace K} (e₁ : {w // w ≠ w₁} ≃ Fin (rank K))
    (e₂ : {w // w ≠ w₂} ≃ Fin (rank K)) :
    |(of fun i w : {w // w ≠ w₁} ↦ (mult w.val : ℝ) * (w.val (u (e₁ i) : K)).log).det| =
    |(of fun i w : {w // w ≠ w₂} ↦ (mult w.val : ℝ) * (w.val (u (e₂ i) : K)).log).det| := by
  -- We construct an equiv `Fin (rank K + 1) ≃ InfinitePlace K` from `e₂.symm`
  let f : Fin (rank K + 1) ≃ InfinitePlace K :=
    (finSuccEquiv _).trans ((Equiv.optionSubtype _).symm e₁.symm).val
  -- And `g` corresponds to the restriction of `f⁻¹` to `{w // w ≠ w₂}`
  let g : {w // w ≠ w₂} ≃ Fin (rank K) :=
    (Equiv.subtypeEquiv f.symm (fun _ ↦ by simp [f])).trans
      (finSuccAboveEquiv (f.symm w₂)).symm
  have h_col := congr_arg abs <| det_permute (g.trans e₂.symm)
    (of fun i w : {w // w ≠ w₂} ↦ (mult w.val : ℝ) * (w.val (u (e₂ i) : K)).log)
  rw [abs_mul, ← Int.cast_abs, Equiv.Perm.sign_abs, Int.cast_one, one_mul] at h_col
  rw [← h_col]
  have h := congr_arg abs <| submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det'
    (of fun i w ↦ (mult (f w) : ℝ) * ((f w) (u i)).log) ?_ 0 (f.symm w₂)
  · rw [← det_reindex_self e₁, ← det_reindex_self g]
    · rw [Units.smul_def, abs_zsmul, Int.abs_negOnePow, one_smul] at h
      convert h
      · ext; simp only [ne_eq, reindex_apply, submatrix_apply, of_apply, Equiv.apply_symm_apply,
          Equiv.trans_apply, Fin.succAbove_zero, id_eq, finSuccEquiv_succ,
          Equiv.optionSubtype_symm_apply_apply_coe, f]
      · ext; simp only [ne_eq, Equiv.coe_trans, reindex_apply, submatrix_apply, Function.comp_apply,
          Equiv.apply_symm_apply, id_eq, of_apply]; rfl
  · intro _
    simp_rw [of_apply, ← Real.log_pow]
    rw [← Real.log_prod, Equiv.prod_comp f (fun w ↦ (w (u _) ^ (mult w))), prod_eq_abs_norm,
      Units.norm, Rat.cast_one, Real.log_one]
    exact fun _ _ ↦ pow_ne_zero _ <| (map_ne_zero _).mpr (coe_ne_zero _)

open scoped Classical in
/--
For any infinite place `w'`, the regulator of the family `u` is equal to the absolute value of
the determinant of the matrix with entries `(mult w * log w (u i))_i` for `w ≠ w'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c6391ac0da8bdcabc91c771b099a3480ae7e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
