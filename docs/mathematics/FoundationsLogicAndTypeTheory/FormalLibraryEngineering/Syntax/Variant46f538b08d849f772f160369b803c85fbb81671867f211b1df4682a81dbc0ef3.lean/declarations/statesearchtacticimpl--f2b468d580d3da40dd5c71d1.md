# stateSearchTacticImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c8af9652e024b0bbd93715be9c4b8d8ee0acd6d7a4a3d38949d1df5461c3bf7",
  "kind": "def",
  "lexical_name": "stateSearchTacticImpl",
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
  "slug": "statesearchtacticimpl--f2b468d580d3da40dd5c71d1",
  "source": {
    "blob": "ed8303031cebba863b5883906b9f4e53589c0b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b468d580d3da40dd5c71d1d34d330c27bc8c1520b95a2d191798dcf3933d41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c8af9652e024b0bbd93715be9c4b8d8ee0acd6d7a4a3d38949d1df5461c3bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic statesearch_search_tactic] def stateSearchTacticImpl : Tactic :=
  fun stx => withMainContext do
  let goal ← getMainGoal
  let target ← getMainTarget
  let state := (← Meta.ppGoal goal).pretty
  let num_results := (statesearch.queries.get (← getOptions))
  let rev := (statesearch.revision.get (← getOptions))
  match stx with
  | `(tactic|#statesearch) =>
    let results ← queryStateSearch state num_results rev
    let suggestionGroups := results.map fun sr =>
      let fullName := match sr.type? with
      | some type => s!"{sr.name} (type: {type})"
      | none => sr.name
    (fullName, sr.toTacticSuggestions)
    let mut foundValidTactic := false
    for (name, sg) in suggestionGroups do
        let sg ← sg.filterM fun s =>
          let sugTxt := s.suggestion
          match sugTxt with
          | .string s => do
            let stx? := runParserCategory (← getEnv) `tactic s
            match stx? with
            | Except.ok stx =>
              let n? ← checkTactic target stx
              return n?.isSome
            | Except.error _ =>
              pure false
          | _ => pure false
        unless sg.isEmpty do
          foundValidTactic := true
          TryThis.addSuggestions stx sg (header := s!"From: {name}")
    unless foundValidTactic do
      TryThis.addSuggestions stx (results.map SearchResult.toCommandSuggestion)
  | _ => throwUnsupportedSyntax

@[inherit_doc search_cmd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8303031cebba863b5883906b9f4e53589c0b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
