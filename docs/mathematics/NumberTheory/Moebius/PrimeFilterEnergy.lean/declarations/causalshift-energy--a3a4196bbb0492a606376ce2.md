# causalShift_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:135e5793-a019-325b-2ceb-fece5c4857c1",
  "kind": "theorem",
  "lexical_name": "causalShift_energy",
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
  "slug": "causalshift-energy--a3a4196bbb0492a606376ce2",
  "source": {
    "blob": "bc9f1b27c8350304ca5ae7a1476f1a366df326e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a4196bbb0492a606376ce2bc2524ab1daf21197f3e42ec3ee30c37609472ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:135e5793-a019-325b-2ceb-fece5c4857c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalShift_energy {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    {a T : ℝ} (ha : 0 ≤ a) (hT : 0 ≤ T) :
    noteEnergy (causalShift a f) T = noteEnergy f (T - a) := by
  have hs := causalShift_continuous hf hf0 a
  by_cases haT : a ≤ T
  · have hz : (∫ u in (0 : ℝ)..a, causalShift a f u ^ 2) = 0 := by
      calc
        _ = ∫ u in (0 : ℝ)..a, (0 : ℝ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le ha] at hu
          by_cases h : a ≤ u
          · have he : u = a := le_antisymm hu.2 h
            simp [causalShift, he, hf0]
          · simp [causalShift, h]
        _ = 0 := intervalIntegral.integral_zero
    have he : (∫ u in a..T, causalShift a f u ^ 2) =
        ∫ u in (0 : ℝ)..T - a, f u ^ 2 := by
      calc
        _ = ∫ u in a..T, f (u - a) ^ 2 := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le haT] at hu
          simp [causalShift, hu.1]
        _ = _ := by
          simpa only [sub_self] using
            intervalIntegral.integral_comp_sub_right (fun u ↦ f u ^ 2) a (a := a) (b := T)
    unfold noteEnergy
    rw [max_eq_right hT, max_eq_right (sub_nonneg.mpr haT),
      ← intervalIntegral.integral_add_adjacent_intervals
        (show IntervalIntegrable (fun u ↦ causalShift a f u ^ 2) volume 0 a from
          (hs.pow 2).intervalIntegrable 0 a)
        (show IntervalIntegrable (fun u ↦ causalShift a f u ^ 2) volume a T from
          (hs.pow 2).intervalIntegrable a T), hz, he,
      zero_add]
  · unfold noteEnergy
    rw [max_eq_right hT, max_eq_left (by linarith : T - a ≤ 0)]
    simp only [intervalIntegral.integral_same]
    calc
      _ = ∫ u in (0 : ℝ)..T, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hT] at hu
        simp [causalShift, show ¬a ≤ u by linarith [hu.2]]
      _ = 0 := intervalIntegral.integral_zero

/-- Exact recurrence for any continuous waveform vanishing at its causal origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterEnergy.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc9f1b27c8350304ca5ae7a1476f1a366df326e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
