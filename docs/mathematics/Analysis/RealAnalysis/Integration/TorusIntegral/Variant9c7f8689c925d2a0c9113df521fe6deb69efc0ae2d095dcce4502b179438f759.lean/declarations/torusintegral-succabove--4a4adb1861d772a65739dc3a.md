# torusIntegral_succAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02860db94b2dec66df69cc4863a6c9f592bf5e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71f24107-0396-9312-8b32-79d404e2e8d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84f2da73-a087-5657-dee0-853698f02bf5",
  "kind": "theorem",
  "lexical_name": "torusIntegral_succAbove",
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
  "slug": "torusintegral-succabove--4a4adb1861d772a65739dc3a",
  "source": {
    "blob": "02860db94b2dec66df69cc4863a6c9f592bf5e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4adb1861d772a65739dc3a3027294113b7aaa64da90afbddf5dcb641daadb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f2da73-a087-5657-dee0-853698f02bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torusIntegral_succAbove
    {f : ℂⁿ⁺¹ → E} {c : ℂⁿ⁺¹} {R : ℝⁿ⁺¹} (hf : TorusIntegrable f c R)
    (i : Fin (n + 1)) :
    (∯ x in T(c, R), f x) =
      ∮ x in C(c i, R i), ∯ y in T(c ∘ i.succAbove, R ∘ i.succAbove), f (i.insertNth x y) := by
  set e : ℝ × ℝⁿ ≃ᵐ ℝⁿ⁺¹ := (MeasurableEquiv.piFinSuccAbove (fun _ => ℝ) i).symm
  have hem : MeasurePreserving e :=
    (volume_preserving_piFinSuccAbove (fun _ : Fin (n + 1) => ℝ) i).symm _
  have heπ : (e ⁻¹' Icc 0 fun _ => 2 * π) = Icc 0 (2 * π) ×ˢ Icc (0 : ℝⁿ) fun _ => 2 * π :=
    ((Fin.insertNthOrderIso (fun _ => ℝ) i).preimage_Icc _ _).trans (Icc_prod_eq _ _)
  rw [torusIntegral, ← hem.map_eq, setIntegral_map_equiv, heπ, Measure.volume_eq_prod,
    setIntegral_prod, circleIntegral_def_Icc]
  · refine setIntegral_congr_fun measurableSet_Icc fun θ _ => ?_
    simp +unfoldPartialApp only [e, torusIntegral, ← integral_smul,
      deriv_circleMap, i.prod_univ_succAbove _, smul_smul, torusMap, circleMap_zero]
    refine setIntegral_congr_fun measurableSet_Icc fun Θ _ => ?_
    simp only [MeasurableEquiv.piFinSuccAbove_symm_apply, i.insertNth_apply_same,
      i.insertNth_apply_succAbove, (· ∘ ·), Fin.insertNthEquiv, Equiv.coe_fn_mk]
    congr 2
    simp only [funext_iff, i.forall_iff_succAbove, circleMap, Fin.insertNth_apply_same,
      Fin.insertNth_apply_succAbove, imp_true_iff, and_self_iff]
  · have := hf.function_integrable
    rwa [← hem.integrableOn_comp_preimage e.measurableEmbedding, heπ] at this

/-- Recurrent formula for `torusIntegral`, see also `torusIntegral_succAbove`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant9c7f8689c925d2a0c9113df521fe6deb69efc0ae2d095dcce4502b179438f759.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02860db94b2dec66df69cc4863a6c9f592bf5e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
