# rawCorrelation_0_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2898e2e-4f77-5fac-83e6-b0ff8d00dfa5",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_0_8",
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
  "slug": "rawcorrelation-0-8--df24ecbf8b3c04d8167e4cfe",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df24ecbf8b3c04d8167e4cfe977df658c1a0732d1dc4ee5830f71522cb7d1fe2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2898e2e-4f77-5fac-83e6-b0ff8d00dfa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_0_8 (h : ℝ) :
    rawCorrelation 0 4 h = -1 * h + 18 * h^2 + -105 * h^3 + (1155 / 4) * h^4 + (-3465 / 8) * h^5 + (3003 / 8) * h^6 + (-3003 / 16) * h^7 + (6435 / 128) * h^8 + (-715 / 128) * h^9 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 4 (y-h)) =
      (fun y => (35 / 128) + (-315 / 32) * h^2 + (3465 / 64) * h^4 + (-3003 / 32) * h^6 + (6435 / 128) * h^8 +
        ((315 / 16) * h + (-3465 / 16) * h^3 + (9009 / 16) * h^5 + (-6435 / 16) * h^7) * y^1 +
        ((-315 / 32) + (10395 / 32) * h^2 + (-45045 / 32) * h^4 + (45045 / 32) * h^6) * y^2 +
        ((-3465 / 16) * h + (15015 / 8) * h^3 + (-45045 / 16) * h^5) * y^3 +
        ((3465 / 64) + (-45045 / 32) * h^2 + (225225 / 64) * h^4) * y^4 +
        ((9009 / 16) * h + (-45045 / 16) * h^3) * y^5 +
        ((-3003 / 32) + (45045 / 32) * h^2) * y^6 +
        ((-6435 / 16) * h) * y^7 +
        ((6435 / 128)) * y^8) := by
    funext y
    simp only [mode_zero, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/2 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
