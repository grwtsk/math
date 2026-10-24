# spike_rate_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d1c6b0-4338-e6da-47bd-d31257cf3044",
  "kind": "theorem",
  "lexical_name": "spike_rate_bounds",
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
  "slug": "spike-rate-bounds--bb16cdfbc6819780faa52df7",
  "source": {
    "blob": "b39d6cf29e119cfff1a261c954d91201d85c2137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 357,
    "path": "GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb16cdfbc6819780faa52df7f39330bbf6ac0c093f8fdd7755b919d543d2a9cd",
  "verification": {
    "reference": "docs/verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d1c6b0-4338-e6da-47bd-d31257cf3044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spike_rate_bounds {gamma : ℝ} {previous current : ℕ}
    (hgamma : 0 ≤ gamma) (hcurrent : 0 < current) (hprevious : previous ≤ current) :
    gamma ≤ Real.log (spikeStep gamma previous current : ℝ) / (current : ℝ) ∧
    Real.log (spikeStep gamma previous current : ℝ) / (current : ℝ) ≤
      gamma + (Real.log 3 + Real.log (current : ℝ)) / (current : ℝ) := by
  have hc : (0 : ℝ) < current := by exact_mod_cast hcurrent
  have hc1 : (1 : ℝ) ≤ current := by exact_mod_cast Nat.succ_le_of_lt hcurrent
  have hp : (previous : ℝ) ≤ current := by exact_mod_cast hprevious
  have he1 : 1 ≤ Real.exp (gamma * current) := Real.one_le_exp_iff.2
    (mul_nonneg hgamma (Nat.cast_nonneg _))
  have hl := Nat.le_ceil (Real.exp (gamma * current))
  have hu := Nat.ceil_lt_add_one (le_of_lt (Real.exp_pos (gamma * current)))
  have hcast : (spikeStep gamma previous current : ℝ) =
      (spikeCoefficient gamma current : ℝ) * current + previous := by
    simp [spikeStep]
  have hlo : Real.exp (gamma * current) ≤ (spikeStep gamma previous current : ℝ) := by
    rw [hcast]
    change Real.exp (gamma * current) ≤
      (Nat.ceil (Real.exp (gamma * current)) : ℝ) * current + previous
    nlinarith [show (0 : ℝ) ≤ previous from Nat.cast_nonneg previous]
  have hhi : (spikeStep gamma previous current : ℝ) ≤
      3 * Real.exp (gamma * current) * current := by
    rw [hcast]
    change (Nat.ceil (Real.exp (gamma * current)) : ℝ) * current + previous ≤ _
    nlinarith
  have hs := lt_of_lt_of_le (Real.exp_pos _) hlo
  constructor
  · have h := Real.log_le_log (Real.exp_pos _) hlo
    rw [Real.log_exp] at h
    exact (le_div_iff₀ hc).2 h
  · have h := Real.log_le_log hs hhi
    rw [Real.log_mul (by positivity) (ne_of_gt hc),
      Real.log_mul (by norm_num : (3 : ℝ) ≠ 0) (ne_of_gt (Real.exp_pos _)),
      Real.log_exp] at h
    apply (div_le_iff₀ hc).2
    have he := div_mul_cancel₀ (Real.log 3 + Real.log (current : ℝ)) (ne_of_gt hc)
    nlinarith

/-- Only selected spike strengths enter the arithmetic control stream. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39d6cf29e119cfff1a261c954d91201d85c2137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
