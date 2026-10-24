# LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcde6d19-5338-d0a7-8e76-fdb8668811b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cd66f80-29b2-27ab-313b-8329938eb75a",
  "kind": "theorem",
  "lexical_name": "LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂",
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
  "slug": "lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div-aux--eccb874a221f7bebec574042",
  "source": {
    "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eccb874a221f7bebec574042ce4a364435a8c787f2423be73e6f6acf81b20637",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cd66f80-29b2-27ab-313b-8329938eb75a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₂ {s T ε : ℝ} {S : ℝ → ℂ}
    (hS : LocallyIntegrableOn (fun t ↦ S t - l * t) (Set.Ici 1)) (hε : 0 < ε)
    (hs : 1 < s) (hT₁ : 1 ≤ T) (hT : ∀ t ≥ T, ‖S t - l * t‖ ≤ ε * t) :
    (s - 1) * ∫ (t : ℝ) in Set.Ioi T, ‖S t - l * t‖ * t ^ (-s - 1) ≤ ε := by
  have hT₀ : 0 < T := zero_lt_one.trans_le hT₁
  have h {t : ℝ} (ht : 0 < t) : t ^ (-s) = t * t ^ (-s - 1) := by
    rw [Real.rpow_sub ht, Real.rpow_one, mul_div_cancel₀ _ ht.ne']
  calc
    _ ≤ (s - 1) * ∫ (t : ℝ) in Set.Ioi T, ε * t ^ (-s) := by
      refine mul_le_mul_of_nonneg_left (setIntegral_mono_on ?_ ?_ measurableSet_Ioi fun t ht ↦ ?_)
        (sub_pos_of_lt hs).le
      · exact (lemma₂ hs hS hT).mono_set <| Set.Ioi_subset_Ici_iff.mpr hT₁
      · exact (integrableOn_Ioi_rpow_of_lt (neg_lt_neg_iff.mpr hs) hT₀).const_mul _
      · have ht' : 0 < t := hT₀.trans ht
        rw [h ht', ← mul_assoc]
        exact mul_le_mul_of_nonneg_right (hT t ht.le) (Real.rpow_nonneg ht'.le _)
    _ ≤ ε * ((s - 1) * ∫ (t : ℝ) in Set.Ioi 1, t ^ (-s)) := by
      rw [integral_const_mul, ← mul_assoc, ← mul_assoc, mul_comm ε]
      refine mul_le_mul_of_nonneg_left (setIntegral_mono_set ?_ ?_
        (Set.Ioi_subset_Ioi hT₁).eventuallySubset) (mul_nonneg (sub_pos_of_lt hs).le hε.le)
      · exact integrableOn_Ioi_rpow_of_lt (neg_lt_neg_iff.mpr hs) zero_lt_one
      · exact (ae_restrict_iff' measurableSet_Ioi).mpr <| univ_mem' fun t ht ↦
        Real.rpow_nonneg (zero_le_one.trans ht.le) _
    _ = ε := by
      rw [integral_Ioi_rpow_of_lt (by rwa [neg_lt_neg_iff]) zero_lt_one, Real.one_rpow]
      field [show -s + 1 ≠ 0 by linarith]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13dd829fa36d658b96bb84a96f721b30c9ce6ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
