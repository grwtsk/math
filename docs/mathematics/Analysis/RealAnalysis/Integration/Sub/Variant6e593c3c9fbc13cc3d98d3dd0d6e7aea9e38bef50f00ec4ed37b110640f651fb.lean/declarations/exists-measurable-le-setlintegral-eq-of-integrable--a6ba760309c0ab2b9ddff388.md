# exists_measurable_le_setLIntegral_eq_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d69eeb6-beaa-3b69-add1-d42e4e7c7e67",
  "kind": "theorem",
  "lexical_name": "exists_measurable_le_setLIntegral_eq_of_integrable",
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
  "slug": "exists-measurable-le-setlintegral-eq-of-integrable--a6ba760309c0ab2b9ddff388",
  "source": {
    "blob": "c1301ca819ba6768513e4a05329c0013aecdf545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6ba760309c0ab2b9ddff38892fd548ece2ac7680e32aa71a3a47dd3b6449fc8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d69eeb6-beaa-3b69-add1-d42e4e7c7e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_le_setLIntegral_eq_of_integrable {f : α → ℝ≥0∞} (hf : ∫⁻ a, f a ∂μ ≠ ∞) :
    ∃ (g : α → ℝ≥0∞), Measurable g ∧ g ≤ f ∧ ∀ s : Set α, MeasurableSet s →
      ∫⁻ a in s, f a ∂μ = ∫⁻ a in s, g a ∂μ := by
  obtain ⟨g, hmg, hgf, hifg⟩ := exists_measurable_le_lintegral_eq (μ := μ) f
  use g, hmg, hgf
  refine fun s hms ↦ le_antisymm ?_ (lintegral_mono hgf)
  rw [← compl_compl s, setLIntegral_compl hms.compl, setLIntegral_compl hms.compl, hifg]
  · gcongr; apply hgf
  · rw [hifg] at hf
    exact ne_top_of_le_ne_top hf (setLIntegral_le_lintegral _ _)
  · exact ne_top_of_le_ne_top hf (setLIntegral_le_lintegral _ _)

@[deprecated (since := "2025-04-22")]
alias exists_measurable_le_setLintegral_eq_of_integrable :=
  exists_measurable_le_setLIntegral_eq_of_integrable

end UnifTight

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1301ca819ba6768513e4a05329c0013aecdf545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
