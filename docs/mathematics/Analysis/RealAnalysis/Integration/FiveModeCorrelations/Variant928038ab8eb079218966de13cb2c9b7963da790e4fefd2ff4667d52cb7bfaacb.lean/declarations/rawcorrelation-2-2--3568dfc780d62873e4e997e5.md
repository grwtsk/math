# rawCorrelation_2_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d568abd3-5eca-7353-fb0a-8b2cb9f5e627",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_2_2",
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
  "slug": "rawcorrelation-2-2--3568dfc780d62873e4e997e5",
  "source": {
    "blob": "491395177ce6dd590f0017d0aedd1604ddaff0e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3568dfc780d62873e4e997e5b34c47fc6052b3641ee330b9784f6c47e646d1a0",
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

Occurrence: `result:d568abd3-5eca-7353-fb0a-8b2cb9f5e627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_2_2 (h : ℝ) :
    rawCorrelation 1 1 h = (2 / 5) + -1 * h + (1 / 2) * h^3 + (-3 / 40) * h^5 := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 1 y * mode 1 (y-h)) =
      (fun y => (1 / 4) + (-3 / 4) * h^2 +
        ((3 / 2) * h) * y^1 +
        ((-3 / 2) + (9 / 4) * h^2) * y^2 +
        ((-9 / 2) * h) * y^3 +
        ((9 / 4)) * y^4) := by
    funext y
    simp only [mode_two]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-2/4 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491395177ce6dd590f0017d0aedd1604ddaff0e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
