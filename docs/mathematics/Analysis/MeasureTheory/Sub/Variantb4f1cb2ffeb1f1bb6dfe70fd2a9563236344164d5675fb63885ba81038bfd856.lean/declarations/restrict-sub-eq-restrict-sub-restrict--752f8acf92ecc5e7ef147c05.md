# restrict_sub_eq_restrict_sub_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5759fd52d1ac0022b9b9b3eb9021539b6bca783",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee9db69c-eda3-01ec-11e2-526f83625176",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a634bf5-9b0c-038e-bf21-d3934d3a1415",
  "kind": "theorem",
  "lexical_name": "restrict_sub_eq_restrict_sub_restrict",
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
  "slug": "restrict-sub-eq-restrict-sub-restrict--752f8acf92ecc5e7ef147c05",
  "source": {
    "blob": "b5759fd52d1ac0022b9b9b3eb9021539b6bca783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752f8acf92ecc5e7ef147c050551392de4743865fa10217c5d87fb8e025bd40c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a634bf5-9b0c-038e-bf21-d3934d3a1415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_sub_eq_restrict_sub_restrict (h_meas_s : MeasurableSet s) :
    (μ - ν).restrict s = μ.restrict s - ν.restrict s := by
  repeat' rw [sub_def]
  have h_nonempty : { d | μ ≤ d + ν }.Nonempty := ⟨μ, Measure.le_add_right le_rfl⟩
  rw [restrict_sInf_eq_sInf_restrict h_nonempty h_meas_s]
  apply le_antisymm
  · refine' sInf_le_sInf_of_forall_exists_le _
    intro ν' h_ν'_in
    rw [mem_setOf_eq] at h_ν'_in
    refine' ⟨ν'.restrict s, _, restrict_le_self⟩
    refine' ⟨ν' + (⊤ : Measure α).restrict sᶜ, _, _⟩
    · rw [mem_setOf_eq, add_right_comm, Measure.le_iff]
      intro t h_meas_t
      repeat' rw [← measure_inter_add_diff t h_meas_s]
      refine' add_le_add _ _
      · rw [add_apply, add_apply]
        apply le_add_right _
        rw [← restrict_eq_self μ (inter_subset_right _ _),
          ← restrict_eq_self ν (inter_subset_right _ _)]
        apply h_ν'_in _ (h_meas_t.inter h_meas_s)
      · rw [add_apply, restrict_apply (h_meas_t.diff h_meas_s), diff_eq, inter_assoc, inter_self,
          ← add_apply]
        have h_mu_le_add_top : μ ≤ ν' + ν + ⊤ := by simp only [add_top, le_top]
        exact Measure.le_iff'.1 h_mu_le_add_top _
    · ext1 t h_meas_t
      simp [restrict_apply h_meas_t, restrict_apply (h_meas_t.inter h_meas_s), inter_assoc]
  · refine' sInf_le_sInf_of_forall_exists_le _
    refine' ball_image_iff.2 fun t h_t_in => ⟨t.restrict s, _, le_rfl⟩
    rw [Set.mem_setOf_eq, ← restrict_add]
    exact restrict_mono Subset.rfl h_t_in
#align measure_theory.measure.restrict_sub_eq_restrict_sub_restrict MeasureTheory.Measure.restrict_sub_eq_restrict_sub_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Sub/Variantb4f1cb2ffeb1f1bb6dfe70fd2a9563236344164d5675fb63885ba81038bfd856.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5759fd52d1ac0022b9b9b3eb9021539b6bca783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
