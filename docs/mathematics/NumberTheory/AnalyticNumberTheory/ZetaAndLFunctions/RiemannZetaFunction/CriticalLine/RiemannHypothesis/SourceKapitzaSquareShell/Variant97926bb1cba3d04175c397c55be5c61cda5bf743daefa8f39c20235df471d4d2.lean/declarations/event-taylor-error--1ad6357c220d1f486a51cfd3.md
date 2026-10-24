# event_taylor_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26d6069f-bd1f-8b8a-8418-8d9a7db19398",
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
  "slug": "event-taylor-error--1ad6357c220d1f486a51cfd3",
  "source": {
    "blob": "b78de21624aa249d45b2360caa754f7f89aa5597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant97926bb1cba3d04175c397c55be5c61cda5bf743daefa8f39c20235df471d4d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ad6357c220d1f486a51cfd3b11db69b8157a1b727b68365e0fa6c736ce1b8fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant97926bb1cba3d04175c397c55be5c61cda5bf743daefa8f39c20235df471d4d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d6069f-bd1f-8b8a-8418-8d9a7db19398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–164.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant97926bb1cba3d04175c397c55be5c61cda5bf743daefa8f39c20235df471d4d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShell/Variant97926bb1cba3d04175c397c55be5c61cda5bf743daefa8f39c20235df471d4d2.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b78de21624aa249d45b2360caa754f7f89aa5597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
