# AdmittedAccessRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f75892a73ef0346a34bbdb7bbe93efdc14f22e478974c84e0d6300a3d22ba10f",
  "kind": "structure",
  "lexical_name": "AdmittedAccessRequest",
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
  "slug": "admittedaccessrequest--fc810ee7bf64521e67de6752",
  "source": {
    "blob": "c48efbc2705ac3d3b9cb763aeb2fdcf33742563a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc810ee7bf64521e67de675280a1abdb31f6bddc9327f1310c07e73d2226774a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f75892a73ef0346a34bbdb7bbe93efdc14f22e478974c84e0d6300a3d22ba10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmittedAccessRequest
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  requestId : RequestId
  requestDigest : RequestDigest
  authority : AccessAuthority
  objective : AccessObjective
  plan : ModePlan objective
  scope : RelationScope G
  admissibility : AdmissibilityProfile G
  source : G.Node
  target : Option G.Node
  neighbors :
    NeighborEnumeration G scope admissibility
  modeProfile :
    profiles.Profile plan.primary
  budget : TraversalBudget
  verification : VerificationProfileRef
  presentation : PresentationProfileRef
  contextCut : ContextCutId
  principal : PrincipalId
  cutDigest : CutDigest
  authoritySupports :
    AuthoritySupports authority objective
  targetPresent :
    objective.requiresTarget = true →
      target.isSome
  sourceAdmissible :
    NodeAdmissible admissibility source
  targetAdmissible :
    ∀ targetNode,
      target = some targetNode →
        NodeAdmissible admissibility targetNode
  cutDigest_eq :
    cutDigest = G.digest

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c48efbc2705ac3d3b9cb763aeb2fdcf33742563a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
