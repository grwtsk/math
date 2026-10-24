# rawCorrelation_0_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c18bef-120c-3176-bd75-15dd064dd9ae",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_0_0",
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
  "slug": "rawcorrelation-0-0--21cb66e15428f35aacd3e2cd",
  "source": {
    "blob": "491395177ce6dd590f0017d0aedd1604ddaff0e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21cb66e15428f35aacd3e2cd08523d187b4ecd2b4db8d573c519143fdc9f35f3",
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

Occurrence: `result:f4c18bef-120c-3176-bd75-15dd064dd9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_0_0 (h : ℝ) :
    rawCorrelation 0 0 h = 2 + -1 * h := by
  unfold rawCorrelation
  have expand : (fun y : ℝ => mode 0 y * mode 0 (y-h)) =
      (fun y => 1) := by
    funext y
    simp only [mode_zero]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_const]
  norm_num
  ring

/-- Exact degree-0/2 positive-branch coefficient polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491395177ce6dd590f0017d0aedd1604ddaff0e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
