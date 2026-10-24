# discarded_angular_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c3cfefc-6316-3668-f99a-945f3b6b8372",
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
  "slug": "discarded-angular-energy--e876101c7eff392b2393ffb3",
  "source": {
    "blob": "e4d4ca25b9536ae71d52e5273dd64b7d42682cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e876101c7eff392b2393ffb36e22ebe47d03448981063bbb490219e8927627cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3cfefc-6316-3668-f99a-945f3b6b8372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d4ca25b9536ae71d52e5273dd64b7d42682cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
