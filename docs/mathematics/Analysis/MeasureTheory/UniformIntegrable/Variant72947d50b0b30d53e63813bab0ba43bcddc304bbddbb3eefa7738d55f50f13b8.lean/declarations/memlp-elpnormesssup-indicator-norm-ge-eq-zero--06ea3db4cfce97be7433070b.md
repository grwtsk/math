# MemLp.eLpNormEssSup_indicator_norm_ge_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a5647e07ed70419066225075ef66917fc4048a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ae46847-80b2-4102-9e31-314d6e480b36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fddc6a10-ba1f-355f-787c-c99dd4e15409",
  "kind": "theorem",
  "lexical_name": "MemLp.eLpNormEssSup_indicator_norm_ge_eq_zero",
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
  "slug": "memlp-elpnormesssup-indicator-norm-ge-eq-zero--06ea3db4cfce97be7433070b",
  "source": {
    "blob": "4a5647e07ed70419066225075ef66917fc4048a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 245,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ea3db4cfce97be7433070bc4407b5b208b43d1a4c894aa9be52017cbf79187",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fddc6a10-ba1f-355f-787c-c99dd4e15409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.eLpNormEssSup_indicator_norm_ge_eq_zero (hf : MemLp f ∞ μ)
    (hmeas : StronglyMeasurable f) :
    ∃ M : ℝ, eLpNormEssSup ({ x | M ≤ ‖f x‖₊ }.indicator f) μ = 0 := by
  have hbdd : eLpNormEssSup f μ < ∞ := hf.eLpNorm_lt_top
  refine ⟨(eLpNorm f ∞ μ + 1).toReal, ?_⟩
  rw [eLpNormEssSup_indicator_eq_eLpNormEssSup_restrict]
  · have : μ.restrict { x : α | (eLpNorm f ⊤ μ + 1).toReal ≤ ‖f x‖₊ } = 0 := by
      simp only [coe_nnnorm, eLpNorm_exponent_top, Measure.restrict_eq_zero]
      have : { x : α | (eLpNormEssSup f μ + 1).toReal ≤ ‖f x‖ } ⊆
          { x : α | eLpNormEssSup f μ < ‖f x‖₊ } := by
        intro x hx
        rw [Set.mem_setOf_eq, ← ENNReal.toReal_lt_toReal hbdd.ne ENNReal.coe_lt_top.ne,
          ENNReal.coe_toReal, coe_nnnorm]
        refine lt_of_lt_of_le ?_ hx
        rw [ENNReal.toReal_lt_toReal hbdd.ne]
        · exact ENNReal.lt_add_right hbdd.ne one_ne_zero
        · exact (ENNReal.add_lt_top.2 ⟨hbdd, ENNReal.one_lt_top⟩).ne
      rw [← nonpos_iff_eq_zero]
      refine (measure_mono this).trans ?_
      have hle := enorm_ae_le_eLpNormEssSup f μ
      simp_rw [ae_iff, not_le] at hle
      exact nonpos_iff_eq_zero.2 hle
    rw [this, eLpNormEssSup_measure_zero]
  exact measurableSet_le measurable_const hmeas.nnnorm.measurable.subtype_coe

/- This lemma is slightly weaker than `MeasureTheory.MemLp.eLpNorm_indicator_norm_ge_pos_le` as the
latter provides `0 < M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5647e07ed70419066225075ef66917fc4048a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
