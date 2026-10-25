# elabTestExtern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f6c5281aae59e546a5e712758c7a875dc7e4eb71ab9044d949839773f13be16",
  "kind": "def",
  "lexical_name": "elabTestExtern",
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
  "slug": "elabtestextern--53034d245669952c6acd96f1",
  "source": {
    "blob": "1956298e4646a7b2e19a7840c5897db8054878cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExtern/Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53034d245669952c6acd96f181705b63d64accdb365cfb8a2e9370a3bcd68e07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExtern/Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f6c5281aae59e546a5e712758c7a875dc7e4eb71ab9044d949839773f13be16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab testExternCmd] meta unsafe def elabTestExtern : CommandElab
  | `(test_extern $t:term) => liftTermElabM do
    let t ← elabTermAndSynthesize t none
    match t.getAppFn with
    | .const f _ =>
      let env ← getEnv
      if isExtern env f || (getImplementedBy? env f).isSome then
        let t' := (← unfold t f).expr
        let r := mkApp (.const ``reduceBool []) (← mkDecide (← mkEq t t'))
        if ! (← evalExpr Bool (.const ``Bool []) r) then
          throwError
            ("native implementation did not agree with reference implementation!\n" ++
            m!"Compare the outputs of:\n#eval {t}\n and\n#eval {t'}")
      else
        throwError "test_extern: {f} does not have an @[extern] attribute or @[implemented_by] attribute"
    | _ => throwError "test_extern: expects a function application"
  | _ => throwUnsupportedSyntax

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExtern/Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestExtern/Variantd9a88bedd6c9963fbc4e4421aefab681bbbc6aa8cd6bb7c153ee43251da4480a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1956298e4646a7b2e19a7840c5897db8054878cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
