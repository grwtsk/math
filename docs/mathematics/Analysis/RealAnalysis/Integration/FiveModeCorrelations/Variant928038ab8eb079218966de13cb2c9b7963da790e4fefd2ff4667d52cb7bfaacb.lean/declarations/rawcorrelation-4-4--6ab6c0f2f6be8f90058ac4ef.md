# rawCorrelation_4_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30ab3835-1993-1b08-43da-4e8a57578d68",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_4_4",
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
  "slug": "rawcorrelation-4-4--6ab6c0f2f6be8f90058ac4ef",
  "source": {
    "blob": "491395177ce6dd590f0017d0aedd1604ddaff0e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab6c0f2f6be8f90058ac4ef073e26d411a5958aded4f45d5313e6a64253569b",
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

Occurrence: `result:30ab3835-1993-1b08-43da-4e8a57578d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_4_4 (h : ℝ) :
    rawCorrelation 2 2 h = (2 / 9) + -1 * h + (5 / 3) * h^3 + (-9 / 8) * h^5 + (5 / 16) * h^7 + (-35 / 1152) * h^9 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 2 y * mode 2 (y-h)) =
      (fun y => (9 / 64) + (-45 / 32) * h^2 + (105 / 64) * h^4 +
        ((45 / 16) * h + (-105 / 16) * h^3) * y^1 +
        ((-45 / 16) + (765 / 32) * h^2 + (-525 / 32) * h^4) * y^2 +
        ((-555 / 16) * h + (525 / 8) * h^3) * y^3 +
        ((555 / 32) + (-3675 / 32) * h^2 + (1225 / 64) * h^4) * y^4 +
        ((1575 / 16) * h + (-1225 / 16) * h^3) * y^5 +
        ((-525 / 16) + (3675 / 32) * h^2) * y^6 +
        ((-1225 / 16) * h) * y^7 +
        ((1225 / 64)) * y^8) := by
    funext y
    simp only [mode_four]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-4/6 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491395177ce6dd590f0017d0aedd1604ddaff0e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
