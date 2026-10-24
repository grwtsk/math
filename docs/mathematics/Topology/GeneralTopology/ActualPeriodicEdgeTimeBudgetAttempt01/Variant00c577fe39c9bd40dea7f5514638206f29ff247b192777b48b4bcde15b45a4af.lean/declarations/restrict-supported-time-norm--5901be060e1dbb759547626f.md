# restrict_supported_time_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19e3ae2e-d8b2-fb5d-93e6-eb8c6ef61c04",
  "kind": "theorem",
  "lexical_name": "restrict_supported_time_norm",
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
  "slug": "restrict-supported-time-norm--5901be060e1dbb759547626f",
  "source": {
    "blob": "ebecbc1ff4232140e26c07377d0d81a037d769d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5901be060e1dbb759547626fbba4c30e17d610fa6395c77de0f9bf0525d1a860",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19e3ae2e-d8b2-fb5d-93e6-eb8c6ef61c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem restrict_supported_time_norm {A u : ℝ} (hA : 1 ≤ A) (hu : 2 ≤ u)
    (F : ℝ → ℝ) (hc : Continuous F)
    (hz : ∀ t, 2 * A - Real.log u ≤ t → F t = 0)
    {B : ℝ} (hB : 0 ≤ B)
    (hb : ∀ L : ℝ, L = 2 * A - Real.log u → 0 ≤ L →
      (∫ t in 0..L, |F t|) ≤ B) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ), |F t|) ≤ B := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let L := 2 * A - Real.log u
  obtain ⟨hl, hlb⟩ := actual_orders hA
  have hLb := support_upper_le_cutoff hA hu
  by_cases hL : 0 ≤ L
  · have hrestrict := intervalIntegral.integral_mono_interval (μ := volume) hl hlb le_rfl
      (f := fun t => |F t|) (Filter.Eventually.of_forall (fun t => abs_nonneg (F t)))
      (hc.abs.intervalIntegrable 0 b)
    have htail : (∫ t in L..b, |F t|) = 0 := by
      apply intervalIntegral.integral_zero_ae
      exact Filter.Eventually.of_forall (fun t ht => by
        rw [uIoc_of_le hLb] at ht
        rw [hz t ht.1.le, abs_zero])
    have hs := intervalIntegral.integral_add_adjacent_intervals
      (hc.abs.intervalIntegrable 0 L) (hc.abs.intervalIntegrable L b)
    rw [htail, add_zero] at hs
    exact hrestrict.trans (hs ▸ hb L rfl hL)
  · have he : (∫ t in l..b, |F t|) = 0 := by
      apply intervalIntegral.integral_zero_ae
      exact Filter.Eventually.of_forall (fun t ht => by
        rw [uIoc_of_le hlb] at ht
        rw [hz t (by dsimp only [L] at hL; linarith [ht.1]), abs_zero])
    rw [he]
    exact hB

/-- The actual C3/C1 profile has its genuine integrated support-edge gamma budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant00c577fe39c9bd40dea7f5514638206f29ff247b192777b48b4bcde15b45a4af.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebecbc1ff4232140e26c07377d0d81a037d769d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
