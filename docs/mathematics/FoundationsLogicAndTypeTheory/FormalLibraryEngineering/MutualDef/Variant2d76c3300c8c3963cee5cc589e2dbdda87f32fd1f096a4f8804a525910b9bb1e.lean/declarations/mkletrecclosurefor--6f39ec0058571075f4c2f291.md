# mkLetRecClosureFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9b044eeda180d7e3fb0744fba437c1f9e9ab2477852ef25cd33184e4377ba9e",
  "kind": "def",
  "lexical_name": "mkLetRecClosureFor",
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
  "slug": "mkletrecclosurefor--6f39ec0058571075f4c2f291",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 999,
    "line": 976,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f39ec0058571075f4c2f2913161d45bd076361aca8895ec1ff2a83a61572ed8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9b044eeda180d7e3fb0744fba437c1f9e9ab2477852ef25cd33184e4377ba9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 976–999.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkLetRecClosureFor (toLift : LetRecToLift) (freeVars : Array FVarId) : TermElabM LetRecClosure := do
  let lctx := toLift.lctx
  withLCtx lctx toLift.localInstances do
  /-
    Recall that `toLift.type` and `toLift.value` may have different binder annotations.
    See issue #1377 for an example.
  -/
  let lambdaArity := toLift.val.getNumHeadLambdas
  forallBoundedTelescope toLift.type lambdaArity fun xs type => do
    let val := toLift.val.beta xs
    let lctx ← getLCtx
    let s ← mkClosureFor freeVars <| xs.map fun x => lctx.get! x.fvarId!
    let cleanLocalDecls := s.localDecls.map fun decl => decl.setType <| decl.type.cleanupAnnotations
    let type := Closure.mkForall s.localDecls <| Closure.mkForall s.newLetDecls type
    let val  := Closure.mkLambda cleanLocalDecls <| Closure.mkLambda s.newLetDecls val
    let c    := mkAppN (Lean.mkConst toLift.declName) s.exprArgs
    toLift.mvarId.assign c
    return {
      ref        := toLift.ref
      localDecls := s.newLocalDecls
      closed     := c
      toLift     := { toLift with val, type }
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L976).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
