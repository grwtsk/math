# arithmeticExponent_of_spikes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d69ece50-e32f-a2e5-1a64-8b7c4da385fa",
  "kind": "theorem",
  "lexical_name": "arithmeticExponent_of_spikes",
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
  "slug": "arithmeticexponent-of-spikes--7d6c37eabc2e75fae3c01052",
  "source": {
    "blob": "b39d6cf29e119cfff1a261c954d91201d85c2137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 409,
    "path": "GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6c37eabc2e75fae3c01052811a19f1897fca54aabcac11a71d04c1161ceee6",
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

Occurrence: `result:d69ece50-e32f-a2e5-1a64-8b7c4da385fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticExponent_of_spikes (q : ℕ → ℕ) (gamma : ℕ → ℝ)
    (hq : ∀ n, 0 < q n) (htop : Tendsto q atTop atTop)
    (hgamma : ∀ n, 0 ≤ gamma n)
    (hstep : ∀ n, ∃ previous : ℕ, previous ≤ q n ∧
      q (n + 1) = spikeStep (gamma n) previous (q n)) :
    arithmeticExponent q = limsup (fun n ↦ ENNReal.ofReal (gamma n)) atTop := by
  have hr : Tendsto (fun n ↦ (q n : ℝ)) atTop atTop :=
    tendsto_natCast_atTop_atTop.comp htop
  let err : ℕ → ENNReal :=
    fun n ↦ ENNReal.ofReal ((Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ))
  let strengths : ℕ → ENNReal := fun n ↦ ENNReal.ofReal (gamma n)
  have he : Tendsto err atTop (𝓝 0) := by
    have hl : Tendsto (fun n ↦ Real.log (q n : ℝ) / (q n : ℝ)) atTop (𝓝 0) := by
      simpa [Function.comp_def] using
        (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp hr
    have he' : Tendsto
        (fun n ↦ (Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ)) atTop (𝓝 0) := by
      simpa only [add_div, add_zero] using (tendsto_const_nhds.div_atTop hr).add hl
    simpa only [ENNReal.ofReal_zero] using ENNReal.tendsto_ofReal he'
  have hb (n : ℕ) :
      gamma n ≤ Real.log (q (n + 1) : ℝ) / (q n : ℝ) ∧
      Real.log (q (n + 1) : ℝ) / (q n : ℝ) ≤
        gamma n + (Real.log 3 + Real.log (q n : ℝ)) / (q n : ℝ) := by
    obtain ⟨p, hp, hs⟩ := hstep n
    simpa only [← hs] using spike_rate_bounds (hgamma n) (hq n) hp
  apply le_antisymm
  · calc
      arithmeticExponent q ≤ limsup (strengths + err) atTop := by
        apply limsup_le_limsup (Eventually.of_forall fun n ↦ ?_)
        exact (ENNReal.ofReal_le_ofReal (hb n).2).trans ENNReal.ofReal_add_le
      _ = limsup strengths atTop := ENNReal.limsup_add_of_right_tendsto_zero he strengths
  · exact limsup_le_limsup (Eventually.of_forall fun n ↦ ENNReal.ofReal_le_ofReal (hb n).1)

/-- Converging effective strengths give the claimed finite exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39d6cf29e119cfff1a261c954d91201d85c2137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
