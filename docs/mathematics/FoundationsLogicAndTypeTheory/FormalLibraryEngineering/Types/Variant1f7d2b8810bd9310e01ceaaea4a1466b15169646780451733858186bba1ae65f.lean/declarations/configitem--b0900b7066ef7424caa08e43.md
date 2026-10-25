# ConfigItem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de5f86e3338edaef08096ff2bf5b58e0a403737a2480abce13a45e9ab33fec17",
  "kind": "structure",
  "lexical_name": "ConfigItem",
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
  "slug": "configitem--b0900b7066ef7424caa08e43",
  "source": {
    "blob": "d94bd8af15bfb394ea1de47578b71beb6f72ba71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0900b7066ef7424caa08e43f35b5c66a74766bdd2cd78ddd7e51958adde46ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de5f86e3338edaef08096ff2bf5b58e0a403737a2480abce13a45e9ab33fec17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConfigItem where
  /-- Ref for the entire configuration item -/
  ref : Syntax
  /-- Ref for the option name itself. -/
  option : Ident
  /-- The configuration value. Usually this is a `Term`, but user-defined configuration items
  can use arbitrary syntax. For `+`/`-` booleans, this syntax is synthetic. -/
  value : Syntax
  /-- Whether this was using `+`/`-`, to be able to give a better error message on type mismatch.
  It also caches the value so we can skip evaluation for `Bool`, which is a very common case. -/
  bool? : Option Bool := none
  /-- The original option name (without macro scopes), even after shifting. -/
  origOptionName : Name := option.getId.eraseMacroScopes
  /-- The `option` identifier split into components, without macro scopes.
  This allows us to pull off components one at a time if we have hierarchical configuration options. -/
  optionComps : List Syntax := Lean.Syntax.identComponents option
  /-- Previous root components of `option` in reverse order, collecting results from `ConfigItem.shift`. -/
  prevOptionComps : List Syntax := []

/--
An evaluator for updating a configuration object using configuration items.

This is not a class. In practice, it might be composed out of evaluators or otherwise parameterized in a number of ways.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant1f7d2b8810bd9310e01ceaaea4a1466b15169646780451733858186bba1ae65f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d94bd8af15bfb394ea1de47578b71beb6f72ba71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
