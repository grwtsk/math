# addSmartUnfoldingDefAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01f7aabceb094026c0e06195530e00e0bfb3ea13615c8fee20b3c884f96175b6",
  "kind": "def",
  "lexical_name": "addSmartUnfoldingDefAux",
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
  "slug": "addsmartunfoldingdefaux--715ed4f75b0105e7e25d05a3",
  "source": {
    "blob": "6641c4909dbcd3537d09ea74ab66603fb0be31c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:715ed4f75b0105e7e25d05a37c0e1cd4267dedeec5eee3e027f302e31f52b8c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01f7aabceb094026c0e06195530e00e0bfb3ea13615c8fee20b3c884f96175b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addSmartUnfoldingDefAux (preDef : PreDefinition) (recArgPos : Nat) : MetaM PreDefinition := do
  return { preDef with
    declName  := mkSmartUnfoldingNameFor preDef.declName
    value     := (← visit preDef.value)
    modifiers := default
  }
where
  /--
     Auxiliary method for annotating `match`-alternatives with `markSmartUnfoldingMatch` and `markSmartUnfoldingMatchAlt`.

     It uses the following approach:
     - Whenever it finds a `match` application `e` s.t. `recArgHasLooseBVarsAt preDef.declName recArgPos e`,
       it marks the `match` with `markSmartUnfoldingMatch`, and each alternative that does not contain a nested marked `match`
       is marked with `markSmartUnfoldingMatchAlt`.

     Recall that the condition `recArgHasLooseBVarsAt preDef.declName recArgPos e` is the one used at `mkBRecOn`.
  -/
  visit (e : Expr) : MetaM Expr := do
    match e with
    | Expr.lam ..     => lambdaTelescope e fun xs b => do mkLambdaFVars xs (← visit b)
    | Expr.forallE .. => forallTelescope e fun xs b => do mkForallFVars xs (← visit b)
    | Expr.letE n type val body nondep =>
      mapLetDecl n type (← visit val) (nondep := nondep) fun x => do
        visit (body.instantiate1 x)
    | Expr.mdata d b     => return mkMData d (← visit b)
    | Expr.proj n i s    => return mkProj n i (← visit s)
    | Expr.app .. =>
      let processApp (e : Expr) : MetaM Expr :=
        e.withApp fun f args =>
          return mkAppN (← visit f) (← args.mapM visit)
      match (← matchMatcherApp? e) with
      | some matcherApp =>
        if !recArgHasLooseBVarsAt preDef.declName recArgPos e then
          processApp e
        else
          let mut altsNew := #[]
          for alt in matcherApp.alts, numParams in matcherApp.altNumParams do
            let altNew ← lambdaBoundedTelescope alt numParams fun xs altBody => do
              unless xs.size = numParams do
                throwError "unexpected matcher application alternative{indentExpr alt}\nat application{indentExpr e}"
              let altBody ← visit altBody
              let containsSUnfoldMatch := Option.isSome <| altBody.find? fun e => smartUnfoldingMatch? e |>.isSome
              let altBody := if !containsSUnfoldMatch then markSmartUnfoldingMatchAlt altBody else altBody
              mkLambdaFVars xs altBody
            altsNew := altsNew.push altNew
          return markSmartUnfoldingMatch { matcherApp with alts := altsNew }.toExpr
      | _ => processApp e
    | _ => return e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variant54402d6a84560042821d560107e35121b6bb1de39baf86caf47fd8054e3d7150.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6641c4909dbcd3537d09ea74ab66603fb0be31c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
