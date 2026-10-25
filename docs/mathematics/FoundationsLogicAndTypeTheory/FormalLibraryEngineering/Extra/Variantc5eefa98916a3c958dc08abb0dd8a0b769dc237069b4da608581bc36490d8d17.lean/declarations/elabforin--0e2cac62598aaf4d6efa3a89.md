# elabForIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33c063b639460f7b768dc56e3e606485bb8064ee386add1d9466b2be9992d291",
  "kind": "def",
  "lexical_name": "elabForIn",
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
  "slug": "elabforin--0e2cac62598aaf4d6efa3a89",
  "source": {
    "blob": "375749812ea7bd835d5a3ce0fae993d9fc5888f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e2cac62598aaf4d6efa3a89e209a847f3c3cd0b7d5a113e466337b83fcde563",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33c063b639460f7b768dc56e3e606485bb8064ee386add1d9466b2be9992d291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab forInMacro] def elabForIn : TermElab :=  fun stx expectedType? => do
  match stx with
  | `(for_in% $col $init $body) =>
        tryPostponeIfNoneOrMVar expectedType?
        let colE ← elabTerm col none
        let m ← getMonadForIn expectedType?
        let colType ← inferType colE
        let elemType ← mkFreshExprMVar (mkSort (mkLevelSucc (← mkFreshLevelMVar)))
        let forInInstance ← try
          mkAppM ``ForIn #[m, colType, elemType]
        catch _ =>
          tryPostpone; throwError "failed to construct 'ForIn' instance for collection{indentExpr colType}\nand monad{indentExpr m}"
        match (← trySynthInstance forInInstance) with
        | .some inst =>
          let forInFn ← mkConst ``forIn
          elabAppArgs forInFn
            (namedArgs := #[{ name := `m, val := Arg.expr m}, { name := `α, val := Arg.expr elemType }, { name := `self, val := Arg.expr inst }])
            (args := #[Arg.expr colE, Arg.stx init, Arg.stx body])
            (expectedType? := expectedType?)
            (explicit := false) (ellipsis := false) (resultIsOutParamSupport := false)
        | .undef    => tryPostpone; throwForInFailure forInInstance
        | .none     => throwForInFailure forInInstance
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375749812ea7bd835d5a3ce0fae993d9fc5888f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
