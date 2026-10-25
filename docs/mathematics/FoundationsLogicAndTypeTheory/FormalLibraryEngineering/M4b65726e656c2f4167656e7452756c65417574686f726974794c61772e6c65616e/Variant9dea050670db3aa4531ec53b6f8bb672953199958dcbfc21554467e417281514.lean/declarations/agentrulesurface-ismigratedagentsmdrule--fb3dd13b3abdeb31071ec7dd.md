# AgentRuleSurface.isMigratedAgentsMdRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bc1f78444c315827c938be44319fb7a75d10e5308c5578c62bd122d475f1c74",
  "kind": "def",
  "lexical_name": "AgentRuleSurface.isMigratedAgentsMdRule",
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
  "slug": "agentrulesurface-ismigratedagentsmdrule--fb3dd13b3abdeb31071ec7dd",
  "source": {
    "blob": "d51419bc99ccf287db36a2bc1137d744f0d3e753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb3dd13b3abdeb31071ec7dd69b8f7d9d4f6b6dc973f9c5a95780ac39a51b7a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bc1f78444c315827c938be44319fb7a75d10e5308c5578c62bd122d475f1c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AgentRuleSurface.isMigratedAgentsMdRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.migratedToAgentsMd

/-- Rule attachment to a statement surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d51419bc99ccf287db36a2bc1137d744f0d3e753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
