# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.Topology.IsClosedEmbedding.continuousOn_comap_finiteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80c10cca-5c71-6b95-3ace-8652700949c5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.Topology.IsClosedEmbedding.continuousOn_comap_finiteMeasure",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasuretheoryfinitemeasure-varian--7f39c04c11d6880933798e77",
  "source": {
    "blob": "69d017cb6e0c807c38af0c25308317fc6e0829d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 912,
    "line": 879,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f39c04c11d6880933798e77dfe6c22cd4ee1316ed1b90e6c2f5d4cabbe7823d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80c10cca-5c71-6b95-3ace-8652700949c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryFiniteMeasure.Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.Topology.IsClosedEmbedding.continuousOn_comap_finiteMeasure [NormalSpace Ω']
    {f : Ω → Ω'} (hf : IsClosedEmbedding f) :
    ContinuousOn (fun (μ : FiniteMeasure Ω') ↦ μ.comap f) {μ | μ (range f)ᶜ = 0} := by
  intro μ hμ
  simp only [ContinuousWithinAt]
  rw [tendsto_iff_forall_integral_tendsto]
  intro g
  obtain ⟨g', -, hg'⟩ : ∃ g' : Ω' →ᵇ ℝ, ‖g'‖ = ‖g‖ ∧ g' ∘ f = g :=
    exists_extension_norm_eq_of_isClosedEmbedding g hf
  have A x : g x = g' (f x) := by change (⇑g) x = (⇑g' ∘ f) x; simp only [hg']
  simp only [comap, toMeasure_mk, A, ← MeasurableEmbedding.integral_map hf.measurableEmbedding,
    MeasurableEmbedding.map_comap hf.measurableEmbedding]
  have B {ν : FiniteMeasure Ω'} (hν : ν (range f)ᶜ = 0) :
      ∫ y in range f, g' y ∂ν = ∫ y, g' y ∂ν := by
    congr
    simp only [null_iff_toMeasure_null] at hν
    exact Measure.restrict_eq_self_of_ae_mem hν
  rw [B hμ]
  have : Tendsto (fun (ν : FiniteMeasure Ω') ↦ ∫ y, g' y ∂ν) (𝓝[{μ | μ (range f)ᶜ = 0}] μ)
      (𝓝 (∫ (y : Ω'), g' y ∂μ)) := by
    rw [nhdsWithin]
    have A : Tendsto (fun (ν : FiniteMeasure Ω') ↦ ∫ y, g' y ∂ν) (𝓝 μ) (𝓝 (∫ (y : Ω'), g' y ∂μ)) :=
      tendsto_iff_forall_integral_tendsto.1 tendsto_id _
    exact Tendsto.mono_left A inf_le_left
  apply Tendsto.congr' _ this
  filter_upwards [self_mem_nhdsWithin] with ν hν using (B hν).symm

end comap

section map

variable {Ω Ω' : Type*} [MeasurableSpace Ω] [MeasurableSpace Ω']

/-- The push-forward of a finite measure by a function between measurable spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d017cb6e0c807c38af0c25308317fc6e0829d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
