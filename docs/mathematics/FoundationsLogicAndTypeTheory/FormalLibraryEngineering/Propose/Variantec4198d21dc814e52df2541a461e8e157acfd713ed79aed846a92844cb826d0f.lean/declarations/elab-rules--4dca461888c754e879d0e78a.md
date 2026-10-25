# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa5692227c5ea26d5f95f5f80ce61f952eb70204176b5a5b72f3b6b4422ce2b7",
  "kind": "elab_rules",
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
  "slug": "elab-rules--4dca461888c754e879d0e78a",
  "source": {
    "blob": "aa3af21c1448a7cccfa3c8bac1be020a63862c42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dca461888c754e879d0e78a0b4dae05f52362c4c924be413f2f8a5d7a240768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa5692227c5ea26d5f95f5f80ce61f952eb70204176b5a5b72f3b6b4422ce2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| have?%$tk $[!%$lucky]? $[ : $type:term]? using $[$terms:term],*) => do
    let stx ← getRef
    let goal ← getMainGoal
    goal.withContext do
      let required ← terms.mapM (elabTerm · none)
      let type ← match type with
      | some stx => elabTermWithHoles stx none (← getMainTag) true <&> (·.1)
      | none => mkFreshTypeMVar
      let proposals ← propose (← proposeLemmas.get) type required
      if proposals.isEmpty then
        throwError "propose could not find any lemmas using the given hypotheses"
      -- TODO we should have `proposals` return a lazy list, to avoid unnecessary computation here.
      for p in proposals.toList.take 10 do
        addHaveSuggestion tk (← inferType p.2) p.2 stx
      if lucky.isSome then
        let mut g := goal
        for p in proposals.toList.take 10 do
          (_, g) ← g.let p.1 p.2
        replaceMainGoal [g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variantec4198d21dc814e52df2541a461e8e157acfd713ed79aed846a92844cb826d0f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3af21c1448a7cccfa3c8bac1be020a63862c42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
