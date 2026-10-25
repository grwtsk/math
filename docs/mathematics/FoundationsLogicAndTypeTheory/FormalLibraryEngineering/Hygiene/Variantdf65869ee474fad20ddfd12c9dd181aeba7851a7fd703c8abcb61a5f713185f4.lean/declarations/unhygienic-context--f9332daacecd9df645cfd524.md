# Unhygienic.Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e87fff821edf4fc7e14b19062d4f1a045686655c05e4c0b4a97d2179300eba65",
  "kind": "structure",
  "lexical_name": "Unhygienic.Context",
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
  "slug": "unhygienic-context--f9332daacecd9df645cfd524",
  "source": {
    "blob": "7915386f8cdc7957f3dcf68392343a3dc3ee4770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9332daacecd9df645cfd5243ed47d71ca122e26588a37b977d799f1f1bc7252",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e87fff821edf4fc7e14b19062d4f1a045686655c05e4c0b4a97d2179300eba65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Unhygienic.Context where
  ref   : Syntax
  scope : MacroScope

/--
Simplistic MonadQuotation that does not guarantee globally fresh names, that
is, between different runs of this or other MonadQuotation implementations.
It is only safe if the syntax quotations do not introduce bindings around
antiquotations, and if references to globals are prefixed with `_root_.`
(which is not allowed to refer to a local variable)
`Unhygienic` can also be seen as a model implementation of `MonadQuotation`
(since it is completely hygienic as long as it is "run" only once and can
assume that there are no other implementations in use, as is the case for the
elaboration monads that carry their macro scope state through the entire
processing of a file). It uses the state monad to query and allocate the
next macro scope, and uses the reader monad to store the stack of scopes
corresponding to `withFreshMacroScope` calls.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variantdf65869ee474fad20ddfd12c9dd181aeba7851a7fd703c8abcb61a5f713185f4.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7915386f8cdc7957f3dcf68392343a3dc3ee4770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
