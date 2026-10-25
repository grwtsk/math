# validateRhetoricallyGroundedResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a24567d4c895089d6089423be7df09bd3cbb126f540a86825cf58ebf821cd648",
  "kind": "def",
  "lexical_name": "validateRhetoricallyGroundedResponse",
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
  "slug": "validaterhetoricallygroundedresponse--6395ac9abb54dbebd65d0cf5",
  "source": {
    "blob": "b95cdccf1ba80eea51e703ed7a62842a0a87619e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6395ac9abb54dbebd65d0cf50fe70d6aeebaa474f4a776d4980d9572cc6b1742",
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

Occurrence: `declaration:a24567d4c895089d6089423be7df09bd3cbb126f540a86825cf58ebf821cd648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def validateRhetoricallyGroundedResponse
    (context : GroundingContext)
    (registry : RhetoricalEvidenceRegistry)
    (response : GroundedResponse) :
    Except RhetoricalResponseGroundingError
      (CheckedRhetoricalGroundedResponse context registry response) := by
  by_cases snapshotMatches :
      response.snapshotId = context.terrain.manifest.snapshotId
  · cases clausesResult : validateClauseList context response.clauses with
    | error error =>
        cases error with
        | clauseRejected clauseId reason =>
            exact .error (.clauseRejected clauseId reason)
        | staleSnapshot => exact .error .staleSnapshot
        | rhetoricalRegistryRequired =>
            exact .error
              (.rhetoricalLocatorRejected response.responseId .uncertifiedGramTrace)
    | ok clausesChecked =>
        cases locatorResult : validateRhetoricalLocatorList
            registry response.clauses response.rhetoricalLocators with
        | error rejected =>
            exact .error (.rhetoricalLocatorRejected rejected.1 rejected.2)
        | ok rhetoricalLocatorsChecked =>
            exact .ok {
              snapshotMatches
              clausesChecked
              rhetoricalLocatorsChecked }
  · exact .error .staleSnapshot

/-- Every clause in an accepted response has a grounding certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95cdccf1ba80eea51e703ed7a62842a0a87619e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
