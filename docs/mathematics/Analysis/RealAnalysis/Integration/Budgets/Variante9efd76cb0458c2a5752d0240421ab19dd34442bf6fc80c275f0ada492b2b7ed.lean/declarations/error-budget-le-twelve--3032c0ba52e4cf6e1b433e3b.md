# error_budget_le_twelve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83b356b6-945e-f5d1-ac5f-03617e372e15",
  "kind": "theorem",
  "lexical_name": "error_budget_le_twelve",
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
  "slug": "error-budget-le-twelve--3032c0ba52e4cf6e1b433e3b",
  "source": {
    "blob": "edaa0bddf80cfcf4eaed73052fae331224074279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3032c0ba52e4cf6e1b433e3b6a0fb15661223c32c7d087c309a0818a8c970f2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83b356b6-945e-f5d1-ac5f-03617e372e15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_budget_le_twelve {A d : ℝ} (hA : 1 ≤ A) (_hd : 1 ≤ d) :
    (2 + 10 / A) / Real.sqrt d ≤ 12 / Real.sqrt d := by
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
  have ha : 0 < A := by linarith
  have h : 10 / A ≤ (10 : ℝ) := (div_le_iff₀ ha).2 (by linarith)
  linarith

end
end InnerAbel.Budgets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaa0bddf80cfcf4eaed73052fae331224074279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
