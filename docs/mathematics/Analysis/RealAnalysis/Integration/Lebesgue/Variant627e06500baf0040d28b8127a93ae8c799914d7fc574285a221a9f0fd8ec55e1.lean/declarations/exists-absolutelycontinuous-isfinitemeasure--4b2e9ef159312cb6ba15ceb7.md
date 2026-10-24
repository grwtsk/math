# exists_absolutelyContinuous_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75ab2158-2fd3-bd84-a007-2a83f85909a2",
  "kind": "theorem",
  "lexical_name": "exists_absolutelyContinuous_isFiniteMeasure",
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
  "slug": "exists-absolutelycontinuous-isfinitemeasure--4b2e9ef159312cb6ba15ceb7",
  "source": {
    "blob": "36852aae1b786e2c3955ba9e963b7eae7ca6e3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2130,
    "line": 2105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b2e9ef159312cb6ba15ceb747b54011a403ca1a3315accde6945c90112ba841",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75ab2158-2fd3-bd84-a007-2a83f85909a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2105–2130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_absolutelyContinuous_isFiniteMeasure {m : MeasurableSpace α} (μ : Measure α)
    [SigmaFinite μ] : ∃ ν : Measure α, IsFiniteMeasure ν ∧ μ ≪ ν := by
  obtain ⟨g, gpos, gmeas, hg⟩ :
    ∃ g : α → ℝ≥0, (∀ x : α, 0 < g x) ∧ Measurable g ∧ ∫⁻ x : α, ↑(g x) ∂μ < 1 :=
    exists_pos_lintegral_lt_of_sigmaFinite μ one_ne_zero
  refine' ⟨μ.withDensity fun x => g x, isFiniteMeasure_withDensity hg.ne_top, _⟩
  have : μ = (μ.withDensity fun x => g x).withDensity fun x => (g x)⁻¹ := by
    have A : ((fun x : α => (g x : ℝ≥0∞)) * fun x : α => (g x : ℝ≥0∞)⁻¹) = 1 := by
      ext1 x
      exact ENNReal.mul_inv_cancel (ENNReal.coe_ne_zero.2 (gpos x).ne') ENNReal.coe_ne_top
    rw [← withDensity_mul _ gmeas.coe_nnreal_ennreal gmeas.coe_nnreal_ennreal.inv, A,
      withDensity_one]
  nth_rw 1 [this]
  exact withDensity_absolutelyContinuous _ _
#align measure_theory.exists_absolutely_continuous_is_finite_measure MeasureTheory.exists_absolutelyContinuous_isFiniteMeasure

end SigmaFinite

section TendstoIndicator

variable {α : Type _} [MeasurableSpace α] {A : Set α}
variable {ι : Type _} (L : Filter ι) [IsCountablyGenerated L] {As : ι → Set α}

/-- If the indicators of measurable sets `Aᵢ` tend pointwise almost everywhere to the indicator
of a measurable set `A` and we eventually have `Aᵢ ⊆ B` for some set `B` of finite measure, then
the measures of `Aᵢ` tend to the measure of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean#L2105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36852aae1b786e2c3955ba9e963b7eae7ca6e3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
