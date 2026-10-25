# AdmittedAccessRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3af9025c8c77cf12ce58fad37ef23475f83818096d816954a5483c6b6d00cb22",
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
  "slug": "admittedaccessrequest--dbcb7f642c180ae22f935a35",
  "source": {
    "blob": "3b933d0b165720c264bf0265ce847ce09fe5b8a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant15aa7a54b3b0ab108136294953bc85bb12546691267f9f234108a2ccd2b589cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbcb7f642c180ae22f935a3500b0ff87851d8109d490e2e29ae2077388e011cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant15aa7a54b3b0ab108136294953bc85bb12546691267f9f234108a2ccd2b589cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3af9025c8c77cf12ce58fad37ef23475f83818096d816954a5483c6b6d00cb22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–57.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant15aa7a54b3b0ab108136294953bc85bb12546691267f9f234108a2ccd2b589cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant15aa7a54b3b0ab108136294953bc85bb12546691267f9f234108a2ccd2b589cc.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b933d0b165720c264bf0265ce847ce09fe5b8a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
