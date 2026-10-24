# finrank_mul_regOfFamily_eq_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae028222-dc25-9656-505f-33c887382253",
  "kind": "theorem",
  "lexical_name": "finrank_mul_regOfFamily_eq_det",
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
  "slug": "finrank-mul-regoffamily-eq-det--9bb7eaa65b1b03d662cd6369",
  "source": {
    "blob": "5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 244,
    "path": "GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb7eaa65b1b03d662cd6369dc71f15989df07761726005e0da3d218db8c7bad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae028222-dc25-9656-505f-33c887382253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_mul_regOfFamily_eq_det (u : Fin (rank K) → (𝓞 K)ˣ) (w' : InfinitePlace K)
    (e : {w // w ≠ w'} ≃ Fin (rank K)) :
    finrank ℚ K * regOfFamily u =
      |(of (fun i w : InfinitePlace K ↦
        if h : i = w' then (w.mult : ℝ) else w.mult * (w (u (e ⟨i, h⟩))).log)).det| := by
  let f : Fin (rank K + 1) ≃ InfinitePlace K :=
    (finSuccEquiv _).trans ((Equiv.optionSubtype _).symm e.symm).val
  let g : {w // w ≠ w'} ≃ Fin (rank K) :=
    (Equiv.subtypeEquiv f.symm (fun _ ↦ by simp [f])).trans (finSuccAboveEquiv (f.symm w')).symm
  rw [← det_reindex_self f.symm, det_eq_sum_row_mul_submatrix_succAbove_succAbove_det _ (f.symm w')
    (f.symm w'), abs_mul, abs_mul, abs_neg_one_pow, one_mul]
  · simp_rw [reindex_apply, submatrix_submatrix, ← f.symm.sum_comp, f.symm_symm, submatrix_apply,
      Function.comp_def, Equiv.apply_symm_apply, of_apply, dite_eq_left, ← Nat.cast_sum,
      sum_mult_eq, Nat.abs_cast]
    rw [regOfFamily_eq_det u w' e, ← Matrix.det_reindex_self g]
    congr with i j
    rw [reindex_apply, submatrix_apply, submatrix_apply, of_apply, of_apply, dite_eq_right]
    rfl
  · simp_rw [Equiv.forall_congr_left f, ← f.symm.sum_comp, reindex_apply, submatrix_apply,
      of_apply, f.symm_symm, f.apply_symm_apply, Finset.sum_dite_irrel, ne_eq,
      EmbeddingLike.apply_eq_iff_eq]
    intro _ h
    rw [dite_eq_right h, sum_mult_mul_log]

end regOfFamily

section regulator

open scoped Classical in
/-- The regulator of a number field `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
