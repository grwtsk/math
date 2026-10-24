# Memℒp.snormEssSup_indicator_norm_ge_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24a50c0d-62d4-275b-e0c6-77ec46626771",
  "kind": "theorem",
  "lexical_name": "Memℒp.snormEssSup_indicator_norm_ge_eq_zero",
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
  "slug": "mem-p-snormesssup-indicator-norm-ge-eq-zero--3540dc73840bb124590f052b",
  "source": {
    "blob": "05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 239,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3540dc73840bb124590f052bb8ccfbfa50f7159d19026fc8667179061340aa69",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24a50c0d-62d4-275b-e0c6-77ec46626771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.snormEssSup_indicator_norm_ge_eq_zero (hf : Memℒp f ∞ μ)
    (hmeas : StronglyMeasurable f) :
    ∃ M : ℝ, snormEssSup ({ x | M ≤ ‖f x‖₊ }.indicator f) μ = 0 := by
  have hbdd : snormEssSup f μ < ∞ := hf.snorm_lt_top
  refine' ⟨(snorm f ∞ μ + 1).toReal, _⟩
  rw [snormEssSup_indicator_eq_snormEssSup_restrict]
  have : μ.restrict { x : α | (snorm f ⊤ μ + 1).toReal ≤ ‖f x‖₊ } = 0 := by
    simp only [coe_nnnorm, snorm_exponent_top, Measure.restrict_eq_zero]
    have : { x : α | (snormEssSup f μ + 1).toReal ≤ ‖f x‖ } ⊆
        { x : α | snormEssSup f μ < ‖f x‖₊ } := by
      intro x hx
      rw [Set.mem_setOf_eq, ← ENNReal.toReal_lt_toReal hbdd.ne ENNReal.coe_lt_top.ne,
        ENNReal.coe_toReal, coe_nnnorm]
      refine' lt_of_lt_of_le _ hx
      rw [ENNReal.toReal_lt_toReal hbdd.ne]
      · exact ENNReal.lt_add_right hbdd.ne one_ne_zero
      · exact (ENNReal.add_lt_top.2 ⟨hbdd, ENNReal.one_lt_top⟩).ne
    rw [← nonpos_iff_eq_zero]
    refine' (measure_mono this).trans _
    have hle := coe_nnnorm_ae_le_snormEssSup f μ
    simp_rw [ae_iff, not_le] at hle
    exact nonpos_iff_eq_zero.2 hle
  rw [this, snormEssSup_measure_zero]
  exact measurableSet_le measurable_const hmeas.nnnorm.measurable.subtype_coe
#align measure_theory.mem_ℒp.snorm_ess_sup_indicator_norm_ge_eq_zero MeasureTheory.Memℒp.snormEssSup_indicator_norm_ge_eq_zero

/- This lemma is slightly weaker than `MeasureTheory.Memℒp.snorm_indicator_norm_ge_pos_le` as the
latter provides `0 < M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
