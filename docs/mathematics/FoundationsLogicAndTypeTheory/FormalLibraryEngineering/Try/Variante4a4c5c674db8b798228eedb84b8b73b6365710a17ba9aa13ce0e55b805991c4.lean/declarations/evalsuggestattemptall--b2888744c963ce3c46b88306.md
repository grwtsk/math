# evalSuggestAttemptAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e285c0d7e38e0fa69c7219524d2cdea6908e7b8d60867379ff381af23e4f3d",
  "kind": "def",
  "lexical_name": "evalSuggestAttemptAll",
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
  "slug": "evalsuggestattemptall--b2888744c963ce3c46b88306",
  "source": {
    "blob": "7d5de50f96ef6c968206149dcfb89e64150fe400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 723,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2888744c963ce3c46b88306ce167eea8f84afdbe57c9b8a0b24e90607b93ade",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e285c0d7e38e0fa69c7219524d2cdea6908e7b8d60867379ff381af23e4f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalSuggestAttemptAll (tacs : Array (TSyntax ``Parser.Tactic.tacticSeq)) : TryTacticM (TSyntax `tactic) := do
  unless (← read).terminal do
    throwError "invalid occurrence of `attempt_all` in non-terminal position for `try?` script{indentD (← read).root}"
  go 0 none #[]
where
  go (i : Nat) (saved? : Option SavedState) (acc : Array (TSyntax `tactic)) : TryTacticM (TSyntax `tactic) := do
    -- Remark: we considered using `acc.size < (← read).config.max` here to truncate the search,
    -- but it had a negative effect when using `<;>`. We could miss a preferred solution `induction e <;> grind`
    -- because only a subset of the goals were solved by simpler tactics such as `rfl` and `simp`.
    if i < tacs.size then
      match (← observing (evalSuggestTacticSeq tacs[i]!)) with
      | .ok tac s =>
        trace[try.debug] "`attempt_all` argument succeeded{indentD tac}"
        go (i+1) (saved? <|> some s) (appendSuggestion acc tac)
      | _ =>
        go (i+1) saved? acc
    else
      if let some saved := saved? then
        saved.restore
        mkTrySuggestions acc
      else
        throwError "`attempt_all` failed"

/-- `evalSuggest` for `attempt_all_par` tactic (parallel version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5de50f96ef6c968206149dcfb89e64150fe400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
