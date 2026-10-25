# runTermElabM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d261d31705323e4574781878b025921372d5f390b7ab64b16732c436043a9e1d",
  "kind": "def",
  "lexical_name": "runTermElabM",
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
  "slug": "runtermelabm--dbdd85a410e2eccc47c7be50",
  "source": {
    "blob": "112bf0606c1b16af59d7953c32ac7959b6508ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 774,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbdd85a410e2eccc47c7be50f0aa454940682649d204ec4f8636799244d0eb06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d261d31705323e4574781878b025921372d5f390b7ab64b16732c436043a9e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runTermElabM (elabFn : Array Expr → TermElabM α) : CommandElabM α := do
  let scope ← getScope
  liftTermElabM <|
    Term.withAutoBoundImplicit <|
      Term.elabBinders scope.varDecls fun xs => do
        -- We need to synthesize postponed terms because this is a checkpoint for the auto-bound implicit feature
        -- If we don't use this checkpoint here, then auto-bound implicits in the postponed terms will not be handled correctly.
        Term.synthesizeSyntheticMVarsNoPostponing
        let mut sectionFVars := {}
        for uid in scope.varUIds, x in xs do
          sectionFVars := sectionFVars.insert uid x
        withReader ({ · with sectionFVars := sectionFVars }) do
          -- We don't want to store messages produced when elaborating `(getVarDecls s)` because they have already been saved when we elaborated the `variable`(s) command.
          -- So, we use `Core.resetMessageLog`.
          Core.resetMessageLog
          let xs ← Term.addAutoBoundImplicits xs none
          if xs.all (·.isFVar) then
            Term.withoutAutoBoundImplicit <| elabFn xs
          else
            -- Abstract any mvars that appear in `xs` using `mkForallFVars` (the type `mkSort Level.zero` is an arbitrary placeholder)
            -- and then rebuild the local context from scratch.
            -- Resetting prevents the local context from including the original fvars from `xs`.
            let ctxType ← Meta.mkForallFVars' xs (mkSort Level.zero)
            Meta.withLCtx {} {} <| Meta.forallBoundedTelescope ctxType xs.size fun xs _ =>
              Term.withoutAutoBoundImplicit <| elabFn xs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112bf0606c1b16af59d7953c32ac7959b6508ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
