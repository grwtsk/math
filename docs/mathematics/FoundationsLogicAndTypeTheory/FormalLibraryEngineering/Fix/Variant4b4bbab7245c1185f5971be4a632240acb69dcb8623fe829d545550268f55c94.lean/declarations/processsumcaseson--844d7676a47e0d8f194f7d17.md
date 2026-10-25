# processSumCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e95aa75ddcc13ebf252866e14beae929d4c823402e694c8a12a4c9b15aa5c969",
  "kind": "def",
  "lexical_name": "processSumCasesOn",
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
  "slug": "processsumcaseson--844d7676a47e0d8f194f7d17",
  "source": {
    "blob": "21aa83fd323f9a3d86ab7141429a8685d10abc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:844d7676a47e0d8f194f7d17002a641f30470195d8b050ab20c0c67fb55cdfdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e95aa75ddcc13ebf252866e14beae929d4c823402e694c8a12a4c9b15aa5c969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processSumCasesOn (x F val : Expr) (k : (x : Expr) → (F : Expr) → (val : Expr) → TermElabM Expr) : TermElabM Expr := do
  if x.isFVar && val.isAppOfArity ``PSum.casesOn 6 && val.getArg! 3 == x && (val.getArg! 4).isLambda && (val.getArg! 5).isLambda then
    let args := val.getAppArgs
    let α := args[0]!
    let β := args[1]!
    let FDecl ← F.fvarId!.getDecl
    let (motiveNew, u) ← lambdaTelescope args[2]! fun xs type => do
      let type ← mkArrow (FDecl.type.replaceFVar x xs[0]!) type
      return (← mkLambdaFVars xs type, ← getLevel type)
    let mkMinorNew (ctorName : Name) (minor : Expr) : TermElabM Expr :=
      lambdaBoundedTelescope minor 1 fun xs body => do
        let xNew := xs[0]!
        let FTypeNew := FDecl.type.replaceFVar x (← mkAppOptM ctorName #[α, β, xNew])
        withLocalDeclD FDecl.userName FTypeNew fun FNew => do
          mkLambdaFVars #[xNew, FNew] (← processSumCasesOn xNew FNew body k)
    let minorLeft ← mkMinorNew ``PSum.inl args[4]!
    let minorRight ← mkMinorNew ``PSum.inr args[5]!
    let result := mkAppN (mkConst ``PSum.casesOn [u, (← getLevel α), (← getLevel β)]) #[α, β, motiveNew, x, minorLeft, minorRight, F]
    return result
  else
    k x F val

/-- Refine `F` over `PSigma.casesOn` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21aa83fd323f9a3d86ab7141429a8685d10abc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
