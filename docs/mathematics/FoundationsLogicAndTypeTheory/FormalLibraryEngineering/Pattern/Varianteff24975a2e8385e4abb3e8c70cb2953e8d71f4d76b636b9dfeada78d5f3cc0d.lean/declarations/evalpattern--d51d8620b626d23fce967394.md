# evalPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5ed4479e6f7357a0f50f950c074d36995cdcf81cc8d4e11303e871de1f70e0e",
  "kind": "def",
  "lexical_name": "evalPattern",
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
  "slug": "evalpattern--d51d8620b626d23fce967394",
  "source": {
    "blob": "9483e23ed39e9f38648067c5def621c6bfcefaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d51d8620b626d23fce9673942833666ce082ac8ccb6ffe22ab21d2c4ff6f1c68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5ed4479e6f7357a0f50f950c074d36995cdcf81cc8d4e11303e871de1f70e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.Conv.pattern] def evalPattern : Tactic := fun stx => withMainContext do
  match stx with
  | `(conv| pattern $[(occs := $occs)]? $p) =>
    let patternA ←
       withTheReader Term.Context (fun ctx => { ctx with ignoreTCFailures := true }) <|
       Term.withoutModifyingElabMetaStateWithInfo <| withRef p <|
       Term.withoutErrToSorry do
         abstractMVars (← Term.elabTerm p none)
    let lhs ← getLhs
    let occs ← match occs with
    | none => pure (.occs #[] 0 [(0, 0)])
    | some occs => match occs with
      | `(Parser.Tactic.Conv.occsWildcard| *) => pure (.all #[])
      | `(Parser.Tactic.Conv.occsIndexed| $ids*) => do
        let ids ← ids.mapIdxM fun i id =>
          match id.getNat with
          | 0 => throwErrorAt id "positive integer expected"
          | n+1 => pure (n, i)
        let ids := ids.qsort (·.1 < ·.1)
        unless @Array.allDiff _ ⟨(·.1 == ·.1)⟩ ids do
          throwError "occurrence list is not distinct"
        pure (.occs #[] 0 ids.toList)
      | _ => throwUnsupportedSyntax
    let state ← IO.mkRef occs
    let ctx := (← getContext).setMemoize (occs matches .all _)
    let (result, _) ← Simp.main lhs ctx (methods := { pre := pre patternA state })
    let subgoals ← match ← state.get with
    | .all #[] | .occs _ 0 _ =>
      throwError "'pattern' conv tactic failed, pattern was not found{indentExpr patternA.expr}"
    | .all subgoals => pure subgoals
    | .occs subgoals idx remaining =>
      if let some (i, _) := remaining.getLast? then
        throwError "'pattern' conv tactic failed, pattern was found only {idx} times but {i+1} expected"
      pure <| (subgoals.qsort (·.1 < ·.1)).map (·.2)
    (← getRhs).mvarId!.assign result.expr
    (← getMainGoal).assign (← result.getProof)
    replaceMainGoal subgoals.toList
  | _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9483e23ed39e9f38648067c5def621c6bfcefaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
