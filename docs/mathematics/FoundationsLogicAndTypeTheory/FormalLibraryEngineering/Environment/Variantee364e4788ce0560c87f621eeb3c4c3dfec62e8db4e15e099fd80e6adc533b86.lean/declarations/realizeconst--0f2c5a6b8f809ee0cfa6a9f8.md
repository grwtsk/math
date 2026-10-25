# realizeConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cc7f40fc153de273880b738763181a0d8b0fc15243ae1f5d80fe057027bd045",
  "kind": "def",
  "lexical_name": "realizeConst",
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
  "slug": "realizeconst--0f2c5a6b8f809ee0cfa6a9f8",
  "source": {
    "blob": "33928512dadcfa2e42a307499e9228596da0341a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2795,
    "line": 2709,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f2c5a6b8f809ee0cfa6a9f87d3341f3d24d0aa243e2e451c49c6d201b4ba332",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cc7f40fc153de273880b738763181a0d8b0fc15243ae1f5d80fe057027bd045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2709–2795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeConst (env : Environment) (forConst : Name) (constName : Name)
    (realize : Environment → Options → BaseIO (Environment × Dynamic)) :
    IO (Environment × Task (Option Kernel.Exception) × Dynamic) := do
  let res ← env.realizeValue forConst { constName : RealizeConstKey } fun realizeEnv realizeOpts => do
    -- ensure that environment extension modifications know they are in an async context
    let realizeEnv := realizeEnv.enterAsyncRealizing constName
    -- skip kernel in `realize`, we'll re-typecheck anyway
    let realizeOpts := debug.skipKernelTC.set realizeOpts true
    let (realizeEnv', dyn) ← realize realizeEnv realizeOpts
    -- We could check that `c` was indeed added here but in practice `realize` has already
    -- reported an error so we don't.

    -- find new constants incl. nested realizations, add current extension state, and compute
    -- closure
    let numNewPrivateConsts := realizeEnv'.asyncConstsMap.private.size - realizeEnv.asyncConstsMap.private.size
    let newPrivateConsts := realizeEnv'.asyncConstsMap.private.revList.take numNewPrivateConsts |>.reverse
    let newPrivateConsts := newPrivateConsts.map fun c =>
      let c := { c with isRealized := true }
      if c.exts?.isNone then
        { c with exts? := some <| .pure realizeEnv'.base.private.extensions }
      else c
    let numNewPublicConsts := realizeEnv'.asyncConstsMap.public.size - realizeEnv.asyncConstsMap.public.size
    let newPublicConsts := realizeEnv'.asyncConstsMap.public.revList.take numNewPublicConsts |>.reverse
    let newPublicConsts := newPublicConsts.map fun c =>
      let c := { c with isRealized := true }
      if c.exts?.isNone then
        { c with exts? := some <| .pure realizeEnv'.base.private.extensions }
      else c
    let exts ← EnvExtension.envExtensionsRef.get
    -- NOTE: We must ensure that `realizeEnv.localRealizationCtxMap` is not reachable via `res`
    -- (such as by storing `realizeEnv` or `realizeEnv'` in a field or the closure) as `res` will be
    -- stored in a promise in there, creating a cycle. Thus we bind only the `checked` tasks below,
    -- whose stored closures should uphold this property as they are only concerned about the
    -- kernel env, but this cannot directly be enforced or checked except through the leak sanitizer
    -- CI build.
    let oldChecked := realizeEnv.checked
    let newChecked := realizeEnv'.checked
    let replayKernel := fun kenv =>
      oldChecked.bind (sync := true) fun oldKEnv =>
        newChecked.map fun newKEnv =>
          replayConsts.replayKernel (skipExisting := true) oldKEnv newKEnv exts newPrivateConsts kenv
    let res : RealizeConstResult := {
      newConsts.private := newPrivateConsts
      newConsts.public := newPublicConsts
      replayKernel
      dyn
    }
    pure (.mk res)
  let some res := res.get? RealizeConstResult | unreachable!
  let exPromise ← IO.Promise.new
  let env := { env with
    asyncConstsMap := {
      «private» := res.newConsts.private.foldl (init := env.asyncConstsMap.private) fun consts c =>
        if consts.find? c.constInfo.name |>.isSome then
          consts
        else
          consts.add c
      «public»  := res.newConsts.public.foldl (init := env.asyncConstsMap.public) fun consts c =>
        if consts.find? c.constInfo.name |>.isSome then
          consts
        else
          consts.add c
    }
    checked := (← BaseIO.bindTask (t := env.checked) (sync := true) fun kenv =>
      BaseIO.mapTask (t := res.replayKernel kenv) fun
        | .ok kenv' => return kenv'
        | .error e => do
          exPromise.resolve e
          return kenv)
    allRealizations := env.allRealizations.map (sync := true) fun allRealizations =>
      res.newConsts.private.foldl (init := allRealizations) fun allRealizations c =>
        allRealizations.insert c.constInfo.name c
  }
  return (env, exPromise.result?, res.dyn)

end Environment

namespace Kernel
/-! # Kernel API -/

/--
  Kernel isDefEq predicate. We use it mainly for debugging purposes.
  Recall that the kernel type checker does not support metavariables.
  When implementing automation, consider using the `MetaM` methods. -/
-- We use `Lean.Environment` for ease of use; as this is a debugging function, we forgo a
-- `Kernel.Environment` base variant
@[extern "lean_kernel_is_def_eq"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean#L2709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33928512dadcfa2e42a307499e9228596da0341a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
