# checkDeprecatedSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae59727b8b2a018ae39e0f4f0ab8571852c3650108ca608f84c3277ad10a6310",
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
  "slug": "checkdeprecatedsyntax--46b497aa108471893a6734b1",
  "source": {
    "blob": "de395f459707e77bdb26f692bdfc6b450403b05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant3f8b0289d51924cce1cbbae10757f3e63e914a5919eb0d44d30c3d28dd572001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46b497aa108471893a6734b1b0ef642609952056c3f0e5b8adc445a4e16d15f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant3f8b0289d51924cce1cbbae10757f3e63e914a5919eb0d44d30c3d28dd572001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae59727b8b2a018ae39e0f4f0ab8571852c3650108ca608f84c3277ad10a6310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–79.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant3f8b0289d51924cce1cbbae10757f3e63e914a5919eb0d44d30c3d28dd572001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntax/Variant3f8b0289d51924cce1cbbae10757f3e63e914a5919eb0d44d30c3d28dd572001.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de395f459707e77bdb26f692bdfc6b450403b05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
