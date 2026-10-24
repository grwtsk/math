# global_trace_defects_with_two_remainders_remain_separate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d9db13-314c-7171-7418-73897664d902",
  "kind": "theorem",
  "lexical_name": "global_trace_defects_with_two_remainders_remain_separate",
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
  "slug": "global-trace-defects-with-two-remainders-remain-separate--1585b8f9e87c57a1bd731cb6",
  "source": {
    "blob": "2e2ae40e080f3109ff035c0fe0acf450920ca982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 132,
    "path": "GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1585b8f9e87c57a1bd731cb66b8a62a7da89495d88f1d6b3f3a103541216f5aa",
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

Occurrence: `result:c4d9db13-314c-7171-7418-73897664d902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_trace_defects_with_two_remainders_remain_separate
    (canonical afterLaw afterOperator afterCorrespondence
      afterRegularization afterBitfield : ℝ)
    (lawDefect operatorDefect correspondenceDefect
      regularizationDefect bitfieldDefect : ℝ)
    (lawBound : |afterLaw - canonical| ≤ lawDefect)
    (operatorBound :
      |afterOperator - afterLaw| ≤ operatorDefect)
    (correspondenceBound :
      |afterCorrespondence - afterOperator| ≤
        correspondenceDefect)
    (regularizationBound :
      |afterRegularization - afterCorrespondence| ≤
        regularizationDefect)
    (bitfieldBound :
      |afterBitfield - afterRegularization| ≤
        bitfieldDefect) :
    |afterBitfield - canonical| ≤
      lawDefect + operatorDefect + correspondenceDefect +
        regularizationDefect + bitfieldDefect := by
  have first :=
    global_trace_defects_with_remainder_remain_separate
      canonical afterLaw afterOperator afterCorrespondence
      afterRegularization
      lawDefect operatorDefect correspondenceDefect
      regularizationDefect
      lawBound operatorBound correspondenceBound
      regularizationBound
  have second :=
    law_and_operator_trace_defects_compose
      canonical afterRegularization afterBitfield
      bitfieldDefect
      (lawDefect + operatorDefect + correspondenceDefect +
        regularizationDefect)
      bitfieldBound first
  linarith

end Mathematics.SpectralClosure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2ae40e080f3109ff035c0fe0acf450920ca982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
