# validateClauseList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0954056375d5d962afa97140b41ab0932ea1395cc5f53dc34662160976c52671",
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
  "slug": "validateclauselist--db632c22138f2f79b1b03dd2",
  "source": {
    "blob": "9357fdd538685b7e086149a85eb0247f69fe1da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db632c22138f2f79b1b03dd2b8b09c9f08d0f7e6b432a60c61ebb512663e37df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0954056375d5d962afa97140b41ab0932ea1395cc5f53dc34662160976c52671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–62.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9357fdd538685b7e086149a85eb0247f69fe1da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
