# work_lower_of_joint_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bff007d-fa2c-f80d-34b6-1a414ab9e838",
  "kind": "theorem",
  "lexical_name": "work_lower_of_joint_upper",
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
  "slug": "work-lower-of-joint-upper--e5152f2876b60ca09a5b412d",
  "source": {
    "blob": "dc0c02b22029aafb60be38bcc197e012922d1614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5152f2876b60ca09a5b412d6a4af53b0fae74bce9c651dbe9a92b8e66e16db6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bff007d-fa2c-f80d-34b6-1a414ab9e838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem work_lower_of_joint_upper (D C_F A : ℝ) (hA : 1 ≤ A)
    (hT : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    -(D + 2 + C_F) ≤ criticalMangoldtWork A := by
  have h := (abs_le.mp (joint_add_work_abs_le C_F A hA hF)).1
  linarith

/-- The actual remaining signed covariance estimate is exactly the full-Mangoldt work target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc0c02b22029aafb60be38bcc197e012922d1614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
