# ElementalStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9405c7e53a55bc7651721dd95b135ee48435a035e691fbe79b889dca569d38ed",
  "kind": "structure",
  "lexical_name": "ElementalStep",
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
  "slug": "elementalstep--cf17e4f5c8fba5f87a1c11a3",
  "source": {
    "blob": "26f8faf490ff05dc47c3cef7b3434dd64f9f8b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElementalStep/Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf17e4f5c8fba5f87a1c11a393814c06f878c486952fce44d22bce6bcd75a937",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElementalStep/Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9405c7e53a55bc7651721dd95b135ee48435a035e691fbe79b889dca569d38ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ElementalStep
    (before after : ElementalState) where
  receipt : StepReceipt
  before_digest_exact :
    receipt.beforeDigest = before.stateDigest
  after_digest_exact :
    receipt.afterDigest = after.stateDigest
  point_universe_preserved :
    before.pointUniverse.universeId =
      after.pointUniverse.universeId
  source_addresses_preserved :
    before.immutableSourceAddressIds =
      after.immutableSourceAddressIds
  local_identity_preserved :
    before.projectLocalPointIds =
      after.projectLocalPointIds
  negative_evidence_monotone :
    ∀ elementId ∈ before.negativeElementIds,
      elementId ∈ after.negativeElementIds
  unresolved_branches_monotone :
    ∀ branchId ∈ before.unknownBranchIds,
      branchId ∈ after.unknownBranchIds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElementalStep/Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElementalStep/Varianta277381af91139bf3919c0010ba1993b33fd8bf28d93c208b2e8ff1a807f9429.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f8faf490ff05dc47c3cef7b3434dd64f9f8b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
