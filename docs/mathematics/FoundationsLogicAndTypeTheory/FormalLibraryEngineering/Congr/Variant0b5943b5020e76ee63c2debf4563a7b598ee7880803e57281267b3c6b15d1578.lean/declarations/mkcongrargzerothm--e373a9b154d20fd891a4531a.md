# mkCongrArgZeroThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3c977fee8e9a410d27233d40f599680cbf3b9c6d408dff265e0c8242145e3c8",
  "kind": "def",
  "lexical_name": "mkCongrArgZeroThm",
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
  "slug": "mkcongrargzerothm--e373a9b154d20fd891a4531a",
  "source": {
    "blob": "acba6fb6336dcf42ef0bedba9358f8cb08f221c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e373a9b154d20fd891a4531a74800d31641fd0ad2a8417b82e86fd9a6bca8d79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3c977fee8e9a410d27233d40f599680cbf3b9c6d408dff265e0c8242145e3c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkCongrArgZeroThm (tacticName : String) (origTag : Name) (f : Expr) (args : Array Expr) :
    MetaM (Expr × MVarId × Array MVarId) := do
  let funInfo ← getFunInfoNArgs f args.size
  let some congrThm ← mkCongrSimpCore? f funInfo (← getCongrSimpKindsForArgZero funInfo) (subsingletonInstImplicitRhs := false)
    | throwError "`{tacticName}` conv tactic failed to create congruence theorem"
  unless congrThm.argKinds[0]! matches .eq do
    throwError "`{tacticName}` conv tactic failed, cannot select argument"
  let mut eNew := f
  let mut proof := congrThm.proof
  let mut mvarIdNew? := none
  let mut mvarIdsNewInsts := #[]
  for h : i in *...congrThm.argKinds.size do
    let arg := args[i]!
    let argInfo := funInfo.paramInfo[i]!
    match congrThm.argKinds[i] with
    | .fixed | .cast =>
      eNew := mkApp eNew arg
      proof := mkApp proof arg
    | .eq =>
      let (rhs, mvarNew) ← mkConvGoalFor arg origTag
      eNew := mkApp eNew rhs
      proof := mkApp3 proof arg rhs mvarNew
      if mvarIdNew?.isSome then throwError "`{tacticName}` conv tactic failed, cannot select argument"
      mvarIdNew? := some mvarNew.mvarId!
    | .subsingletonInst =>
      proof := mkApp proof arg
      let rhs ← mkFreshExprMVar (← whnf (← inferType proof)).bindingDomain!
      eNew := mkApp eNew rhs
      proof := mkApp proof rhs
      mvarIdsNewInsts := mvarIdsNewInsts.push rhs.mvarId!
    | .heq | .fixedNoParam => unreachable!
  let proof' ← args[congrThm.argKinds.size...*].foldlM (init := proof) mkCongrFun
  return (proof', mvarIdNew?.get!, mvarIdsNewInsts)

/--
Implements `arg` for foralls. If `domain` is true, accesses the domain, otherwise accesses the codomain.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acba6fb6336dcf42ef0bedba9358f8cb08f221c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
