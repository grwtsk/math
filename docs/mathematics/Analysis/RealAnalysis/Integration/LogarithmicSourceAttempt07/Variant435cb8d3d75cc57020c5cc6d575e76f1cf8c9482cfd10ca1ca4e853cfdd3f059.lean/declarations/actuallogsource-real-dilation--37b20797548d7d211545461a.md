# actualLogSource_real_dilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbfee79c-3943-734d-73ae-6036cbfaf8a4",
  "kind": "theorem",
  "lexical_name": "actualLogSource_real_dilation",
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
  "slug": "actuallogsource-real-dilation--37b20797548d7d211545461a",
  "source": {
    "blob": "f3be0f210be8f9804366ed3dbf6773fba114ec98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37b20797548d7d211545461a58f182aa6037bf2a28bc120176772b42cb8a622f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbfee79c-3943-734d-73ae-6036cbfaf8a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogSource_real_dilation (A t : ℝ) {a : ℝ} (ha : 0 < a) :
    Real.exp (t/2)*actualLogSource A (a*Real.exp t) =
      Real.exp (-Real.log a/2)*normalizedTest explicitSecondDerivative A (t+Real.log a) := by
  rw [actualLogSource,positiveLogLift_dilation _ ha (Real.exp_pos t),positiveLogLift_exp]
  calc
    _ = (Real.exp (t/2)*Real.exp (-t/2)) *
      (Real.exp (-Real.log a/2)*normalizedTest explicitSecondDerivative A (t+Real.log a)) := by ring
    _ = _ := by rw [←Real.exp_add,show t/2+-t/2=0 by ring,Real.exp_zero,one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt07/Variant435cb8d3d75cc57020c5cc6d575e76f1cf8c9482cfd10ca1ca4e853cfdd3f059.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3be0f210be8f9804366ed3dbf6773fba114ec98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
