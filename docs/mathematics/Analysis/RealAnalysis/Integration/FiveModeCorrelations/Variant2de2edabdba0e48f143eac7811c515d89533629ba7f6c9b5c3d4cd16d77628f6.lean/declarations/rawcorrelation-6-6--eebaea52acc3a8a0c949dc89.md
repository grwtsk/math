# rawCorrelation_6_6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:219d35b2-be05-f12e-e5e8-bfeb9534f231",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_6_6",
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
  "slug": "rawcorrelation-6-6--eebaea52acc3a8a0c949dc89",
  "source": {
    "blob": "edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 284,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eebaea52acc3a8a0c949dc8904bc7aa2c52aafafd023fa99178f0942273b57ee",
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

Occurrence: `result:219d35b2-be05-f12e-e5e8-bfeb9534f231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_6_6 (h : ℝ) :
    rawCorrelation 3 3 h = (2 / 13) + -1 * h + (7 / 2) * h^3 + (-21 / 4) * h^5 + (15 / 4) * h^7 + (-175 / 128) * h^9 + (63 / 256) * h^11 + (-231 / 13312) * h^13 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 3 y * mode 3 (y-h)) =
      (fun y => (25 / 256) + (-525 / 256) * h^2 + (1575 / 256) * h^4 + (-1155 / 256) * h^6 +
        ((525 / 128) * h + (-1575 / 64) * h^3 + (3465 / 128) * h^5) * y^1 +
        ((-525 / 128) + (20475 / 256) * h^2 + (-1575 / 8) * h^4 + (24255 / 256) * h^6) * y^2 +
        ((-14175 / 128) * h + (19425 / 32) * h^3 + (-72765 / 128) * h^5) * y^3 +
        ((14175 / 256) + (-124425 / 128) * h^2 + (231525 / 128) * h^4 + (-72765 / 256) * h^6) * y^4 +
        ((51345 / 64) * h + (-55125 / 16) * h^3 + (218295 / 128) * h^5) * y^5 +
        ((-17115 / 64) + (491715 / 128) * h^2 + (-72765 / 16) * h^4 + (53361 / 256) * h^6) * y^6 +
        ((-147735 / 64) * h + (218295 / 32) * h^3 + (-160083 / 128) * h^5) * y^7 +
        ((147735 / 256) + (-1528065 / 256) * h^2 + (800415 / 256) * h^4) * y^8 +
        ((363825 / 128) * h + (-266805 / 64) * h^3) * y^9 +
        ((-72765 / 128) + (800415 / 256) * h^2) * y^10 +
        ((-160083 / 128) * h) * y^11 +
        ((53361 / 256)) * y^12) := by
    funext y
    simp only [mode_six]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-6/8 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant2de2edabdba0e48f143eac7811c515d89533629ba7f6c9b5c3d4cd16d77628f6.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc610fbc7bfe3fa0f32318c64cfa3ad6e00d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
