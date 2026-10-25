# processSumCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c95280ea7320eb38c09bd4589cc0924d402e228b39a7d37e195f7935a6bd1673",
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
  "slug": "processsumcaseson--97cc808683b9d71d63e74032",
  "source": {
    "blob": "39b35edd3f1e666b6e8e366b3289e93b62eed3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97cc808683b9d71d63e74032d6215b46c13aba84589f720d084362b0efe7ad85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c95280ea7320eb38c09bd4589cc0924d402e228b39a7d37e195f7935a6bd1673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b35edd3f1e666b6e8e366b3289e93b62eed3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
