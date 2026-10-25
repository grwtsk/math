# $elabName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:984c0543d836860809eb5311fa14be378004e986664872cea82f65b5f3e3f64a",
  "kind": "def",
  "lexical_name": "$elabName",
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
  "slug": "elabname--fa96c43544c2cf0af3ce9ca9",
  "source": {
    "blob": "cabe4195d3557c319acf5e9e948dded3a2a7d5ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa96c43544c2cf0af3ce9ca912f2327b78812a27b19cb8ee29ef64a0f68841c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:984c0543d836860809eb5311fa14be378004e986664872cea82f65b5f3e3f64a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    def $elabName (optConfig : Syntax) : $monadName $type := $adapt do
      let recover := $recover
      let go : TermElabM $type := withRef optConfig do
        let items := mkConfigItemViews (getConfigItems optConfig)
        if items.isEmpty then
          return $empty
        unless (← getEnv).contains ``$type do
          throwError m!"Error evaluating configuration: Environment does not yet contain type {``$type}"
        recordExtraModUseFromDecl (isMeta := true) ``$type
        let c ← elabConfig recover ``$type items
        if c.hasSyntheticSorry then
          -- An error is already logged, return the default.
          return $empty
        if c.hasSorry then
          throwError m!"Configuration contains `sorry`"
        try
          let res ← eval c
          return res
        catch ex =>
          let msg := m!"Error evaluating configuration\n{indentD c}\n\nException: {ex.toMessageData}"
          if false then
            logError msg
            return $empty
          else
            throwError msg
      go)

end

/--
`declare_config_elab_legacy elabName TypeName` declares a function `elabName : Syntax → TacticM TypeName`
that elaborates a tactic configuration.
The tactic configuration can be from `Lean.Parser.Tactic.optConfig` or `Lean.Parser.Tactic.config`,
and these can also be wrapped in null nodes (for example, from `(config)?`).

The elaborator responds to the current recovery state.

For defining elaborators for commands, use `declare_command_config_elab`.

This command has been deprecated since 2026-05-14. Use `declare_config_elab` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabe4195d3557c319acf5e9e948dded3a2a7d5ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
