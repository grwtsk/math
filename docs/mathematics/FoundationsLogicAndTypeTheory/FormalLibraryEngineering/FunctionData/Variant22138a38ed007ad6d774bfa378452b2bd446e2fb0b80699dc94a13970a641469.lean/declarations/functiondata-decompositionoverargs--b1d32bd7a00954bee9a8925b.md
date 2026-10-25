# FunctionData.decompositionOverArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a125847e83da96aedcbde6348477dad552258dadda9ffe6d43b27eb3e478812b",
  "kind": "def",
  "lexical_name": "FunctionData.decompositionOverArgs",
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
  "slug": "functiondata-decompositionoverargs--b1d32bd7a00954bee9a8925b",
  "source": {
    "blob": "9ec269e3d60f47de00f4940f803e13a6bd6abee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d32bd7a00954bee9a8925b07d850573715ce0412133f26750b148913f09b5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a125847e83da96aedcbde6348477dad552258dadda9ffe6d43b27eb3e478812b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FunctionData.decompositionOverArgs (fData : FunctionData) (args : Array Nat) :
    MetaM (Option (Expr × Expr)) := do

  unless isOrderedSubsetOf fData.mainArgs args do return none
  unless ¬(fData.fn.containsFVar fData.mainVar.fvarId!) do return none

  withLCtx fData.lctx fData.insts do

  let gxs := args.map (fun i => fData.args[i]!.expr)

  try
    let gx ← mkProdElem gxs -- this can crash if we have dependent types
    let g ← withLCtx fData.lctx fData.insts <| mkLambdaFVars #[fData.mainVar] gx

    withLocalDeclD `y (← inferType gx) fun y => do

      let ys ← mkProdSplitElem y gxs.size
      let args' := (args.zip ys).foldl (init := fData.args)
          (fun args' (i,y) => args'.set! i { expr := y, coe := args'[i]!.coe })

      let f ← mkLambdaFVars #[y] (Mor.mkAppN fData.fn args')
      return (f,g)
  catch _ =>
    return none

end Meta.FunProp

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant22138a38ed007ad6d774bfa378452b2bd446e2fb0b80699dc94a13970a641469.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ec269e3d60f47de00f4940f803e13a6bd6abee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
