# event_taylor_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2831fe-1edd-1ae4-562d-2b326bdd9a19",
  "kind": "theorem",
  "lexical_name": "event_taylor_error",
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
  "slug": "event-taylor-error--c81c54e0cba6e626711f3f13",
  "source": {
    "blob": "7e475170f09ee7d8c7ab8f114394ebeecd8d79ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 153,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c81c54e0cba6e626711f3f13e84f94a970d524cc11689ba287626f849f6d53a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2831fe-1edd-1ae4-562d-2b326bdd9a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem event_taylor_error {A : ℝ} (hA : 200 ≤ A) {N n : ℕ}
    (hn : 2 ≤ n) (hnN : n ≤ N) :
    |sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) -
      (Real.log n - Real.log (shellEndpoint N n)) *
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (shellEndpoint N n))|
      ≤ 10 / (A ^ 2 * (n : ℝ)) := by
  have h := sourceCorrelation_linear_taylor_bound_five hA
    (Real.log (shellEndpoint N n)) (Real.log n - Real.log (shellEndpoint N n))
  rw [show Real.log (shellEndpoint N n) +
      (Real.log n - Real.log (shellEndpoint N n)) = Real.log n by ring] at h
  apply h.trans
  have hg := shell_log_squared_le hn hnN
  have hA0 : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  calc
    _ ≤ 5 / A ^ 2 * (4 / (n : ℝ)) / 2 := by gcongr
    _ = _ := by ring

/-- Exact denominator conversion makes the native quadratic-impulse provider usable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant99ed5b053200cdc7be4653b17ceb44bc1e314e72356631b630b704c2cb2b9818.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e475170f09ee7d8c7ab8f114394ebeecd8d79ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
