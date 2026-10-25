# MaterializableSelectionKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a363d1e870a43af0e8d0df388de28209bfe45fe3857fd8c2f0215fb2aa212484",
  "kind": "inductive",
  "lexical_name": "MaterializableSelectionKind",
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
  "slug": "materializableselectionkind--131f226206901fe0cbc6679e",
  "source": {
    "blob": "8136369984633e7a75357e67afba744b3a6a5d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:131f226206901fe0cbc6679e200c28989bbc73e7dbc6e1a463646a24c3efb89a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a363d1e870a43af0e8d0df388de28209bfe45fe3857fd8c2f0215fb2aa212484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MaterializableSelectionKind : SelectionMethodKind → Prop where
  | constructive : MaterializableSelectionKind .ConstructiveExtraction
  | verifiedSearch : MaterializableSelectionKind .VerifiedSearch
  | certifiedExternal :
      MaterializableSelectionKind .CertifiedExternalComputation
  | humanCertified :
      MaterializableSelectionKind .HumanSelectionWithMachineCheckedCertificate

/--
Selection activity indexed by exact existence evidence and method. Its result
is an admissible witness for the same profile/input, with separate proof that
the declared method certifies that exact value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant9b87595d840d14ef5d71bd14bd266298031f858acb0050a0fb4ede12d7e36a41.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8136369984633e7a75357e67afba744b3a6a5d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
