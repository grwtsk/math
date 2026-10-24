# rawCorrelation_6_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e10ea2f2-4e79-daf2-81d7-73affd0d18a1",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_6_8",
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
  "slug": "rawcorrelation-6-8--484f130991acdb093181f3d1",
  "source": {
    "blob": "491395177ce6dd590f0017d0aedd1604ddaff0e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484f130991acdb093181f3d1e5d5afe7b413f72a583ae9c5b626f29bfac4353d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e10ea2f2-4e79-daf2-81d7-73affd0d18a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_6_8 (h : ℝ) :
    rawCorrelation 3 4 h = -1 * h + (15 / 2) * h^2 + -14 * h^3 + (63 / 4) * h^5 + (-105 / 8) * h^7 + (825 / 128) * h^9 + (-231 / 128) * h^11 + (273 / 1024) * h^13 + (-33 / 2048) * h^15 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 3 y * mode 4 (y-h)) =
      (fun y => (-175 / 2048) + (1575 / 512) * h^2 + (-17325 / 1024) * h^4 + (15015 / 512) * h^6 + (-32175 / 2048) * h^8 +
        ((-1575 / 256) * h + (17325 / 256) * h^3 + (-45045 / 256) * h^5 + (32175 / 256) * h^7) * y^1 +
        ((9975 / 2048) + (-42525 / 256) * h^2 + (814275 / 1024) * h^4 + (-135135 / 128) * h^6 + (675675 / 2048) * h^8) * y^2 +
        ((1575 / 8) * h + (-513975 / 256) * h^3 + (585585 / 128) * h^5 + (-675675 / 256) * h^7) * y^3 +
        ((-177975 / 2048) + (1415925 / 512) * h^2 + (-5838525 / 512) * h^4 + (2837835 / 256) * h^6 + (-2027025 / 2048) * h^8) * y^4 +
        ((-508095 / 256) * h + (2234925 / 128) * h^3 + (-945945 / 32) * h^5 + (2027025 / 256) * h^7) * y^5 +
        ((1192695 / 2048) + (-2075535 / 128) * h^2 + (26413695 / 512) * h^4 + (-3720717 / 128) * h^6 + (1486485 / 2048) * h^8) * y^6 +
        ((267795 / 32) * h + (-7494795 / 128) * h^3 + (8135127 / 128) * h^5 + (-1486485 / 256) * h^7) * y^7 +
        ((-3767445 / 2048) + (21320145 / 512) * h^2 + (-91756665 / 1024) * h^4 + (10405395 / 512) * h^6) * y^8 +
        ((-4313925 / 256) * h + (21126105 / 256) * h^3 + (-10405395 / 256) * h^5) * y^9 +
        ((6060285 / 2048) + (-12297285 / 256) * h^2 + (52026975 / 1024) * h^4) * y^10 +
        ((513513 / 32) * h + (-10405395 / 256) * h^3) * y^11 +
        ((-4801797 / 2048) + (10405395 / 512) * h^2) * y^12 +
        ((-1486485 / 256) * h) * y^13 +
        ((1486485 / 2048)) * y^14) := by
    funext y
    simp only [mode_six, mode_eight]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-8/8 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491395177ce6dd590f0017d0aedd1604ddaff0e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
