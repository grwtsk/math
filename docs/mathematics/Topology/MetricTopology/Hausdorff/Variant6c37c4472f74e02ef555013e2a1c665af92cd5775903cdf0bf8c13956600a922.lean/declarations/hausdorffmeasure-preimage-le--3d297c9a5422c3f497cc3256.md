# hausdorffMeasure_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac404d02-ddac-d7fa-e623-c49f5d1299e9",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_preimage_le",
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
  "slug": "hausdorffmeasure-preimage-le--3d297c9a5422c3f497cc3256",
  "source": {
    "blob": "065cf771a127130908e3624200b95d0b0a238f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 770,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d297c9a5422c3f497cc32569d71f2245f9a12f64a83b90abdda65eeff4a546d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac404d02-ddac-d7fa-e623-c49f5d1299e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_preimage_le (hf : AntilipschitzWith K f) (hd : 0 ≤ d) (s : Set Y) :
    μH[d] (f ⁻¹' s) ≤ (K : ℝ≥0∞) ^ d * μH[d] s := by
  rcases eq_or_ne K 0 with (rfl | h0)
  · rcases eq_empty_or_nonempty (f ⁻¹' s) with (hs | ⟨x, hx⟩)
    · simp only [hs, measure_empty, zero_le]
    have : f ⁻¹' s = {x} := by
      haveI : Subsingleton X := hf.subsingleton
      have : (f ⁻¹' s).Subsingleton := subsingleton_univ.anti (subset_univ _)
      exact (subsingleton_iff_singleton hx).1 this
    rw [this]
    rcases eq_or_lt_of_le hd with (rfl | h'd)
    · simp only [ENNReal.rpow_zero, one_mul, mul_zero]
      rw [hausdorffMeasure_zero_singleton]
      exact one_le_hausdorffMeasure_zero_of_nonempty ⟨f x, hx⟩
    · haveI := noAtoms_hausdorff X h'd
      simp only [zero_le, measure_singleton]
  have hKd0 : (K : ℝ≥0∞) ^ d ≠ 0 := by simp [h0]
  have hKd : (K : ℝ≥0∞) ^ d ≠ ∞ := by simp [hd]
  simp only [hausdorffMeasure_apply, ENNReal.mul_iSup, ENNReal.mul_iInf_of_ne hKd0 hKd,
    ← ENNReal.tsum_mul_left]
  refine iSup₂_le fun ε ε0 => ?_
  refine le_iSup₂_of_le (ε / K) (by simp [ε0.ne']) ?_
  refine le_iInf₂ fun t hst => le_iInf fun htε => ?_
  replace hst : f ⁻¹' s ⊆ _ := preimage_mono hst; rw [preimage_iUnion] at hst
  refine iInf₂_le_of_le _ hst (iInf_le_of_le (fun n => ?_) ?_)
  · exact (hf.ediam_preimage_le _).trans (ENNReal.mul_le_of_le_div' <| htε n)
  · refine ENNReal.tsum_le_tsum fun n => iSup_le_iff.2 fun hft => ?_
    simp only [nonempty_of_nonempty_preimage hft, ciSup_pos]
    rw [← ENNReal.mul_rpow_of_nonneg _ _ hd]
    exact ENNReal.rpow_le_rpow (hf.ediam_preimage_le _) hd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065cf771a127130908e3624200b95d0b0a238f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
