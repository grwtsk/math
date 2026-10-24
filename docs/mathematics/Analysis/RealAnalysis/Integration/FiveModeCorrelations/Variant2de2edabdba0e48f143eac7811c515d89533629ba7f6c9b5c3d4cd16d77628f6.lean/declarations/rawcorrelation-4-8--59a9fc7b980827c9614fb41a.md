# rawCorrelation_4_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de4003d-68c2-8408-f201-007b83750334",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_4_8",
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
  "slug": "rawcorrelation-4-8--59a9fc7b980827c9614fb41a",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59a9fc7b980827c9614fb41a8c407f452d64d79a47c77a08350fb1fc2731945c",
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

Occurrence: `result:3de4003d-68c2-8408-f201-007b83750334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_4_8 (h : ℝ) :
    rawCorrelation 2 4 h = -1 * h + 13 * h^2 + (-105 / 2) * h^3 + (715 / 8) * h^4 + (-245 / 4) * h^5 + (63 / 4) * h^7 + (-495 / 128) * h^9 + (143 / 256) * h^11 + (-35 / 1024) * h^13 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 2 y * mode 4 (y-h)) =
      (fun y => (105 / 1024) + (-945 / 256) * h^2 + (10395 / 512) * h^4 + (-9009 / 256) * h^6 + (19305 / 1024) * h^8 +
        ((945 / 128) * h + (-10395 / 128) * h^3 + (27027 / 128) * h^5 + (-19305 / 128) * h^7) * y^1 +
        ((-2415 / 512) + (40635 / 256) * h^2 + (-93555 / 128) * h^4 + (225225 / 256) * h^6 + (-96525 / 512) * h^8) * y^2 +
        ((-19845 / 128) * h + (24255 / 16) * h^3 + (-405405 / 128) * h^5 + (96525 / 64) * h^7) * y^3 +
        ((59815 / 1024) + (-229005 / 128) * h^2 + (1749825 / 256) * h^4 + (-1456455 / 256) * h^6 + (225225 / 1024) * h^8) * y^4 +
        ((71001 / 64) * h + (-578655 / 64) * h^3 + (1666665 / 128) * h^5 + (-225225 / 128) * h^7) * y^5 +
        ((-72009 / 256) + (925155 / 128) * h^2 + (-2477475 / 128) * h^4 + (1576575 / 256) * h^6) * y^6 +
        ((-205425 / 64) * h + (75075 / 4) * h^3 + (-1576575 / 128) * h^5) * y^7 +
        ((622215 / 1024) + (-2927925 / 256) * h^2 + (7882875 / 512) * h^4) * y^8 +
        ((508365 / 128) * h + (-1576575 / 128) * h^3) * y^9 +
        ((-306735 / 512) + (1576575 / 256) * h^2) * y^10 +
        ((-225225 / 128) * h) * y^11 +
        ((225225 / 1024)) * y^12) := by
    funext y
    simp only [mode_four, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-6/6 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
