# actual_suffix_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f396583c-de62-1995-cadd-c579c041cccd",
  "kind": "theorem",
  "lexical_name": "actual_suffix_square_le",
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
  "slug": "actual-suffix-square-le--8ca9483ce72b0b678fca173b",
  "source": {
    "blob": "cf0df0f5400f35e7975b84d068564fdc1edf4b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca9483ce72b0b678fca173b0ba293e986358fa53f5486bd2e420ba60c1def87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f396583c-de62-1995-cadd-c579c041cccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_suffix_square_le {N K : ℕ} (hN : 1 ≤ N) :
    (actualSuffix N K 0) ^ 2 ≤ (2 / Real.sqrt N) *
      profileEnergy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K := by
  by_cases hK : K = 0
  · subst K
    simp [actualSuffix, profileEnergy]
  let B := fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)
  let w := fun j => cellClock (N + j) (N + j + 1 : ℕ)
  have hw (j : ℕ) (_hj : j ∈ Finset.range K) : 0 < w j := cellClock_pos (by omega)
  have hW : 0 < ∑ j ∈ Finset.range K, w j := by
    apply Finset.sum_pos hw
    exact ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range K) w (fun j => B j * w j)
    hw hW.ne'
  have hsum : (∑ j ∈ Finset.range K, B j * w j) = actualSuffix N K 0 := by
    simpa only [B, w, actualSuffix, Nat.add_zero] using (actual_signed_work_telescope hN K).symm
  have henergy : (∑ j ∈ Finset.range K, (B j * w j) ^ 2 / w j) =
      profileEnergy B w K := by
    apply Finset.sum_congr rfl
    intro j hj
    field_simp [(hw j hj).ne']
  rw [hsum, henergy] at h
  have hroot := (div_le_iff₀ hW).mp h
  have hE : 0 ≤ profileEnergy B w K :=
    Finset.sum_nonneg (fun j hj => mul_nonneg (sq_nonneg _) (hw j hj).le)
  have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt N := by
    change (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤ _
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  calc
    _ ≤ profileEnergy B w K * (∑ j ∈ Finset.range K, w j) := hroot
    _ ≤ profileEnergy B w K * (2 / Real.sqrt N) := mul_le_mul_of_nonneg_left hwidth hE
    _ = _ := by ring

/-- Under the actual entrance sign and positive suffix, the boundary helps the energy bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0df0f5400f35e7975b84d068564fdc1edf4b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
