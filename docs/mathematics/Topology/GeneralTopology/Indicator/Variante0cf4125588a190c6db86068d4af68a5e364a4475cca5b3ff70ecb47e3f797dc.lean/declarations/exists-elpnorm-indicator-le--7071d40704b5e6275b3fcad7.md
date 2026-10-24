# exists_eLpNorm_indicator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808fce24-4dfd-db5b-34d2-3b50e6f937cf",
  "kind": "theorem",
  "lexical_name": "exists_eLpNorm_indicator_le",
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
  "slug": "exists-elpnorm-indicator-le--7071d40704b5e6275b3fcad7",
  "source": {
    "blob": "a0838aa4668972c6683ee80323bb6489a4a3732f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7071d40704b5e6275b3fcad757756d757de8d3ab592b5966e245cb5e0b41018c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808fce24-4dfd-db5b-34d2-3b50e6f937cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eLpNorm_indicator_le (hp : p ≠ ∞) (c : E) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → NullMeasurableSet s μ →
      eLpNorm (s.indicator fun _ => c) p μ ≤ ε := by
  rcases eq_or_ne p 0 with (rfl | h'p)
  · exact ⟨1, zero_lt_one, fun s _ hs => by
      have : AEStronglyMeasurable (s.indicator fun _ => c) μ := by fun_prop
      simp [eLpNorm_exponent_zero this]⟩
  have hp₀ : 0 < p := bot_lt_iff_ne_bot.2 h'p
  have hp₀' : 0 ≤ 1 / p.toReal := div_nonneg zero_le_one ENNReal.toReal_nonneg
  have hp₀'' : 0 < p.toReal := ENNReal.toReal_pos hp₀.ne' hp
  obtain ⟨η, hη_pos, hη_le⟩ : ∃ η : ℝ≥0, 0 < η ∧ ‖c‖ₑ * (η : ℝ≥0∞) ^ (1 / p.toReal) ≤ ε := by
    have :
      Filter.Tendsto (fun x : ℝ≥0 => ((‖c‖₊ * x ^ (1 / p.toReal) : ℝ≥0) : ℝ≥0∞)) (𝓝 0)
        (𝓝 (0 : ℝ≥0)) := by
      rw [ENNReal.tendsto_coe]
      convert! (NNReal.continuousAt_rpow_const (Or.inr hp₀')).tendsto.const_mul _
      simp [hp₀''.ne']
    have hε' : 0 < ε := hε.bot_lt
    obtain ⟨δ, hδ, hδε'⟩ := NNReal.nhds_zero_basis.eventually_iff.mp (this.eventually_le_const hε')
    obtain ⟨η, hη, hηδ⟩ := exists_between hδ
    refine ⟨η, hη, ?_⟩
    simpa only [← ENNReal.coe_rpow_of_nonneg _ hp₀', enorm, ← ENNReal.coe_mul] using hδε' hηδ
  refine ⟨η, hη_pos, fun s hs hsc => ?_⟩
  grw [eLpNorm_indicator_const_le c p, ← hη_le, hs]
  exact hsc

section Topology
variable {X : Type*} [TopologicalSpace X] [MeasurableSpace X]
  {μ : Measure X} [IsFiniteMeasureOnCompacts μ]

/-- A bounded measurable function with compact support is in L^p. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variante0cf4125588a190c6db86068d4af68a5e364a4475cca5b3ff70ecb47e3f797dc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0838aa4668972c6683ee80323bb6489a4a3732f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
