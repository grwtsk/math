# of_mem_extremePoints_measure_univ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d5a9067-78da-30ba-0c42-fd51b814c7d9",
  "kind": "theorem",
  "lexical_name": "of_mem_extremePoints_measure_univ_eq",
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
  "slug": "of-mem-extremepoints-measure-univ-eq--b8331db9ab8f47cac495e3b5",
  "source": {
    "blob": "f546eb5ecc5f195a960c9b9895f43a8f8327fd79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 36,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8331db9ab8f47cac495e3b5f6da6be39307a85330471b4a56e1eb1dab3557ec",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d5a9067-78da-30ba-0c42-fd51b814c7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mem_extremePoints_measure_univ_eq {c : ℝ≥0∞} (hc : c ≠ ∞)
    (h : μ ∈ extremePoints ℝ≥0∞ {ν | MeasurePreserving f ν ν ∧ ν univ = c}) : Ergodic f μ := by
  have hf : MeasurePreserving f μ μ := h.1.1
  rcases eq_or_ne c 0 with rfl | hc₀
  · convert zero_measure hf.measurable
    rw [← measure_univ_eq_zero, h.1.2]
  · refine ⟨hf, ⟨?_⟩⟩
    have : IsFiniteMeasure μ := by
      constructor
      rwa [h.1.2, lt_top_iff_ne_top]
    set S := {ν | MeasurePreserving f ν ν ∧ ν univ = c}
    have {s : Set X} (hsm : MeasurableSet s) (hfs : f ⁻¹' s = s) (hμs : μ s ≠ 0) :
        c • μ[|s] ∈ S := by
      refine ⟨.smul_measure (.smul_measure ?_ _) c, ?_⟩
      · convert hf.restrict_preimage hsm
        exact hfs.symm
      · rw [Measure.smul_apply, (cond_isProbabilityMeasure hμs).1, smul_eq_mul, mul_one]
    intro s hsm hfs
    by_contra H
    obtain ⟨hs, hs'⟩ : μ s ≠ 0 ∧ μ sᶜ ≠ 0 := by
      simpa [eventuallyConst_set, ae_iff, and_comm] using H
    obtain ⟨hcond, -⟩ : c • μ[|s] = μ ∧ c • μ[|sᶜ] = μ := by
      apply h.2 (this hsm hfs hs) (this hsm.compl (by rw [preimage_compl, hfs]) hs')
      refine ⟨μ s / c, μ sᶜ / c, ENNReal.div_pos hs hc, ENNReal.div_pos hs' hc, ?_, ?_⟩
      · rw [← ENNReal.add_div, measure_add_measure_compl hsm, h.1.2, ENNReal.div_self hc₀ hc]
      · simp [ProbabilityTheory.cond, smul_smul, ← mul_assoc, ENNReal.div_mul_cancel,
          ENNReal.mul_inv_cancel, *]
    rw [← hcond] at hs'
    simp [ProbabilityTheory.cond_apply, hsm] at hs'

/-- An extreme point of the set of invariant probability measures is an ergodic measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f546eb5ecc5f195a960c9b9895f43a8f8327fd79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
