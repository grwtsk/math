# torusIntegral_succAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e51e0229c33e6b24fd2e390d4564c2a756c9f5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff3cc301-04e8-0c71-0235-dc783901c468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5eeaa6d5-89d3-ca30-3bb2-10bb3c8df76a",
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
  "slug": "torusintegral-succabove--310c38c8a89938641f9895e2",
  "source": {
    "blob": "5e51e0229c33e6b24fd2e390d4564c2a756c9f5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 235,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310c38c8a89938641f9895e25d186c0f533737cf57abae50498e33c797448cd1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eeaa6d5-89d3-ca30-3bb2-10bb3c8df76a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torusIntegral_succAbove {f : ℂⁿ⁺¹ → E} {c : ℂⁿ⁺¹} {R : ℝⁿ⁺¹} (hf : TorusIntegrable f c R)
    (i : Fin (n + 1)) :
    (∯ x in T(c, R), f x) =
      ∮ x in C(c i, R i), ∯ y in T(c ∘ i.succAbove, R ∘ i.succAbove), f (i.insertNth x y) := by
  set e : ℝ × ℝⁿ ≃ᵐ ℝⁿ⁺¹ := (MeasurableEquiv.piFinSuccAboveEquiv (fun _ => ℝ) i).symm
  have hem : MeasurePreserving e :=
    (volume_preserving_piFinSuccAboveEquiv (fun _ : Fin (n + 1) => ℝ) i).symm _
  have heπ : (e ⁻¹' Icc 0 fun _ => 2 * π) = Icc 0 (2 * π) ×ˢ Icc (0 : ℝⁿ) fun _ => 2 * π :=
    ((OrderIso.piFinSuccAboveIso (fun _ => ℝ) i).symm.preimage_Icc _ _).trans (Icc_prod_eq _ _)
  rw [torusIntegral, ← hem.map_eq, set_integral_map_equiv, heπ, Measure.volume_eq_prod,
    set_integral_prod, circleIntegral_def_Icc]
  · refine' set_integral_congr measurableSet_Icc fun θ _ => _
    simp only [torusIntegral, ← integral_smul, deriv_circleMap, i.prod_univ_succAbove _, smul_smul,
      torusMap, circleMap_zero]
    refine' set_integral_congr measurableSet_Icc fun Θ _ => _
    simp only [MeasurableEquiv.piFinSuccAboveEquiv_symm_apply, i.insertNth_apply_same,
      i.insertNth_apply_succAbove, (· ∘ ·)]
    congr 2
    simp only [funext_iff, i.forall_iff_succAbove, circleMap, Fin.insertNth_apply_same,
      eq_self_iff_true, Fin.insertNth_apply_succAbove, imp_true_iff, and_self_iff]
  · have := hf.function_integrable
    rwa [← hem.integrableOn_comp_preimage e.measurableEmbedding, heπ] at this
#align torus_integral_succ_above torusIntegral_succAbove

/-- Recurrent formula for `torusIntegral`, see also `torusIntegral_succAbove`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant7d0590af9dd6496c61275fe006fcb552b9e8d78418d8bc09a737539b46b5bcf3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e51e0229c33e6b24fd2e390d4564c2a756c9f5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
