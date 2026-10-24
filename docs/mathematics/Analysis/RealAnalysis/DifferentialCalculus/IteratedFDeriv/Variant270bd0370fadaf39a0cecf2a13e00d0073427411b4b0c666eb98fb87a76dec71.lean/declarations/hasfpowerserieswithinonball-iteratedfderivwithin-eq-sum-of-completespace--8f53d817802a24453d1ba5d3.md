# HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a672cb0645eb08694b53c6c2b240f57fb271d02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4250f72e-d510-cf82-c438-1e239687eeda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6d2d9ed-f98f-ab6f-fc5a-4ea80edc0654",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_completeSpace",
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
  "slug": "hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-completespace--8f53d817802a24453d1ba5d3",
  "source": {
    "blob": "4a672cb0645eb08694b53c6c2b240f57fb271d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f53d817802a24453d1ba5d38fa6ba867431fa55ca11720e5f47d142795a195d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d2d9ed-f98f-ab6f-fc5a-4ea80edc0654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_completeSpace [CompleteSpace F]
    (h : HasFPowerSeriesWithinOnBall f p s x r)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) {n : ℕ} (v : Fin n → E) :
    iteratedFDerivWithin 𝕜 n f s x v = ∑ σ : Perm (Fin n), p n (fun i ↦ v (σ i)) := by
  have : iteratedFDerivWithin 𝕜 n f s x
      = iteratedFDerivWithin 𝕜 n f (s ∩ EMetric.ball x r) x :=
    (iteratedFDerivWithin_inter_open EMetric.isOpen_ball (EMetric.mem_ball_self h.r_pos)).symm
  rw [this]
  apply HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset
  · exact h.mono inter_subset_left
  · apply h.analyticOn.mono
    rw [insert_eq_of_mem hx]
  · exact hs.inter EMetric.isOpen_ball
  · exact ⟨hx, EMetric.mem_ball_self h.r_pos⟩
  · exact inter_subset_right

/-- If a function has a power series in a ball, then its `n`-th iterated derivative is given by
`(v₁, ..., vₙ) ↦ ∑ pₙ (v_{σ (1)}, ..., v_{σ (n)})` where the sum is over all
permutations of `{1, ..., n}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant270bd0370fadaf39a0cecf2a13e00d0073427411b4b0c666eb98fb87a76dec71.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a672cb0645eb08694b53c6c2b240f57fb271d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
