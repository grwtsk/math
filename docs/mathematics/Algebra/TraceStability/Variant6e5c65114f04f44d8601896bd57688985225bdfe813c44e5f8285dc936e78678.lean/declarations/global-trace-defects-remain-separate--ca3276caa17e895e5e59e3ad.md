# global_trace_defects_remain_separate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94bd7ed8-a32d-7393-4198-dc431349ae95",
  "kind": "theorem",
  "lexical_name": "global_trace_defects_remain_separate",
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
  "slug": "global-trace-defects-remain-separate--ca3276caa17e895e5e59e3ad",
  "source": {
    "blob": "2e2ae40e080f3109ff035c0fe0acf450920ca982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 74,
    "path": "GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3276caa17e895e5e59e3ad8d27cfd42be8c6ba02fcc59cf45f43db0c40e43f",
  "verification": {
    "reference": "docs/verification/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94bd7ed8-a32d-7393-4198-dc431349ae95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_trace_defects_remain_separate
    (canonical afterLaw afterOperator afterCorrespondence : ℝ)
    (lawDefect operatorDefect correspondenceDefect : ℝ)
    (lawBound : |afterLaw - canonical| ≤ lawDefect)
    (operatorBound :
      |afterOperator - afterLaw| ≤ operatorDefect)
    (correspondenceBound :
      |afterCorrespondence - afterOperator| ≤
        correspondenceDefect) :
    |afterCorrespondence - canonical| ≤
      lawDefect + operatorDefect + correspondenceDefect := by
  have first :=
    law_and_operator_trace_defects_compose
      canonical afterLaw afterOperator
      operatorDefect lawDefect
      operatorBound lawBound
  have firstReordered :
      |afterOperator - canonical| ≤
        lawDefect + operatorDefect := by
    linarith
  have second :=
    law_and_operator_trace_defects_compose
      canonical afterOperator afterCorrespondence
      correspondenceDefect
      (lawDefect + operatorDefect)
      correspondenceBound firstReordered
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2ae40e080f3109ff035c0fe0acf450920ca982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
