# updateAlts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e29051c36adefab9711516b3b3e7e214b58831ff58dde62676ad5cf4b466b77",
  "kind": "def",
  "lexical_name": "updateAlts",
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
  "slug": "updatealts--f13e4cb94859fca0b5bfa66a",
  "source": {
    "blob": "6027b98417777a9f95bf1707bf6380210910797f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f13e4cb94859fca0b5bfa66a1d5eed1dd862eea48a7737f1509aa9460b34a98f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e29051c36adefab9711516b3b3e7e214b58831ff58dde62676ad5cf4b466b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def updateAlts (unrefinedArgType : Expr) (typeNew : Expr) (altNumParams : Array Nat) (alts : Array Expr) (refined : Bool) (i : Nat) : MetaM (Array Expr) := do
  if h : i < alts.size then
    let alt       := alts[i]
    let numParams := altNumParams[i]!
    let typeNew ← whnfD typeNew
    match typeNew with
    | Expr.forallE _ d b _ =>
      let (alt, refined) ← lambdaBoundedTelescope alt numParams fun xs alt => do
        unless xs.size == numParams do
          throwError "unexpected matcher application, alternative must have {numParams} parameters"
        let d ← try instantiateForall d xs catch _ => throwError "unexpected matcher application, insufficient number of parameters in alternative"
        forallBoundedTelescope d (some 1) fun x _ => do
          let alt ← mkLambdaFVars x alt -- x is the new argument we are adding to the alternative
          let refined ← if refined then
            pure refined
          else
            pure <| !(← isDefEq unrefinedArgType (← inferType x[0]!))
          return (← mkLambdaFVars xs alt, refined)
      updateAlts unrefinedArgType (b.instantiate1 alt) altNumParams (alts.set i alt) refined (i+1)
    | _ => throwError "unexpected type at MatcherApp.addArg"
  else
    if refined then
      return alts
    else
      throwError "failed to add argument to matcher application, argument type was not refined by `casesOn`"

/--
Given
- matcherApp `match_i As (fun xs => motive[xs]) discrs (fun ys_1 => (alt_1 : motive (C_1[ys_1])) ... (fun ys_n => (alt_n : motive (C_n[ys_n]) remaining`, and
- expression `e : B[discrs]`,
Construct the term
`match_i As (fun xs => B[xs] -> motive[xs]) discrs (fun ys_1 (y : B[C_1[ys_1]]) => alt_1) ... (fun ys_n (y : B[C_n[ys_n]]) => alt_n) e remaining`.

We only abstract discriminants that are fvars.  We used to use `kabstract` to abstract all
discriminants from `B[discrs]`, but that changes the type of the arg in ways that make it no
longer compatible with the original recursive function (issue #7322).

If this is still not great, then we could try to use `kabstract`, but only on the last parameter
of the `arg` (the termination proof obligation).

This method assumes
- the `matcherApp.motive` is a lambda abstraction where `xs.size == discrs.size`
- each alternative is a lambda abstraction where `ys_i.size == matcherApp.altNumParams[i]`

This is used in `Lean.Elab.PreDefinition.WF.Fix` when replacing recursive calls with calls to
the argument provided by `fix` to refine type of the local variable used for recursive calls,
which may mention `major`. See there for how to use this function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6027b98417777a9f95bf1707bf6380210910797f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
