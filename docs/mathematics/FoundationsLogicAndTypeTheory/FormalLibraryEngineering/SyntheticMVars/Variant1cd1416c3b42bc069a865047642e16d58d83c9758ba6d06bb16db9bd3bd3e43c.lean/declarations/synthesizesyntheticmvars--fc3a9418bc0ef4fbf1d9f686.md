# synthesizeSyntheticMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f9ed5383316436e56f76a63718c6cfc276904c383996ffaebe415d4152f44ef",
  "kind": "def",
  "lexical_name": "synthesizeSyntheticMVars",
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
  "slug": "synthesizesyntheticmvars--fc3a9418bc0ef4fbf1d9f686",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 619,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3a9418bc0ef4fbf1d9f6863f5a527318f96327ceb64362b09d92ad40898d00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f9ed5383316436e56f76a63718c6cfc276904c383996ffaebe415d4152f44ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  partial def synthesizeSyntheticMVars (postpone := PostponeBehavior.yes) (ignoreStuckTC := false) : TermElabM Unit := do
    let rec loop (_ : Unit) : TermElabM Unit := do
      withRef (← getSomeSyntheticMVarsRef) <| withIncRecDepth do
        unless (← get).pendingMVars.isEmpty do
          if ← synthesizeSyntheticMVarsStep (postponeOnError := false) (runTactics := false) then
            loop ()
          else if postpone != .yes then
            /- Resume pending metavariables with "elaboration postponement" disabled.
               We postpone elaboration errors in this step by setting `postponeOnError := true`.
               Example:
               ```
               #check let x := ⟨1, 2⟩; Prod.fst x
               ```
               The term `⟨1, 2⟩` can't be elaborated because the expected type is not know.
               The `x` at `Prod.fst x` is not elaborated because the type of `x` is not known.
               When we execute the following step with "elaboration postponement" disabled,
               the elaborator fails at `⟨1, 2⟩` and postpones it, and succeeds at `x` and learns
               that its type must be of the form `Prod ?α ?β`.

               Recall that we postponed `x` at `Prod.fst x` because its type it is not known.
               We the type of `x` may learn later its type and it may contain implicit and/or auto arguments.
               By disabling postponement, we are essentially giving up the opportunity of learning `x`s type
               and assume it does not have implicit and/or auto arguments. -/
            if ← withoutPostponing <| synthesizeSyntheticMVarsStep (postponeOnError := true) (runTactics := false) then
              loop ()
            else if ← synthesizeUsingDefault then
              loop ()
            else if ← withoutPostponing <| synthesizeSyntheticMVarsStep (postponeOnError := false) (runTactics := false) then
              loop ()
            else if ← synthesizeSyntheticMVarsStep (postponeOnError := false) (runTactics := true) then
              loop ()
            else if postpone == .no then
              reportStuckSyntheticMVars ignoreStuckTC
    loop ()
    if postpone == .no then
     processPostponedUniverseConstraints
end

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
