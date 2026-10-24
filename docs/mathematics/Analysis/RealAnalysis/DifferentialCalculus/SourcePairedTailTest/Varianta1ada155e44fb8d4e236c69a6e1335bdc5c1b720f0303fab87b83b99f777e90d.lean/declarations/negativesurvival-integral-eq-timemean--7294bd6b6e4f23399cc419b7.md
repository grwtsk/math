# negativeSurvival_integral_eq_timeMean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3703219db0898eec0e539d8898bc17176400fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3560e21c-16fe-0cc2-d057-165ba81fa50c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22de36dd-91a0-a810-aafe-cbda9f5317df",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_integral_eq_timeMean",
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
  "slug": "negativesurvival-integral-eq-timemean--7294bd6b6e4f23399cc419b7",
  "source": {
    "blob": "df3703219db0898eec0e539d8898bc17176400fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Varianta1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7294bd6b6e4f23399cc419b75cbedd942eb3fd1bfb289eec4880a0bcc29d4219",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Varianta1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22de36dd-91a0-a810-aafe-cbda9f5317df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_integral_eq_timeMean {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, negativeSurvival A u) = negativeTimeMean A := by
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun u : ℝ => u) (u' := fun _ => (1 : ℝ))
    (v := negativeSurvival A) (v' := fun u => -(negativeSlope A u) / negativeMass A)
    (fun u _ => hasDerivAt_id u) (fun u _ => negativeSurvival_hasDerivAt hA u)
    (continuous_const.intervalIntegrable 0 (2 * A))
    ((hc.neg.div_const _).intervalIntegrable 0 (2 * A))
  simp only [negativeSurvival_at_upper, negativeSurvival_at_zero hA, mul_zero, zero_mul,
    sub_zero, zero_sub, one_mul] at hi
  have he : (fun u : ℝ => u * (-(negativeSlope A u) / negativeMass A)) =
      fun u => -(u * negativeSlope A u) / negativeMass A := by
    funext u
    ring
  rw [he, intervalIntegral.integral_div, intervalIntegral.integral_neg, neg_div] at hi
  unfold negativeTimeMean
  linarith

/-- The complete drift is the negative time mean minus the actual continuous half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Varianta1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePairedTailTest/Varianta1ada155e44fb8d4e236c69a6e1335bdc5c1b720f0303fab87b83b99f777e90d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3703219db0898eec0e539d8898bc17176400fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
