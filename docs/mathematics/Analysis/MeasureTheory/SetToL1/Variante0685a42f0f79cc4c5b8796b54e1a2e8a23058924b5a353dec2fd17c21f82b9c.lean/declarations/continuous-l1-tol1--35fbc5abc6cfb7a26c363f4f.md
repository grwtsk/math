# continuous_L1_toL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1562,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb58daa8-23b1-903a-c54e-85be1f9b24c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b4d4582-620c-bda9-b6c9-2bc68a8dbf12",
  "kind": "theorem",
  "lexical_name": "continuous_L1_toL1",
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
  "slug": "continuous-l1-tol1--35fbc5abc6cfb7a26c363f4f",
  "source": {
    "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1606,
    "line": 1562,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35fbc5abc6cfb7a26c363f4f89d37741d224d49dae62fb21c02fbc5dc981823f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4d4582-620c-bda9-b6c9-2bc68a8dbf12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1562–1606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_L1_toL1 {μ' : Measure α} (c' : ℝ≥0∞) (hc' : c' ≠ ∞) (hμ'_le : μ' ≤ c' • μ) :
    Continuous fun f : α →₁[μ] G =>
      (Integrable.of_measure_le_smul c' hc' hμ'_le (L1.integrable_coeFn f)).toL1 f := by
  by_cases hc'0 : c' = 0
  · have hμ'0 : μ' = 0 := by rw [← Measure.nonpos_iff_eq_zero']; refine' hμ'_le.trans _; simp [hc'0]
    have h_im_zero :
      (fun f : α →₁[μ] G =>
          (Integrable.of_measure_le_smul c' hc' hμ'_le (L1.integrable_coeFn f)).toL1 f) =
        0 := by
      ext1 f; ext1; simp_rw [hμ'0]; simp only [ae_zero, EventuallyEq, eventually_bot]
    rw [h_im_zero]
    exact continuous_zero
  rw [Metric.continuous_iff]
  intro f ε hε_pos
  use ε / 2 / c'.toReal
  refine' ⟨div_pos (half_pos hε_pos) (toReal_pos hc'0 hc'), _⟩
  intro g hfg
  rw [Lp.dist_def] at hfg ⊢
  let h_int := fun f' : α →₁[μ] G => (L1.integrable_coeFn f').of_measure_le_smul c' hc' hμ'_le
  have :
    snorm (⇑(Integrable.toL1 g (h_int g)) - ⇑(Integrable.toL1 f (h_int f))) 1 μ' =
      snorm (⇑g - ⇑f) 1 μ' :=
    snorm_congr_ae ((Integrable.coeFn_toL1 _).sub (Integrable.coeFn_toL1 _))
  rw [this]
  have h_snorm_ne_top : snorm (⇑g - ⇑f) 1 μ ≠ ∞ := by
    rw [← snorm_congr_ae (Lp.coeFn_sub _ _)]; exact Lp.snorm_ne_top _
  have h_snorm_ne_top' : snorm (⇑g - ⇑f) 1 μ' ≠ ∞ := by
    refine' ((snorm_mono_measure _ hμ'_le).trans_lt _).ne
    rw [snorm_smul_measure_of_ne_zero hc'0, smul_eq_mul]
    refine' ENNReal.mul_lt_top _ h_snorm_ne_top
    simp [hc', hc'0]
  calc
    (snorm (⇑g - ⇑f) 1 μ').toReal ≤ (c' * snorm (⇑g - ⇑f) 1 μ).toReal := by
      rw [toReal_le_toReal h_snorm_ne_top' (ENNReal.mul_ne_top hc' h_snorm_ne_top)]
      refine' (snorm_mono_measure (⇑g - ⇑f) hμ'_le).trans _
      rw [snorm_smul_measure_of_ne_zero hc'0, smul_eq_mul]
      simp
    _ = c'.toReal * (snorm (⇑g - ⇑f) 1 μ).toReal := toReal_mul
    _ ≤ c'.toReal * (ε / 2 / c'.toReal) :=
      (mul_le_mul le_rfl hfg.le toReal_nonneg toReal_nonneg)
    _ = ε / 2 := by
      refine' mul_div_cancel' (ε / 2) _; rw [Ne.def, toReal_eq_zero_iff]; simp [hc', hc'0]
    _ < ε := half_lt_self hε_pos
#align measure_theory.continuous_L1_to_L1 MeasureTheory.continuous_L1_toL1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean#L1562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7c05bdb9d0e7092b58d232427abb73b2122a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
