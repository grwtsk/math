# getTheoremFromConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43e22d7768f59849f001fb5b75b90408ed113833c56852ccc1f51e2be0ad352e",
  "kind": "def",
  "lexical_name": "getTheoremFromConst",
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
  "slug": "gettheoremfromconst--7c43bdd57a6f5aad6e5b0977",
  "source": {
    "blob": "56cffd3792e30421701d4b663453b1635aa2e5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c43bdd57a6f5aad6e5b09775c848e7e062c97076df46cb06654a83967c01ae5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43e22d7768f59849f001fb5b75b90408ed113833c56852ccc1f51e2be0ad352e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getTheoremFromConst (declName : Name) (prio : Nat := eval_prio default) : MetaM Theorem := do
  let info ← getConstInfo declName
  forallTelescope info.type fun xs b => do
    let .some (decl,f) ← getFunProp? b
      | throwError "unrecognized function property `{← ppExpr b}`"
    let funPropName := decl.funPropName
    let fData? ←
      withConfig (fun cfg => { cfg with zeta := false}) <| getFunctionData? f defaultUnfoldPred
    if let .some thmArgs ← detectLambdaTheoremArgs (← fData?.get) xs then
      return .lam {
        funPropName := funPropName
        thmName := declName
        thmArgs := thmArgs
      }

    let .data fData := fData?
      | throwError s!"function in invalid form {← ppExpr f}"

    match fData.fn with
    | .const funName _ =>

      -- todo: more robust detection of compositional and uncurried form!!!
      -- I think this detects `Continuous fun x => x + c` as compositional ...
      let dec ← fData.nontrivialDecomposition
      let form : TheoremForm := if dec.isSome || funName == ``Prod.mk then .comp else .uncurried

      return .function {
-- funPropName funName fData.mainArgs fData.args.size thmForm
        funPropName := funPropName
        thmOrigin := .decl declName
        funOrigin := .decl funName
        mainArgs := fData.mainArgs
        appliedArgs := fData.args.size
        priority := prio
        form := form
      }
    | .fvar .. =>
      let (_,_,b') ← forallMetaTelescope info.type
      let keys := ← RefinedDiscrTree.mkDTExprs b' false
      let thm : GeneralTheorem := {
        funPropName := funPropName
        thmName := declName
        keys    := keys
        priority  := prio
      }
      -- todo: maybe do a little bit more careful detection of morphism and transition theorems
      match (← fData.isMorApplication) with
      | .exact => return .mor thm
      | .underApplied | .overApplied =>
        throwError "fun_prop theorem about morphism coercion has to be in fully applied form"
      | .none =>
        if fData.fn.isFVar && (fData.args.size == 1) &&
           (fData.args[0]!.expr == fData.mainVar) then
          return .transition thm

        throwError "Not a valid `fun_prop` theorem!"
    | _ =>
      throwError "unrecognized theoremType `{← ppExpr b}`"


/-- Register theorem `declName` with `fun_prop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cffd3792e30421701d4b663453b1635aa2e5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
