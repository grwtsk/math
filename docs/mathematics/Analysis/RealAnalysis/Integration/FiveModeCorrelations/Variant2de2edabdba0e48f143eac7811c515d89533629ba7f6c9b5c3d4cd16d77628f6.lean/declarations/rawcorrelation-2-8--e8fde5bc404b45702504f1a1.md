# rawCorrelation_2_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:299a8c41-0b42-fd56-a329-7e69f018c9a0",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_2_8",
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
  "slug": "rawcorrelation-2-8--e8fde5bc404b45702504f1a1",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8fde5bc404b45702504f1a125c38a79ba76ffd8f1ea49906a31b1b123501cdd",
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

Occurrence: `result:299a8c41-0b42-fd56-a329-7e69f018c9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_2_8 (h : ℝ) :
    rawCorrelation 1 4 h = -1 * h + (33 / 2) * h^2 + (-175 / 2) * h^3 + (429 / 2) * h^4 + (-2205 / 8) * h^5 + (3003 / 16) * h^6 + (-231 / 4) * h^7 + (429 / 128) * h^9 + (-39 / 256) * h^11 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 4 (y-h)) =
      (fun y => (-35 / 256) + (315 / 64) * h^2 + (-3465 / 128) * h^4 + (3003 / 64) * h^6 + (-6435 / 256) * h^8 +
        ((-315 / 32) * h + (3465 / 32) * h^3 + (-9009 / 32) * h^5 + (6435 / 32) * h^7) * y^1 +
        ((1365 / 256) + (-2835 / 16) * h^2 + (100485 / 128) * h^4 + (-27027 / 32) * h^6 + (19305 / 256) * h^8) * y^2 +
        ((2205 / 16) * h + (-40425 / 32) * h^3 + (9009 / 4) * h^5 + (-19305 / 32) * h^7) * y^3 +
        ((-5355 / 128) + (38115 / 32) * h^2 + (-495495 / 128) * h^4 + (135135 / 64) * h^6) * y^4 +
        ((-4851 / 8) * h + (135135 / 32) * h^3 + (-135135 / 32) * h^5) * y^5 +
        ((16401 / 128) + (-45045 / 16) * h^2 + (675675 / 128) * h^4) * y^6 +
        ((16731 / 16) * h + (-135135 / 32) * h^3) * y^7 +
        ((-42471 / 256) + (135135 / 64) * h^2) * y^8 +
        ((-19305 / 32) * h) * y^9 +
        ((19305 / 256)) * y^10) := by
    funext y
    simp only [mode_two, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-4/4 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
