# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e3e3bb30d4698f624afb82b68d53862fd5d2c5dde9123dbc4a3cdd9c8426c5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--dd953b721fbd2ae34f7b9efb",
  "source": {
    "blob": "7de2609e869fe0a44561663d5984663f60ebc8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/IndependentConsumers/Checks/Positive/TypedHostRefinementChecks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd953b721fbd2ae34f7b9efb5651ceee4434bb10020091727f2f840851166683",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/IndependentConsumers/Checks/Positive/TypedHostRefinementChecks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e3e3bb30d4698f624afb82b68d53862fd5d2c5dde9123dbc4a3cdd9c8426c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1350–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (native : Native) (final : State Path Native) (receipt : Receipt)
    (accepted : (orchestrate projection plan certificate journal primitive reject native).result = .ok (receipt,final)) :
    ∃ prepared verified : State Path Native,
      primitive.verifyOutputs plan journal prepared.native = .ok (receipt,verified.native) ∧
      primitive.recordReceipt journal receipt verified.native = .ok final.native :=
  orchestrate_success_exact_receipt _ _ _ _ _ _ _ _ _ accepted

end PipelineFrozenApplicationConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/IndependentConsumers/Checks/Positive/TypedHostRefinementChecks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/IndependentConsumers/Checks/Positive/TypedHostRefinementChecks.lean#L1350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de2609e869fe0a44561663d5984663f60ebc8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
