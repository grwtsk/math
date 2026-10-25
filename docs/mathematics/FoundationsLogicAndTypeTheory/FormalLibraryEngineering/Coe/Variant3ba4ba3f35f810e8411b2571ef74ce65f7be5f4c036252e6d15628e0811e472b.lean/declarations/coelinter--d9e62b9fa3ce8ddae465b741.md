# coeLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b194bc296f644f6774a950f484b4e15a8087af84ed387d0eeb0aaf5a16ef1399",
  "kind": "def",
  "lexical_name": "coeLinter",
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
  "slug": "coelinter--d9e62b9fa3ce8ddae465b741",
  "source": {
    "blob": "0f4a42062a5803a9cecbe36e4f49c74321ad312c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant3ba4ba3f35f810e8411b2571ef74ce65f7be5f4c036252e6d15628e0811e472b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9e62b9fa3ce8ddae465b74142fdd2c58a3f8d6468e3e206e137427061cf11a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant3ba4ba3f35f810e8411b2571ef74ce65f7be5f4c036252e6d15628e0811e472b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b194bc296f644f6774a950f484b4e15a8087af84ed387d0eeb0aaf5a16ef1399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeLinter : Linter where
  run := fun _ => do
    let mainModule ← getMainModule
    let isCoreModule := mainModule = `elab.linterCoe ∨ (mainModule.getRoot ∈ [`Init, `Std])
    let shouldWarnOnDeprecated := getLinterValue linter.deprecatedCoercions (← getLinterOptions)
    let trees ← Elab.getInfoTrees
    for tree in trees do
      tree.visitM' (m := Elab.Command.CommandElabM) (fun _ info _ => do
        match info with
        | .ofCustomInfo ci =>
          if let some trace := ci.value.get? Elab.Term.CoeExpansionTrace then
            for coeDecl in trace.expandedCoeDecls do
              if isCoreModule && coeDecl ∈ coercionsBannedInCore then
                logWarningAt ci.stx m!"This term uses the coercion `{coeDecl}`, which is banned in Lean's core library."
              if shouldWarnOnDeprecated then
                let some attr := deprecatedAttr.getParam? (← getEnv) coeDecl | pure ()
                logLint linter.deprecatedCoercions ci.stx <| .tagged ``deprecatedAttr <|
                  m!"This term uses the deprecated coercion `{.ofConstName coeDecl true}`."
        | _ => pure ()
        return true) (fun _ _ _ _ => return)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant3ba4ba3f35f810e8411b2571ef74ce65f7be5f4c036252e6d15628e0811e472b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant3ba4ba3f35f810e8411b2571ef74ce65f7be5f4c036252e6d15628e0811e472b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f4a42062a5803a9cecbe36e4f49c74321ad312c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
