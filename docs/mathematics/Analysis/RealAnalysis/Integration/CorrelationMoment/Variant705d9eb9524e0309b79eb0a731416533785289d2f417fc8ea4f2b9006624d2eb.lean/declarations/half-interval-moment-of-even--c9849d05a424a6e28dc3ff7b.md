# half_interval_moment_of_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c3448db-d68b-711d-b979-2ce75a1e47cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9daf3d0-fcc6-d7bf-d59c-34cfdc78f0eb",
  "kind": "theorem",
  "lexical_name": "half_interval_moment_of_even",
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
  "slug": "half-interval-moment-of-even--c9849d05a424a6e28dc3ff7b",
  "source": {
    "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9849d05a424a6e28dc3ff7b69f05f84ec51af38e6678d620056d192ad9f38c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9daf3d0-fcc6-d7bf-d59c-34cfdc78f0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_interval_moment_of_even (C : ℝ → ℝ) (b σ : ℝ) (hb : 0 ≤ b)
    (heven : Function.Even C) (hsupport : ∀ t, t ∉ Icc (-b) b → C t = 0)
    (hint : Integrable (fun t ↦ Real.exp (σ * t) * C t) volume)
    (hzero : (∫ t, Real.exp (σ * t) * C t) = 0) :
    (∫ t in 0..b, Real.exp (σ * t) * C t) +
      (∫ t in 0..b, Real.exp ((-σ) * t) * C t) = 0 := by
  have hfull : (∫ t, Real.exp (σ * t) * C t) =
      ∫ t in -b..b, Real.exp (σ * t) * C t := by
    calc
      _ = ∫ t, (Icc (-b) b).indicator (fun x ↦ Real.exp (σ * x) * C x) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-b) b
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht, hsupport t ht, mul_zero]
      _ = _ := zeroExtension_integral _ (-b) b (by linarith)
  have hreflection : (∫ t in -b..0, Real.exp (σ * t) * C t) =
      ∫ t in 0..b, Real.exp ((-σ) * t) * C t := by
    calc
      _ = ∫ t in 0..b, Real.exp (σ * (-t)) * C (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg (fun t ↦ Real.exp (σ * t) * C t)
            (a := 0) (b := b)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [heven t]
        congr 2
        ring
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -b) (b := 0) (c := b) hint.intervalIntegrable hint.intervalIntegrable
  rw [hreflection, ← hfull, hzero] at hsplit
  linarith

/-- Positive exponential integrability of the actual normalized test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf59ce65f4f74b603505d13a23150f1fd929c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
