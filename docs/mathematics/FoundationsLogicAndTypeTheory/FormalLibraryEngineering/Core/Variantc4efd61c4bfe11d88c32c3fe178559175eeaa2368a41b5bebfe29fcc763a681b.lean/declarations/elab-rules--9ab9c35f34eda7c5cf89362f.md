# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1423aefaa407006e958c1b8fb26fdfde13024fe1b04cc6627ad0d0a811c3f1b",
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
  "slug": "elab-rules--9ab9c35f34eda7c5cf89362f",
  "source": {
    "blob": "89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1038,
    "line": 1010,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ab9c35f34eda7c5cf89362f600f1fa5d04fba8ab300b2e8a9999e1f392383d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1423aefaa407006e958c1b8fb26fdfde13024fe1b04cc6627ad0d0a811c3f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1038.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| rel [$hyps,*]) => do
    let g ← getMainGoal
    g.withContext do
    let hyps ← hyps.getElems.mapM (elabTerm · none)
    let some (_rel, lhs, rhs) := getRel (← withReducible g.getType')
      | throwError "rel failed, goal not a relation"
    unless ← isDefEq (← inferType lhs) (← inferType rhs) do
      throwError "rel failed, goal not a relation"
    -- The core tactic `Lean.MVarId.gcongr` will be run with main-goal discharger being the tactic
    -- consisting of running `Lean.MVarId.gcongrForward` (trying a term together with limited
    -- forward-reasoning on that term) on each of the listed terms.
    let assum g := g.gcongrForward hyps
    -- Time to actually run the core tactic `Lean.MVarId.gcongr`!
    let (_, s) ← g.gcongr none |>.run [] assum
    let unsolvedGoals := s.newGoals
    match unsolvedGoals.toList with
    -- if all goals are solved, succeed!
    | [] => pure ()
    -- if not, fail and report the unsolved goals
    | unsolvedGoals => do
      let unsolvedGoals ← liftMetaM <| List.mapM MVarId.getType unsolvedGoals
      let g := Lean.MessageData.joinSep (unsolvedGoals.map Lean.MessageData.ofExpr) Format.line
      throwError "rel failed, cannot prove goal by 'substituting' the listed relationships. \
        The steps which could not be automatically justified were:\n{g}"

end GCongr

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
