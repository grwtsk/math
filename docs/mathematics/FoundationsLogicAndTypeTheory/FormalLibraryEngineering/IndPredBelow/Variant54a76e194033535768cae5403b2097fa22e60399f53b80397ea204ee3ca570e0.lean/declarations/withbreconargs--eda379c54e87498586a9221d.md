# withBRecOnArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd4376347938d7f4f584244ebee134c83e967b28d8ff046563f7da358f3a9240",
  "kind": "def",
  "lexical_name": "withBRecOnArgs",
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
  "slug": "withbreconargs--eda379c54e87498586a9221d",
  "source": {
    "blob": "a6524946d69761b748e70697dca6f2be6ca67c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eda379c54e87498586a9221da2800b95ff8d61b9651932ec297dbd4ebc2d0e10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd4376347938d7f4f584244ebee134c83e967b28d8ff046563f7da358f3a9240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withBRecOnArgs (k : (newMinors : Array Expr) → (proofArgs : Array Expr) → MetaM Unit) (ctx : Context) : MetaM Unit := do
  let rec go (i : Nat) (newMinors : Array Expr) : MetaM Unit := do
    if h : i < ctx.motives.size then
      let motive := ctx.motives[i]
      let motiveType ← inferType motive
      -- {motive : (a : Nat) → (x : ABC a) → Prop}
      -- ==> (F_1 : (a : Nat) → (x : ABC a) → ABC.below x → motive a x)
      let type ← forallTelescope motiveType fun majors _ => do
        let type ← mkArrow (mkAppN (mkBelowAppOfIdx i ctx) majors) (mkAppN motive majors)
        mkForallFVars majors type
      withLocalDeclD ((`F).appendIndexAfter (i + 1)) type fun minor =>
        go (i + 1) (newMinors.push minor)
    else
      -- #[@ABC.below params... motives..., ...]
      let recMotives := (Array.range ctx.motives.size).map (mkBelowAppOfIdx · ctx)
      let mut recMinors := #[]
      for minor in ctx.minors do
        let minorType ← inferType minor
        let i := ctx.motiveToIdx.get! minorType.getForallBody.getAppFn.fvarId!
        let name ← minor.fvarId!.getUserName
        let belowCtorName := ctx.belowNames[i]! ++ name
        let expr ← forallTelescope minorType fun minorArgs res => do
          let rec go2 (j : Nat) (vars args : Array Expr) : MetaM Expr := do
            if h : j < minorArgs.size then
              let type ← inferType minorArgs[j]
              if let some i' := isIH type ctx then
                -- minorArgs[j] : (a : Nat) → motive (f a)
                -- newIH : (a : Nat) → ABC.below (f a)
                withLocalDeclD (← mkFreshUserName `ih) (ihTypeToBelowType type ctx) fun newIH => do
                  -- proof = (fun a => F_1 (f a) (newIH a))
                  let proof ← forallTelescope type fun args body => do
                    let proof := .app (body.updateFn newMinors[i']!) (mkAppN newIH args)
                    mkLambdaFVars args proof
                  -- fun ... ih => ... ih (fun a => F_1 (f a) (newIH a))
                  go2 (j + 1) (vars.push newIH) ((args.push newIH).push proof)
              else
                go2 (j + 1) (vars.push minorArgs[j]) (args.push minorArgs[j])
            else
              -- constructor ABC.test (f : Nat → Nat) (h : (a : Nat) → ABC (f a)) : ABC (f 0 + f 1)
              -- proof = (fun f h ih => @ABC.below.test motive f h ih (fun a => F_1 (f a) (ih a)))
              let belowCtor := .const belowCtorName (ctx.levelParams.map Level.param)
              let proof := mkAppN (mkAppN (mkAppN belowCtor ctx.params) ctx.motives) args
              mkLambdaFVars vars proof
          termination_by minorArgs.size - j
          go2 0 #[] #[]
        recMinors := recMinors.push expr
      k newMinors (ctx.params ++ recMotives ++ recMinors)
  termination_by ctx.motives.size - i
  go 0 #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6524946d69761b748e70697dca6f2be6ca67c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
