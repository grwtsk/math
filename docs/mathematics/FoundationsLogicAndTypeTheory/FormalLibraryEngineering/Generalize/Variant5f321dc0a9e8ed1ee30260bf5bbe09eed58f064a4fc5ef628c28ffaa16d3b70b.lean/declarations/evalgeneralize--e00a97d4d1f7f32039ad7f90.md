# evalGeneralize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe5f33f862262e4aa2607c9199b7f167179e62fc1a9224b9af086b92d8de173f",
  "kind": "def",
  "lexical_name": "evalGeneralize",
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
  "slug": "evalgeneralize--e00a97d4d1f7f32039ad7f90",
  "source": {
    "blob": "f67e3b0cb6f5d4c1970d17380c16df3c01f5a424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e00a97d4d1f7f32039ad7f90b03ac70b818f861b641926c8f9d83f4e819414ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe5f33f862262e4aa2607c9199b7f167179e62fc1a9224b9af086b92d8de173f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.generalize] def evalGeneralize : Tactic := fun stx =>
  withMainContext do
    let mut xIdents := #[]
    let mut hIdents := #[]
    let mut args := #[]
    for arg in stx[1].getSepArgs do
      let hName? ← if arg[0].isNone then
        pure none
      else
        hIdents := hIdents.push arg[0][0]
        pure (some arg[0][0].getId)
      let expr ← elabTerm arg[1] none
      xIdents := xIdents.push arg[3]
      args := args.push { hName?, expr, xName? := arg[3].getId : GeneralizeArg }
    let hyps ← match expandOptLocation stx[2] with
    | .targets hyps _ => getFVarIds hyps
    | .wildcard => pure ((← getLocalHyps).map (·.fvarId!))
    let mvarId ← getMainGoal
    mvarId.withContext do
      let (_, newVars, mvarId) ← mvarId.generalizeHyp args hyps
      mvarId.withContext do
        for v in newVars, id in xIdents ++ hIdents do
          Term.addLocalVarInfo id (.fvar v)
        replaceMainGoal [mvarId]

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f67e3b0cb6f5d4c1970d17380c16df3c01f5a424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
