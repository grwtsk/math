# AContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:955e665a6a9248988c6a8cc4ff2095b82c0b01977f8c3a36b6d960d5d014a045",
  "kind": "structure",
  "lexical_name": "AContext",
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
  "slug": "acontext--ba5998d5f5c1d6cf836ff9fb",
  "source": {
    "blob": "7f8dc5435860e6be36f24f1499f921045dbbf8cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba5998d5f5c1d6cf836ff9fbc766751b28c6e6c6668df816d0db59d509af3aa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:955e665a6a9248988c6a8cc4ff2095b82c0b01977f8c3a36b6d960d5d014a045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AContext where
  /-- The local fvars corresponding to bound variables.
  Abstraction needs to be sure that these variables do not appear in abstracted terms. -/
  fvars : Array Expr := #[]
  /-- A copy of `propToFVar` from `GState`. -/
  propToFVar : ExprMap Expr
  /-- The recursion depth, for how many times `visit` is called from within `visitProof. -/
  depth : Nat := 0
  /-- The initial local context, for resetting when recursing. -/
  initLCtx : LocalContext
  /-- The tactic configuration. -/
  config : Config

/-- State for the `MAbs` monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8dc5435860e6be36f24f1499f921045dbbf8cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
