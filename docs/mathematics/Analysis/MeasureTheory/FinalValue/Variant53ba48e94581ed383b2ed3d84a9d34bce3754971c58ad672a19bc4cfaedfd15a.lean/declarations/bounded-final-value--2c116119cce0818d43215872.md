# bounded_final_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a1f7bb7-a167-4c06-39be-ac6574ec51c1",
  "kind": "theorem",
  "lexical_name": "bounded_final_value",
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
  "slug": "bounded-final-value--2c116119cce0818d43215872",
  "source": {
    "blob": "7affecf16f9c11b4b2c5872b1020a0c72c7fddca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 35,
    "path": "GRWTSK/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c116119cce0818d4321587243a06d1342e68fc2ea22ccfb96dbf93464819d2f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a1f7bb7-a167-4c06-39be-ac6574ec51c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_final_value {r : ℝ → ℝ} {C L : ℝ}
    (hr : Measurable r)
    (hb : ∀ t : ℝ, 0 ≤ t → |r t| ≤ C)
    (ht : Tendsto r atTop (𝓝 L)) :
    Tendsto (fun s : ℝ => s * (∫ t in Ioi (0 : ℝ), Real.exp (-s*t) * r t))
      (𝓝[>] (0 : ℝ)) (𝓝 L) := by
  have hlim : Tendsto (fun s : ℝ =>
      ∫ u in Ioi (0 : ℝ), Real.exp (-u) * r (u/s))
      (𝓝[>] (0 : ℝ))
      (𝓝 (∫ u in Ioi (0 : ℝ), Real.exp (-u) * L)) := by
    apply tendsto_integral_filter_of_dominated_convergence
      (μ := volume.restrict (Ioi (0 : ℝ)))
      (F := fun s u : ℝ => Real.exp (-u) * r (u/s))
      (f := fun u : ℝ => Real.exp (-u) * L)
      (fun u : ℝ => Real.exp (-u) * C)
    · exact Filter.Eventually.of_forall fun s =>
        ((Real.measurable_exp.comp measurable_neg).mul
          (hr.comp (measurable_id.div_const s))).aestronglyMeasurable
    · filter_upwards [self_mem_nhdsWithin] with s hs
      exact ae_restrict_of_forall_mem measurableSet_Ioi fun u hu => by
        rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs,
          abs_of_pos (Real.exp_pos _)]
        exact mul_le_mul_of_nonneg_left (hb (u/s) (div_nonneg hu.le hs.le))
          (Real.exp_pos _).le
    · have hi := (integrableOn_exp_mul_Ioi (a := (-1 : ℝ)) (by norm_num) 0).mul_const C
      simpa only [neg_one_mul] using hi
    · exact ae_restrict_of_forall_mem measurableSet_Ioi fun u hu => by
        have huTop : Tendsto (fun s : ℝ => u/s) (𝓝[>] (0 : ℝ)) atTop := by
          simpa only [div_eq_mul_inv] using
            (tendsto_const_mul_atTop_iff_pos tendsto_inv_nhdsGT_zero).mpr hu
        exact tendsto_const_nhds.mul (ht.comp huTop)
  have hunit : (∫ u in Ioi (0 : ℝ), Real.exp (-u) * L) = L := by
    rw [integral_mul_const]
    have he := integral_exp_mul_Ioi (a := (-1 : ℝ)) (by norm_num) 0
    have he' : (∫ u in Ioi (0 : ℝ), Real.exp (-u)) = 1 := by
      simpa only [neg_one_mul, mul_zero, Real.exp_zero, neg_div, div_neg,
        div_one, neg_neg] using he
    rw [he', one_mul]
  rw [hunit] at hlim
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  exact (laplace_rescale r hs).symm

end ContinuousResearch.FinalValue

#check ContinuousResearch.FinalValue.laplace_rescale
#print ContinuousResearch.FinalValue.laplace_rescale
#print axioms ContinuousResearch.FinalValue.laplace_rescale
#check ContinuousResearch.FinalValue.bounded_final_value
#print ContinuousResearch.FinalValue.bounded_final_value
#print axioms ContinuousResearch.FinalValue.bounded_final_value
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FinalValue/Variant53ba48e94581ed383b2ed3d84a9d34bce3754971c58ad672a19bc4cfaedfd15a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7affecf16f9c11b4b2c5872b1020a0c72c7fddca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
