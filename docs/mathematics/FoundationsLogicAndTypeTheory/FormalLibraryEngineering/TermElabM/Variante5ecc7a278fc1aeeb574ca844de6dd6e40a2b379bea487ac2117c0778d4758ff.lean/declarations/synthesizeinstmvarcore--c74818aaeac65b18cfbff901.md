# synthesizeInstMVarCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e2f1801294f0d882bc035a511cd754b8448c64db20e9cb81495886d6f3165eb",
  "kind": "def",
  "lexical_name": "synthesizeInstMVarCore",
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
  "slug": "synthesizeinstmvarcore--c74818aaeac65b18cfbff901",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1289,
    "line": 1232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c74818aaeac65b18cfbff901026300100e2c37795916aaa7b20afd38899fa0f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e2f1801294f0d882bc035a511cd754b8448c64db20e9cb81495886d6f3165eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1232–1289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def synthesizeInstMVarCore (instMVar : MVarId) (maxResultSize? : Option Nat := none) (extraErrorMsg? : Option MessageData := none): TermElabM Bool := do
  let extraErrorMsg := extraMsgToMsg extraErrorMsg?
  let instMVarDecl ← getMVarDecl instMVar
  let type := instMVarDecl.type
  let type ← instantiateMVars type
  let result ← trySynthInstance type maxResultSize?
  match result with
  | LOption.some val =>
    if (← instMVar.isAssigned) then
      let oldVal ← instantiateMVars (mkMVar instMVar)
      unless (← isDefEq oldVal val) do
        if (← containsPendingMVar oldVal <||> containsPendingMVar val) then
          /- If `val` or `oldVal` contains metavariables directly or indirectly (e.g., in a let-declaration),
             we return `false` to indicate we should try again later. This is very coarse grain since
             the metavariable may not be responsible for the failure. We should refine the test in the future if needed.
             This check has been added to address dependencies between postponed metavariables. The following
             example demonstrates the issue fixed by this test.
             ```
               structure Point where
                 x : Nat
                 y : Nat

               def Point.compute (p : Point) : Point :=
                 let p := { p with x := 1 }
                 let p := { p with y := 0 }
                 if (p.x - p.y) > p.x then p else p
             ```
             The `isDefEq` test above fails for `Decidable (p.x - p.y ≤ p.x)` when the structure instance assigned to
             `p` has not been elaborated yet.
           -/
          return false -- we will try again later
        let oldValType ← inferType oldVal
        let valType ← inferType val
        unless (← isDefEq oldValType valType) do
          let (oldValType, valType) ← addPPExplicitToExposeDiff oldValType valType
          throwError "synthesized type class instance type is not definitionally equal to expected type, synthesized{indentExpr val}\nhas type{indentExpr valType}\nexpected{indentExpr oldValType}{extraErrorMsg}"
        let (oldVal, val) ← addPPExplicitToExposeDiff oldVal val
        throwError "synthesized type class instance is not definitionally equal to expression inferred by typing rules, synthesized{indentExpr val}\ninferred{indentExpr oldVal}{extraErrorMsg}"
    else
      unless (← isDefEq (mkMVar instMVar) val) do
        throwError "failed to assign synthesized type class instance{indentExpr val}{extraErrorMsg}"
    return true
  | .undef => return false -- we will try later
  | .none  =>
    if (← read).ignoreTCFailures then
      return false
    else
      let msg ← match type with
        | .app (.const cls _) (.const typ _) =>
          -- This has the structure of a `deriving`-style type class, alter feedback accordingly
          if ← hasDerivingHandler cls then
            pure <| extraErrorMsg ++ .hint' m!"Adding the command `deriving instance {cls} for {typ}` may allow Lean to derive the missing instance."
          else
            pure <| extraErrorMsg ++ useTraceSynthMsg
        | _ =>
            pure <| extraErrorMsg ++ useTraceSynthMsg
      throwNamedError lean.synthInstanceFailed "failed to synthesize instance of type class{indentExpr type}{msg}"

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L1232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
