# rawCorrelation_origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb59c6db-e131-37ba-f068-f84f3f747023",
  "kind": "theorem",
  "lexical_name": "rawCorrelation_origin",
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
  "slug": "rawcorrelation-origin--f766f3c1f6db11171a8d6a58",
  "source": {
    "blob": "491395177ce6dd590f0017d0aedd1604ddaff0e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 401,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f766f3c1f6db11171a8d6a584fbd32f3bc42b472e56ca5ee5854b1e209c468d6",
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

Occurrence: `result:cb59c6db-e131-37ba-f068-f84f3f747023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCorrelation_origin (i j : Fin 5) :
    rawCorrelation i j 0 = if i = j then 2 / modeWeight i else 0 := by
  fin_cases i <;> fin_cases j
  · change rawCorrelation 0 0 0 = 2 / modeWeight 0
    rw [rawCorrelation_0_0]
    norm_num [modeWeight]
  · change rawCorrelation 0 1 0 = 0
    rw [rawCorrelation_0_2]
    norm_num [modeWeight]
  · change rawCorrelation 0 2 0 = 0
    rw [rawCorrelation_0_4]
    norm_num [modeWeight]
  · change rawCorrelation 0 3 0 = 0
    rw [rawCorrelation_0_6]
    norm_num [modeWeight]
  · change rawCorrelation 0 4 0 = 0
    rw [rawCorrelation_0_8]
    norm_num [modeWeight]
  · change rawCorrelation 1 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_2]
    norm_num [modeWeight]
  · change rawCorrelation 1 1 0 = 2 / modeWeight 1
    rw [rawCorrelation_2_2]
    norm_num [modeWeight]
  · change rawCorrelation 1 2 0 = 0
    rw [rawCorrelation_2_4]
    norm_num [modeWeight]
  · change rawCorrelation 1 3 0 = 0
    rw [rawCorrelation_2_6]
    norm_num [modeWeight]
  · change rawCorrelation 1 4 0 = 0
    rw [rawCorrelation_2_8]
    norm_num [modeWeight]
  · change rawCorrelation 2 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 2 0 = 2 / modeWeight 2
    rw [rawCorrelation_4_4]
    norm_num [modeWeight]
  · change rawCorrelation 2 3 0 = 0
    rw [rawCorrelation_4_6]
    norm_num [modeWeight]
  · change rawCorrelation 2 4 0 = 0
    rw [rawCorrelation_4_8]
    norm_num [modeWeight]
  · change rawCorrelation 3 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 2 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_4_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 3 0 = 2 / modeWeight 3
    rw [rawCorrelation_6_6]
    norm_num [modeWeight]
  · change rawCorrelation 3 4 0 = 0
    rw [rawCorrelation_6_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 0 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_0_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 1 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_2_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 2 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_4_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 3 0 = 0
    rw [rawCorrelation_symm]
    rw [rawCorrelation_6_8]
    norm_num [modeWeight]
  · change rawCorrelation 4 4 0 = 2 / modeWeight 4
    rw [rawCorrelation_8_8]
    norm_num [modeWeight]

/-- The raw positive-branch polynomial itself is demonstrably not even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelations/Variant928038ab8eb079218966de13cb2c9b7963da790e4fefd2ff4667d52cb7bfaacb.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491395177ce6dd590f0017d0aedd1604ddaff0e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
