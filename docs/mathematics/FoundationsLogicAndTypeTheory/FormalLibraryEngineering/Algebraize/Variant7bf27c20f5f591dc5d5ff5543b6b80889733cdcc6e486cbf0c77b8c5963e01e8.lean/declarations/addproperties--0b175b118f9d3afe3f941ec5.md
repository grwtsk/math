# addProperties

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e01ab3793b7dbf3e9ea49962ecc9932f90dc9a65cb04fef9c845d6400d40a3f2",
  "kind": "def",
  "lexical_name": "addProperties",
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
  "slug": "addproperties--0b175b118f9d3afe3f941ec5",
  "source": {
    "blob": "ee9d51f62616b632e2344b938a216e8265b1a0b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b175b118f9d3afe3f941ec5557f4f3cdef8db34ce67b4b728bf9889809b460a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e01ab3793b7dbf3e9ea49962ecc9932f90dc9a65cb04fef9c845d6400d40a3f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addProperties (t : Array Expr) : TacticM Unit := withMainContext do
  let ctx ← getLCtx
  ctx.forM fun decl => do
    if decl.isImplementationDetail then return
    let (nm, args) := decl.type.getAppFnArgs
    -- Check if the type of the current hypothesis has been tagged with the `algebraize` attribute
    match Attr.algebraizeAttr.getParam? (← getEnv) nm with
    -- If it has, `p` will either be the name of the corresponding `Algebra` property, or a
    -- lemma/constructor.
    | some p =>
      -- The last argument of the `RingHom` property is assumed to be `f`
      let f := args[args.size - 1]!
      -- Check that `f` appears in the list of functions given to `algebraize`
      if ¬ (← t.anyM (Meta.isDefEq · f)) then return

      let cinfo ← getConstInfo p
      let n ← getExpectedNumArgs cinfo.type
      let pargs := Array.replicate n (none : Option Expr)
      /- If the attribute points to the corresponding `Algebra` property itself, we assume that it
      is definitionally the same as the `RingHom` property. Then, we just need to construct its type
      and the local declaration will already give a valid term. -/
      if cinfo.isInductive then
        let pargs := pargs.set! 0 args[0]!
        let pargs := pargs.set! 1 args[1]!
        let tp ← mkAppOptM p pargs -- This should be the type `Algebra.Property A B`
        unless (← synthInstance? tp).isSome do
        liftMetaTactic fun mvarid => do
          let nm ← mkFreshBinderNameForTactic `algebraizeInst
          let (_, mvar) ← mvarid.note nm decl.toExpr tp
          return [mvar]
      /- Otherwise, the attribute points to a lemma or a constructor for the `Algebra` property.
      In this case, we assume that the `RingHom` property is the last argument of the lemma or
      constructor (and that this is all we need to supply explicitly). -/
      else
        let pargs := pargs.set! (n - 1) decl.toExpr
        let val ← mkAppOptM p pargs
        let tp ← inferType val
        unless (← synthInstance? tp).isSome do
        liftMetaTactic fun mvarid => do
          let nm ← mkFreshBinderNameForTactic `algebraizeInst
          let (_, mvar) ← mvarid.note nm val
          return [mvar]
    | none => return

/-- Configuration for `algebraize`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9d51f62616b632e2344b938a216e8265b1a0b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
