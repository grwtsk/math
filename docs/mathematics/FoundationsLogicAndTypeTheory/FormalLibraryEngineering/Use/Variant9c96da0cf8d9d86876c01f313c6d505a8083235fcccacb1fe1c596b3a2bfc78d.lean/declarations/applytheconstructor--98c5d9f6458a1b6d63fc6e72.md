# applyTheConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ebf4f7ec5ff58a49478ae045d8150c8aa572d135a19b8cc516548b80e430e93",
  "kind": "def",
  "lexical_name": "applyTheConstructor",
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
  "slug": "applytheconstructor--98c5d9f6458a1b6d63fc6e72",
  "source": {
    "blob": "0b8d49663d271b6311f5ff35ab9348a2ebfaeba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant9c96da0cf8d9d86876c01f313c6d505a8083235fcccacb1fe1c596b3a2bfc78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98c5d9f6458a1b6d63fc6e726dddcac91a446c349c3c077fd23de308a4599cb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant9c96da0cf8d9d86876c01f313c6d505a8083235fcccacb1fe1c596b3a2bfc78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ebf4f7ec5ff58a49478ae045d8150c8aa572d135a19b8cc516548b80e430e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyTheConstructor (mvarId : MVarId) :
    MetaM (List MVarId × List MVarId × List MVarId) := do
  mvarId.withContext do
    mvarId.checkNotAssigned `constructor
    let target ← mvarId.getType'
    matchConstInduct target.getAppFn
      (fun _ => throwTacticEx `constructor mvarId
                  m!"target is not an inductive datatype{indentExpr target}")
      fun ival us => do
        match ival.ctors with
        | [ctor] =>
          let cinfo ← getConstInfoCtor ctor
          let ctorConst := Lean.mkConst ctor us
          let (args, binderInfos, _) ← forallMetaTelescopeReducing (← inferType ctorConst)
          let mut explicit := #[]
          let mut implicit := #[]
          let mut insts := #[]
          for arg in args, binderInfo in binderInfos, i in [0:args.size] do
            if cinfo.numParams ≤ i ∧ binderInfo.isExplicit then
              explicit := explicit.push arg.mvarId!
            else
              implicit := implicit.push arg.mvarId!
              if binderInfo.isInstImplicit then
                insts := insts.push arg.mvarId!
          let e := mkAppN ctorConst args
          let eType ← inferType e
          unless (← withAssignableSyntheticOpaque <| isDefEq eType target) do
            throwError m!"type mismatch{indentExpr e}\n{← mkHasTypeButIsExpectedMsg eType target}"
          mvarId.assign e
          return (explicit.toList, implicit.toList, insts.toList)
        | _ => throwTacticEx `constructor mvarId
                m!"target inductive type does not have exactly one constructor{indentExpr target}"

/-- Use the `args` to refine the goals `gs` in order, but whenever there is a single
goal remaining then first try applying a single constructor if it's for a single-constructor
inductive type. In `eager` mode, instead we always first try to refine, and if that fails we
always try to apply such a constructor no matter if it's the last goal.

Returns the remaining explicit goals `gs`, any goals `acc` due to `refine`, and a sublist of these
of instance arguments that we should try synthesizing after the loop.
The new set of goals should be `gs ++ acc`. -/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant9c96da0cf8d9d86876c01f313c6d505a8083235fcccacb1fe1c596b3a2bfc78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variant9c96da0cf8d9d86876c01f313c6d505a8083235fcccacb1fe1c596b3a2bfc78d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b8d49663d271b6311f5ff35ab9348a2ebfaeba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
