# discarded_angular_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b9d28e4-ceb4-0fab-a6fd-0e011ac23aba",
  "kind": "theorem",
  "lexical_name": "discarded_angular_energy",
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
  "slug": "discarded-angular-energy--588f669baa0d9f18eed88e12",
  "source": {
    "blob": "d8c02c1251a9e3eb43a3310c6a8ce36b0c0b7104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variant70b1ace5adbc28b8a36a0827bad45158218cc29f902e8948b4232d9a13f22aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588f669baa0d9f18eed88e12241e182631f9d0d1a2453cd8adf34fa178ac5a5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variant70b1ace5adbc28b8a36a0827bad45158218cc29f902e8948b4232d9a13f22aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b9d28e4-ceb4-0fab-a6fd-0e011ac23aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discarded_angular_energy {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 =
      (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H, sourceSpectralSquare A t ξ := by
  have he : (frequencyBand H)ᶜ.indicator
      (fun η ↦ ‖(𝓕 (weightedSourceState A t hA) : ComplexSourceL2) η‖ ^ 2) =ᵐ[volume]
      fun η ↦ (angularTailSet H).indicator (sourceSpectralSquare A t) (2 * Real.pi * η) := by
    filter_upwards [sourceSpectralSquare_scaled hA t] with η hη
    by_cases hm : η ∈ frequencyBand H
    · have ha : ¬ 2 * Real.pi * η ∈ angularTailSet H :=
        not_lt.mpr ((frequencyBand_angular H η).mp hm)
      simp [hm, ha]
    · have ha : 2 * Real.pi * η ∈ angularTailSet H :=
        lt_of_not_ge (fun h ↦ hm ((frequencyBand_angular H η).mpr h))
      simp [hm, ha, hη]
  rw [discarded_standard_energy, ← integral_indicator (frequencyBand_measurable H).compl,
    integral_congr_ae he, Measure.integral_comp_mul_left]
  rw [abs_of_pos (by positivity : 0 < (2 * Real.pi)⁻¹), smul_eq_mul,
    integral_indicator (angularTailSet_measurable H)]

/-- The tail contains the exact Möbius/pickup arithmetic row with every integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variant70b1ace5adbc28b8a36a0827bad45158218cc29f902e8948b4232d9a13f22aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variant70b1ace5adbc28b8a36a0827bad45158218cc29f902e8948b4232d9a13f22aa2.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c02c1251a9e3eb43a3310c6a8ce36b0c0b7104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
