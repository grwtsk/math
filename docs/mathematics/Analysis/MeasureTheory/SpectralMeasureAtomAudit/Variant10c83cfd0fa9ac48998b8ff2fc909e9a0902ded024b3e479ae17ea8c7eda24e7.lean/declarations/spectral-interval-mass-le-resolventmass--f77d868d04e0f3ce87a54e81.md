# spectral_interval_mass_le_resolventMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b3cc9ef-9c8b-7aba-19d2-719ec79e20d5",
  "kind": "theorem",
  "lexical_name": "spectral_interval_mass_le_resolventMass",
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
  "slug": "spectral-interval-mass-le-resolventmass--f77d868d04e0f3ce87a54e81",
  "source": {
    "blob": "57f0652ae18e955682d6959c80619a861468c68a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 116,
    "path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f77d868d04e0f3ce87a54e81e12fbf6731640e0a755c41ebe0d8d0f135859ff7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b3cc9ef-9c8b-7aba-19d2-719ec79e20d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_interval_mass_le_resolventMass (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) :
    ν.real (Set.Icc 0 (⟨α, hα.le⟩ : ℝ≥0)) ≤ 2 * resolventMass ν α := by
  let s : Set ℝ≥0 := Set.Icc 0 ⟨α, hα.le⟩
  have hm : MeasurableSet s := measurableSet_Icc
  have hi := integral_mono ((integrable_const (1 : ℝ)).indicator hm)
    ((resolventMassKernel_integrable ν α hα).const_mul 2)
    (fun x => show s.indicator (fun _ => (1 : ℝ)) x ≤
      2 * resolventMassKernel α x from by
      by_cases hx : x ∈ s
      · rw [Set.indicator_of_mem hx]
        have hxα : (x : ℝ) ≤ α := hx.2
        have hd : 0 < (x : ℝ) + α := add_pos_of_nonneg_of_pos x.coe_nonneg hα
        dsimp [resolventMassKernel]
        rw [← mul_div_assoc, le_div_iff₀ hd]
        linarith
      · rw [Set.indicator_of_notMem hx]
        exact mul_nonneg (by norm_num) (resolventMassKernel_nonneg_le_one α hα x).1)
  rw [integral_indicator_const 1 hm, integral_const_mul] at hi
  simpa only [resolventMass, smul_eq_mul, mul_one, s] using hi

end SpectralMeasureAtomScratch

#print SpectralMeasureAtomScratch.resolventMassKernel
#print axioms SpectralMeasureAtomScratch.resolventMassKernel
#print SpectralMeasureAtomScratch.resolventMass
#print axioms SpectralMeasureAtomScratch.resolventMass
#print SpectralMeasureAtomScratch.resolventMassKernel_nonneg_le_one
#print axioms SpectralMeasureAtomScratch.resolventMassKernel_nonneg_le_one
#print SpectralMeasureAtomScratch.resolventMassKernel_measurable
#print axioms SpectralMeasureAtomScratch.resolventMassKernel_measurable
#print SpectralMeasureAtomScratch.resolventMassKernel_integrable
#print axioms SpectralMeasureAtomScratch.resolventMassKernel_integrable
#print SpectralMeasureAtomScratch.resolventMass_nonneg_le_total
#print axioms SpectralMeasureAtomScratch.resolventMass_nonneg_le_total
#print SpectralMeasureAtomScratch.resolventMassKernel_tendsto_zero_right
#print axioms SpectralMeasureAtomScratch.resolventMassKernel_tendsto_zero_right
#print SpectralMeasureAtomScratch.resolventMass_tendsto_zero_atom
#print axioms SpectralMeasureAtomScratch.resolventMass_tendsto_zero_atom
#print SpectralMeasureAtomScratch.zero_atom_le_resolventMass
#print axioms SpectralMeasureAtomScratch.zero_atom_le_resolventMass
#print SpectralMeasureAtomScratch.spectral_interval_mass_le_resolventMass
#print axioms SpectralMeasureAtomScratch.spectral_interval_mass_le_resolventMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant10c83cfd0fa9ac48998b8ff2fc909e9a0902ded024b3e479ae17ea8c7eda24e7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f0652ae18e955682d6959c80619a861468c68a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
