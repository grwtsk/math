# positiveLogLift_dilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a8f2640-703e-5c00-ef29-eed318a757c2",
  "kind": "theorem",
  "lexical_name": "positiveLogLift_dilation",
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
  "slug": "positiveloglift-dilation--00b14986d0985ca44f93420c",
  "source": {
    "blob": "71302826b97f9540cf1ce67127a2ea561f339d7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b14986d0985ca44f93420c7116530c4c5c77b41c4a0a7acb88b1cadd5b670c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a8f2640-703e-5c00-ef29-eed318a757c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveLogLift_dilation (f : ℝ → ℝ) {a x : ℝ} (ha : 0 < a) (hx : 0 < x) :
    positiveLogLift f (a*x) = Real.exp (-Real.log a/2) *
      positiveLogLift (fun t => f (t+Real.log a)) x := by
  simp only [positiveLogLift,if_pos (mul_pos ha hx),if_pos hx,Real.log_mul ha.ne' hx.ne']
  rw [show -(Real.log a+Real.log x)/2 = -Real.log a/2 + -Real.log x/2 by ring,
    Real.exp_add]
  rw [add_comm (Real.log a)]
  ring

end ContinuousResearch.LogarithmicSource
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71302826b97f9540cf1ce67127a2ea561f339d7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
