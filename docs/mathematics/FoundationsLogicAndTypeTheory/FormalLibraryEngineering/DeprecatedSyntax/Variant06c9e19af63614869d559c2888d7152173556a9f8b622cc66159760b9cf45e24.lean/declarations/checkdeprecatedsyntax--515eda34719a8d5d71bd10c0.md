# checkDeprecatedSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3253dddae75209445ab9cc7ccec01d205646e153cd698e91f0db5bd118a87a4",
  "kind": "def",
  "lexical_name": "checkDeprecatedSyntax",
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
  "slug": "checkdeprecatedsyntax--515eda34719a8d5d71bd10c0",
  "source": {
    "blob": "5cebb68fee9d815cbf0e41142c67630599ac434f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:515eda34719a8d5d71bd10c0b574ca3236ed4471613a4414788b0d5d86d48643",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3253dddae75209445ab9cc7ccec01d205646e153cd698e91f0db5bd118a87a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkDeprecatedSyntax [Monad m] [MonadEnv m] [MonadLog m] [MonadOptions m]
    [AddMessageContext m] [MonadRef m] (stx : Syntax) (macroStack : MacroStack) : m Unit := do
  let env ← getEnv
  let kind := stx.getKind
  if let some entry := (deprecatedSyntaxExt.getState env).find? kind then
    let extraMsg := match entry.text? with
      | some text => m!": {text}"
      | none => m!""
    match macroStack with
    | { before := macroStx, .. } :: { before := callerStx, .. } :: _ =>
      let expandedFrom :=
        if callerStx.getKind != macroStx.getKind then
          m!" (expanded from '{callerStx.getKind}')"
        else m!""
      Linter.logLintIf Linter.linter.deprecated.syntax macroStx
        m!"macro '{macroStx.getKind}'{expandedFrom} produces deprecated syntax '{kind}'{extraMsg}"
    | { before := macroStx, .. } :: [] =>
      Linter.logLintIf Linter.linter.deprecated.syntax macroStx
        m!"macro '{macroStx.getKind}' produces deprecated syntax '{kind}'{extraMsg}"
    | [] =>
      Linter.logLintIf Linter.linter.deprecated.syntax stx
        m!"syntax '{kind}' has been deprecated{extraMsg}"

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cebb68fee9d815cbf0e41142c67630599ac434f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
