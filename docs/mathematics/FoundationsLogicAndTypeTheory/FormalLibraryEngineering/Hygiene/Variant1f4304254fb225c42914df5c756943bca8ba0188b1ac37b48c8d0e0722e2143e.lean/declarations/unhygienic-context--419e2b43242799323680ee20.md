# Unhygienic.Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e3af33da976dc0931a0d025dbc347ccfb67e547782396e8d94754e8cffe0c18",
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
  "slug": "unhygienic-context--419e2b43242799323680ee20",
  "source": {
    "blob": "fba62a5b700d9d22fd11e2f8726fe4d85bf5b754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:419e2b43242799323680ee20c285b94903fa1cb9167fd59993e48cdeb2ab820e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e3af33da976dc0931a0d025dbc347ccfb67e547782396e8d94754e8cffe0c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–33.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hygiene/Variant1f4304254fb225c42914df5c756943bca8ba0188b1ac37b48c8d0e0722e2143e.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba62a5b700d9d22fd11e2f8726fe4d85bf5b754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
