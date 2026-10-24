# rawFourthDerivative_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:594d2b10-98b3-5a7a-b782-55e4427e7c21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5748e1eb-32e1-b883-79a4-1a8987b900f5",
  "kind": "theorem",
  "lexical_name": "rawFourthDerivative_apply",
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
  "slug": "rawfourthderivative-apply--88fb3078b73241b754a851b6",
  "source": {
    "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88fb3078b73241b754a851b6f6cfba995315c1c2eaf7f7e9a787a4aa624327ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5748e1eb-32e1-b883-79a4-1a8987b900f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourthDerivative_apply
    (theta u v w z : E) :
    F.rawFourthDerivative theta u v w z =
      ∑ i : I,
        (F.probability theta i *
            F.centeredStatistic theta i u *
            F.centeredStatistic theta i v *
            F.centeredStatistic theta i w *
            F.centeredStatistic theta i z
          -
        F.covarianceOperator theta z w *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i v)
          -
        F.covarianceOperator theta z v *
            (F.probability theta i *
              F.centeredStatistic theta i u *
              F.centeredStatistic theta i w)
          -
        F.covarianceOperator theta z u *
            (F.probability theta i *
              F.centeredStatistic theta i v *
              F.centeredStatistic theta i w)) := by
  classical
  simp [rawFourthDerivative, F.rawFourthSummandDerivative_apply]

/-- Continuous centered fourth-moment operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
