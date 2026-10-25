# validateRhetoricallyGroundedResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:352644cdb1bb2ee14a866c0c9a7f21de804d69bb0e5cdb250441ba132880227d",
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
  "slug": "validaterhetoricallygroundedresponse--b6e39c502f368a51be2b012d",
  "source": {
    "blob": "9357fdd538685b7e086149a85eb0247f69fe1da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6e39c502f368a51be2b012df01a3d10194b5a92b6034a59fbd5775da669e7de",
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

Occurrence: `declaration:352644cdb1bb2ee14a866c0c9a7f21de804d69bb0e5cdb250441ba132880227d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–307.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9357fdd538685b7e086149a85eb0247f69fe1da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
