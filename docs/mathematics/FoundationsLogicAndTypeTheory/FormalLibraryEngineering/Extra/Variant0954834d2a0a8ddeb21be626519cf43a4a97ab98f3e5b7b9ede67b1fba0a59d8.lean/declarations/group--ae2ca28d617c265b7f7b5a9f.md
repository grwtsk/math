# group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8b1eb6102d0b3673b62a0a6430c38ec1f7f0461c702e64af97fb6265a79c506",
  "kind": "def",
  "lexical_name": "group",
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
  "slug": "group--ae2ca28d617c265b7f7b5a9f",
  "source": {
    "blob": "25a8e0faa8178fd041d15156669400c9b49c22c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant0954834d2a0a8ddeb21be626519cf43a4a97ab98f3e5b7b9ede67b1fba0a59d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2ca28d617c265b7f7b5a9f0789f9113151ca8137dada4171bafc0daa2850de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant0954834d2a0a8ddeb21be626519cf43a4a97ab98f3e5b7b9ede67b1fba0a59d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8b1eb6102d0b3673b62a0a6430c38ec1f7f0461c702e64af97fb6265a79c506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[run_builtin_parser_attribute_hooks, builtin_doc, inline] def group (p : Parser) : Parser :=
  node groupKind p

/-- The parser `many1Indent(p)` is equivalent to `withPosition((colGe p)+)`. This has the effect of
parsing one or more occurrences of `p`, where each subsequent `p` parse needs to be indented
the same or more than the first parse.

This parser has arity 1, and returns a list of the results from `p`.
`p` is "auto-grouped" if it is not arity 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant0954834d2a0a8ddeb21be626519cf43a4a97ab98f3e5b7b9ede67b1fba0a59d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variant0954834d2a0a8ddeb21be626519cf43a4a97ab98f3e5b7b9ede67b1fba0a59d8.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a8e0faa8178fd041d15156669400c9b49c22c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
