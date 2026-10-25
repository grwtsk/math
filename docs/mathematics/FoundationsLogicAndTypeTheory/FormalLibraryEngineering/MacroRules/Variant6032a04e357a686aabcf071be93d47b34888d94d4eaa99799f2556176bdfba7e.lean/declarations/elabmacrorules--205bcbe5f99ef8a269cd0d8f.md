# elabMacroRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0807c299bb6893ccc8f1f8ed44ffb7146b5687ee3481d056f8f9260529f0445c",
  "kind": "def",
  "lexical_name": "elabMacroRules",
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
  "slug": "elabmacrorules--205bcbe5f99ef8a269cd0d8f",
  "source": {
    "blob": "aad1c470a1a8e6a595e8763664453a78189b61b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant6032a04e357a686aabcf071be93d47b34888d94d4eaa99799f2556176bdfba7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:205bcbe5f99ef8a269cd0d8f9de6ecff73da82c87914f6cc07697a121866e723",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant6032a04e357a686aabcf071be93d47b34888d94d4eaa99799f2556176bdfba7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0807c299bb6893ccc8f1f8ed44ffb7146b5687ee3481d056f8f9260529f0445c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab «macro_rules»] def elabMacroRules : CommandElab :=
  adaptExpander fun stx => match stx with
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk $alts:matchAlt*) =>
    -- exclude command prefix from synthetic position used for e.g. jumping to the macro definition
    withRef (mkNullNode #[tk, mkNullNode alts]) do
      expandNoKindMacroRulesAux alts "macro_rules" fun kind? alts =>
        `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules $[(kind := $(mkIdent <$> kind?))]? $alts:matchAlt*)
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk (kind := $kind) | $x:ident => $rhs) =>
    withRef (mkNullNode #[tk, rhs]) do
      let attr ← `(attrInstance| $attrKind:attrKind macro $kind)
      let attrs := match attrs? with
        | some attrs => attrs.getElems.push attr
        | none => #[attr]
      let vis := Parser.Command.visibility.ofAttrKind attrKind
      `($[$doc?:docComment]? @[$attrs,*] $vis:visibility
        aux_def $(mkIdentFrom tk kind.getId (canonical := true)) $kind : Macro := fun $x:ident => $rhs)
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind macro_rules%$tk (kind := $kind) $alts:matchAlt*) =>
    withExporting (isExporting := !attrKind matches `(attrKind| local)) do
    withRef (mkNullNode #[tk, mkNullNode alts]) do
      elabMacroRulesAux doc? attrs? attrKind tk (← resolveSyntaxKind kind.getId) alts
  | _  => throwUnsupportedSyntax

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant6032a04e357a686aabcf071be93d47b34888d94d4eaa99799f2556176bdfba7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant6032a04e357a686aabcf071be93d47b34888d94d4eaa99799f2556176bdfba7e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aad1c470a1a8e6a595e8763664453a78189b61b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
