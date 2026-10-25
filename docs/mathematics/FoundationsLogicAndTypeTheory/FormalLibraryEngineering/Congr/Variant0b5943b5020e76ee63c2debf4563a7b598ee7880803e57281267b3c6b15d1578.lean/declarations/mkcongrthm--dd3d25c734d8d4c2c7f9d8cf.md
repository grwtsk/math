# mkCongrThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6e4ad5809138ecbe9321e6172caf79f60a704c84d62ca67bd556de3f7abe721",
  "kind": "def",
  "lexical_name": "mkCongrThm",
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
  "slug": "mkcongrthm--dd3d25c734d8d4c2c7f9d8cf",
  "source": {
    "blob": "acba6fb6336dcf42ef0bedba9358f8cb08f221c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd3d25c734d8d4c2c7f9d8cfe074b49e246e3e1b89b4e765495bff0d05328953",
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

Occurrence: `declaration:e6e4ad5809138ecbe9321e6172caf79f60a704c84d62ca67bd556de3f7abe721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkCongrThm (origTag : Name) (f : Expr) (args : Array Expr) (addImplicitArgs := false) (nameSubgoals := true) :
    MetaM (Expr × Array (Option MVarId) × Array (Option MVarId)) := do
  let funInfo ← getFunInfoNArgs f args.size
  let some congrThm ← mkCongrSimpCore? f funInfo (← getCongrSimpKinds f funInfo) (subsingletonInstImplicitRhs := false)
    | throwError "'congr' conv tactic failed to create congruence theorem"
  let mut eNew := f
  let mut proof := congrThm.proof
  let mut mvarIdsNew := #[]
  let mut mvarIdsNewInsts := #[]
  for h : i in *...congrThm.argKinds.size do
    let arg := args[i]!
    let argInfo := funInfo.paramInfo[i]!
    match congrThm.argKinds[i] with
    | .fixed | .cast =>
      eNew := mkApp eNew arg
      proof := mkApp proof arg;
      if addImplicitArgs || argInfo.isExplicit then
        mvarIdsNew := mvarIdsNew.push none
    | .eq =>
      if addImplicitArgs || argInfo.isExplicit then
        let tag ← if nameSubgoals then
          pure (appendTag origTag (← whnf (← inferType proof)).bindingName!)
        else pure origTag
        let (rhs, mvarNew) ← mkConvGoalFor arg tag
        eNew := mkApp eNew rhs
        proof := mkApp3 proof arg rhs mvarNew
        mvarIdsNew := mvarIdsNew.push (some mvarNew.mvarId!)
      else
        eNew := mkApp eNew arg
        proof := mkApp3 proof arg arg (← mkEqRefl arg)
    | .subsingletonInst =>
      proof := mkApp proof arg
      let rhs ← mkFreshExprMVar (← whnf (← inferType proof)).bindingDomain!
      eNew := mkApp eNew rhs
      proof := mkApp proof rhs
      mvarIdsNewInsts := mvarIdsNewInsts.push (some rhs.mvarId!)
    | .heq | .fixedNoParam => unreachable!
  if congrThm.argKinds.size < args.size then
    if congrThm.argKinds.size == 0 then
      throwError "'congr' conv tactic failed to create congruence theorem"
    let (proof', mvarIdsNew', mvarIdsNewInsts') ←
      mkCongrThm origTag eNew args[funInfo.getArity...*] addImplicitArgs nameSubgoals
    for arg in args[funInfo.getArity...*] do
      proof ← Meta.mkCongrFun proof arg
    proof ← mkEqTrans proof proof'
    mvarIdsNew := mvarIdsNew ++ mvarIdsNew'
    mvarIdsNewInsts := mvarIdsNewInsts ++ mvarIdsNewInsts'
  return (proof, mvarIdsNew, mvarIdsNewInsts)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acba6fb6336dcf42ef0bedba9358f8cb08f221c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
