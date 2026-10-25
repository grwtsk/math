# addSmartUnfoldingDefAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97b9873db7324c88c168dfd6a1e9e08de694690c67a743c0cd9080287778e909",
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
  "slug": "addsmartunfoldingdefaux--a213ea80db062bfbe1e3c161",
  "source": {
    "blob": "e514bcf363f809c949c954edbb1e1d6a416a54a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variantc914c5320dab73d477bcb91b616fdd3e485bade49c97c35b05e2f932eca50e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a213ea80db062bfbe1e3c16103295c187e6329aa07c6c8ed6d7edbff8be0228b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variantc914c5320dab73d477bcb91b616fdd3e485bade49c97c35b05e2f932eca50e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97b9873db7324c88c168dfd6a1e9e08de694690c67a743c0cd9080287778e909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–73.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variantc914c5320dab73d477bcb91b616fdd3e485bade49c97c35b05e2f932eca50e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SmartUnfolding/Variantc914c5320dab73d477bcb91b616fdd3e485bade49c97c35b05e2f932eca50e07.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e514bcf363f809c949c954edbb1e1d6a416a54a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
