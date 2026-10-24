# actualXiSevenReturnRegularization_analyticAt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8c05b0a-eebe-ca0c-36e8-24ea6eba4d6b",
  "kind": "theorem",
  "lexical_name": "actualXiSevenReturnRegularization_analyticAt_one",
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
  "slug": "actualxisevenreturnregularization-analyticat-one--08a31f05684812da05aae844",
  "source": {
    "blob": "bd44f2a348cf875b001dd30572ce1bd10c7a4e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08a31f05684812da05aae8441c288a14477d3b768b7daca278392afb4c03d88e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c05b0a-eebe-ca0c-36e8-24ea6eba4d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenReturnRegularization_analyticAt_one :
    AnalyticAt ℂ actualXiSevenReturnRegularization 1 := by
  have hr := actualZetaPoleCleared_analyticAt_one
  have hz : actualZetaPoleCleared 1 ≠ 0 := by rw [actualZetaPoleCleared_at_one]; norm_num
  have h7 : AnalyticAt ℂ (fun s : ℂ => (7 : ℂ) ^ (-s)) 1 := by
    simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
    fun_prop
  exact ((actualContinuousSevenPoleRegularization_analyticAt_one.sub
    (hr.deriv.div hr hz)).sub (closedHead_analyticAt 1)).add (analyticAt_const.mul h7)

/-- Away from genuine source exceptions, the regularized and original full returns agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd44f2a348cf875b001dd30572ce1bd10c7a4e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
