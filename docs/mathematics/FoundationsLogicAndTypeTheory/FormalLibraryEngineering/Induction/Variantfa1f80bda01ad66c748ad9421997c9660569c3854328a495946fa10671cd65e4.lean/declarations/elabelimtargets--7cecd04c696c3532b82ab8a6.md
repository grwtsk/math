# elabElimTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a99811d63b6b6d564afd734cf45aa70fa7b64c9e3c987623187186f417f4bb0",
  "kind": "def",
  "lexical_name": "elabElimTargets",
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
  "slug": "elabelimtargets--7cecd04c696c3532b82ab8a6",
  "source": {
    "blob": "e1ac382d587c03dd137dad0d3b17273cb7572b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 907,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cecd04c696c3532b82ab8a6b5c7b04602b34e896df33ca944bf0b994b25b135",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a99811d63b6b6d564afd734cf45aa70fa7b64c9e3c987623187186f417f4bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def elabElimTargets (targets : Array Syntax) : TacticM (Array Expr × Array (Ident × FVarId)) :=
  withMainContext do
    let infos : Array ElimTargetInfo ← targets.mapM fun target => do
      let view ← mkTargetView target
      let expr ← elabTerm view.term none
      let arg? : Option GeneralizeArg :=
        if let some hIdent := view.hIdent? then
          some { expr, hName? := hIdent.getId }
        else if ← shouldGeneralizeTarget expr then
          some { expr }
        else
          none
      pure { view, expr, arg? }
    if infos.all (·.arg?.isNone) then
      return (infos.map (·.expr), #[])
    else
      liftMetaTacticAux fun mvarId => do
        let (fvarIdsNew, mvarId) ← mvarId.generalize (infos.filterMap (·.arg?))
        -- note: `fvarIdsNew` contains the generalized variables followed by all the `h` variables
        let mut result := #[]
        let mut j := 0
        for info in infos do
          if info.arg?.isSome then
            result := result.push (mkFVar fvarIdsNew[j]!)
            j := j + 1
          else
            result := result.push info.expr
        -- note: `fvarIdsNew[j...*]` contains all the `h` variables
        let hIdents := infos.filterMap (·.view.hIdent?)
        assert! hIdents.size + j == fvarIdsNew.size
        return ((result, hIdents.zip fvarIdsNew[j...*]), [mvarId])

/--
Generalize targets in `fun_induction` and `fun_cases`. Should behave like `elabCasesTargets` with
no targets annotated with `h : _`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ac382d587c03dd137dad0d3b17273cb7572b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
