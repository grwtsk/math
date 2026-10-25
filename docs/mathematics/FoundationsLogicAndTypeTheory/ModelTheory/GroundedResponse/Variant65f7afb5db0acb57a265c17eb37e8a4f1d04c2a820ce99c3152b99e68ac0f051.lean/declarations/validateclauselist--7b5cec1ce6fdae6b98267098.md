# validateClauseList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b510e657aace51ac0b116ecfb249ce67a3164b4406726b4b39851b96e436256c",
  "kind": "def",
  "lexical_name": "validateClauseList",
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
  "slug": "validateclauselist--7b5cec1ce6fdae6b98267098",
  "source": {
    "blob": "b95cdccf1ba80eea51e703ed7a62842a0a87619e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b5cec1ce6fdae6b982670980526ed712dd6e0a4f1a8ed8cd60abbfff787a88e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b510e657aace51ac0b116ecfb249ce67a3164b4406726b4b39851b96e436256c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def validateClauseList
    (context : GroundingContext)
    (clauses : List GroundedClause) :
    Except ResponseGroundingError (CheckedClauseList context clauses) := by
  induction clauses with
  | nil =>
      exact .ok { checked := by simp }
  | cons first remaining inductionHypothesis =>
      cases firstResult : validateGroundedClause context first with
      | error reason => exact .error (.clauseRejected first.clauseId reason)
      | ok firstChecked =>
          cases remainingResult : inductionHypothesis with
          | error reason => exact .error reason
          | ok remainingChecked =>
              exact .ok
                { checked := by
                    intro clause membership
                    simp only [List.mem_cons] at membership
                    rcases membership with same | later
                    · subst clause
                      exact ⟨firstChecked⟩
                    · exact remainingChecked.checked clause later }

/-- Successful validation for a whole response. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95cdccf1ba80eea51e703ed7a62842a0a87619e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
