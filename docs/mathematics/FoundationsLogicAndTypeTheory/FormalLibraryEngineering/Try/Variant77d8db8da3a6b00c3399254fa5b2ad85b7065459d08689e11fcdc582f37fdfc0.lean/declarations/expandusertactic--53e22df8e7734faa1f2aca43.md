# expandUserTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93608740bede20f119918fc20c35114f50bcfa75b1d25993a05c6aa25ae6efd7",
  "kind": "def",
  "lexical_name": "expandUserTactic",
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
  "slug": "expandusertactic--53e22df8e7734faa1f2aca43",
  "source": {
    "blob": "3b3ac56b63926d119ef338d7fa391b161184285b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53e22df8e7734faa1f2aca435b9e5da5003ba36025d617c2447e405081869325",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93608740bede20f119918fc20c35114f50bcfa75b1d25993a05c6aa25ae6efd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expandUserTactic (tac : TSyntax `tactic) (goal : MVarId) : MetaM (Array (TSyntax `tactic)) := do
  Term.TermElabM.run' <| do
    let initialState ← saveState
    let initialTreeSize := (← getInfoState).trees.size

    let result ← tryCatchRuntimeEx
      (do
        -- Run the tactic under `withSaveInfoContext` so its "Try this" suggestions
        -- get pushed onto info trees that are wrapped with a `ContextInfo` (which
        -- `foldInfo` needs in order to actually descend).
        withSaveInfoContext <| discard <| Tactic.run goal do
          evalTactic tac

        -- Walk only the info trees added by this tactic and pull out the
        -- structured suggestions stored in `TryThisInfo` nodes.
        let trees := (← getInfoState).trees.toArray
        let newTrees := trees.extract initialTreeSize trees.size
        let env ← getEnv
        let suggestions := newTrees.foldl (init := #[]) fun acc tree =>
          tree.foldInfo (init := acc) fun _ info acc => Id.run do
            let .ofCustomInfo { value, .. } := info | acc
            let some tti := value.get? Meta.Tactic.TryThis.TryThisInfo | acc
            match tti.suggestion.suggestion with
            | .tsyntax stx => acc.push ⟨stx.raw⟩
            | .string s =>
              match Parser.runParserCategory env `tactic s with
              | .ok stx => acc.push ⟨stx⟩
              | .error _ => acc

        pure (some suggestions))
      (fun _ => pure none)

    initialState.restore
    return #[tac] ++ (result.getD #[])

-- TODO: polymorphic `Tactic.focus`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b3ac56b63926d119ef338d7fa391b161184285b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
