# DeferredCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:128e40b36c0ae6b6c51247c4ac6f63ba4fbc99028b5021fb33bb8dff2174a777",
  "kind": "structure",
  "lexical_name": "DeferredCheck",
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
  "slug": "deferredcheck--4d79a16817e6c6f3751e5a23",
  "source": {
    "blob": "03ff7225b14521c0596572614695f0b464ce3128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d79a16817e6c6f3751e5a2306e64d2753e00c3f025762d6249580414356ebcc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:128e40b36c0ae6b6c51247c4ac6f63ba4fbc99028b5021fb33bb8dff2174a777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeferredCheck where
  /-- The docstring or moduledoc in which the reference appears. -/
  site : DeferredCheckSite
  /-- The index of this reference into the deferred checks of its docstring, in source order. -/
  index : Nat
  /-- The reference's source text, to quote in error messages. -/
  sourceString : String
  /-- Modules that should be imported for the check to be meaningful (the reference's `scope`). -/
  imports : Array Name
  /-- The current namespace at the reference site. -/
  currNamespace : Name
  /-- The open declarations in scope at the reference site. -/
  openDecls : List OpenDecl
  /-- The options in effect at the reference site. -/
  options : Options
  /--
  The check-specific data. The name of the type in the `Dynamic` determines which checks are to be
  performed.
   -/
  check : Dynamic

/--
A collection of deferred docstring checks.

While docstrings are part of the server olean for a module, deferred checks are part of the public
information so they can be found by the linter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ff7225b14521c0596572614695f0b464ce3128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
