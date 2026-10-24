# actual_joint_add_work_uniform_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e055d9a7-de03-72f6-5af5-7cadc0a57ddc",
  "kind": "theorem",
  "lexical_name": "actual_joint_add_work_uniform_error",
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
  "slug": "actual-joint-add-work-uniform-error--cb4e2f9f0df0cb5705f1cb54",
  "source": {
    "blob": "dc0c02b22029aafb60be38bcc197e012922d1614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb4e2f9f0df0cb5705f1cb54ddaf9807f4dd373679d3a2167f6702dfdda23f17",
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

Occurrence: `result:e055d9a7-de03-72f6-5af5-7cadc0a57ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_add_work_uniform_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A +
        criticalMangoldtWork A| ≤ C := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨2 + C_F, by linarith, ?_⟩
  intro A hA
  exact joint_add_work_abs_le C_F A hA (hF A hA)

/-- Complete classification has the same witnessed error budget for every inspected divisor set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc0c02b22029aafb60be38bcc197e012922d1614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
