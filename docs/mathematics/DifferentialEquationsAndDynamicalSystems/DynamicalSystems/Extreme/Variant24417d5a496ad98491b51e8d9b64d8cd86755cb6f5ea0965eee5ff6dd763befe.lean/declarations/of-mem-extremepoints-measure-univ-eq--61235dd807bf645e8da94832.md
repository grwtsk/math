# of_mem_extremePoints_measure_univ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d60dd28a83b8d1d1a46a470d331c5dc0bd443eeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:027717fb-83c6-4898-689f-223eb16ceebb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88123e92-f553-74ed-68f0-2a46e88d7871",
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
  "slug": "of-mem-extremepoints-measure-univ-eq--61235dd807bf645e8da94832",
  "source": {
    "blob": "d60dd28a83b8d1d1a46a470d331c5dc0bd443eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 28,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61235dd807bf645e8da948329f15654bfd7d54f3f36edfc9b336c571d69fef8c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88123e92-f553-74ed-68f0-2a46e88d7871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–58.

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

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant24417d5a496ad98491b51e8d9b64d8cd86755cb6f5ea0965eee5ff6dd763befe.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d60dd28a83b8d1d1a46a470d331c5dc0bd443eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
