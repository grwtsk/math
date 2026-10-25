# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94a5a1d51aa16a05449bbb92ca46a69a2343a373f4045f459042cf7f8dd5529f",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--59b8820846f256467f73b158",
  "source": {
    "blob": "33afd444b5f81a8226b888c484f9dfe0f948ca6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 342,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59b8820846f256467f73b158ce049668c86156516dcc0c3617f41ce306a00515",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94a5a1d51aa16a05449bbb92ca46a69a2343a373f4045f459042cf7f8dd5529f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerReservedNameAction fun name => do
    withTraceNode `ReservedNameAction (fun _ => pure m!"Lean.Meta.Eqns reserved name action for {name}") do
      if let some (declName, suffix) := declFromEqLikeName (← getEnv) name then
        if name == mkEqLikeNameFor (← getEnv) declName suffix then
          if isEqnReservedNameSuffix suffix then
            return (← MetaM.run' <| getEqnsFor? declName).isSome
          if suffix == unfoldThmSuffix then
            return (← MetaM.run' <| getUnfoldEqnFor? declName (nonRec := true)).isSome
      return false

  registerTraceClass `Elab.definition.eqns


end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33afd444b5f81a8226b888c484f9dfe0f948ca6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
