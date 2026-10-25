# elabMacro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28be1e097b7b08529efc8746b66ccdfa854e345d9a6cad2e0ab4a9b3232b0000",
  "kind": "def",
  "lexical_name": "elabMacro",
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
  "slug": "elabmacro--de6f3d123ac0c707be5e9167",
  "source": {
    "blob": "4f0ec125bd1bec06e2d52759840508a1fa596b50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant550f3c7e9dee3c6938d62d12d9d2aa143fa5cab5df6692506b4d25a0ffcfad05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de6f3d123ac0c707be5e91678c9a979163b319e7f5fce04d81aea6370c3f5007",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant550f3c7e9dee3c6938d62d12d9d2aa143fa5cab5df6692506b4d25a0ffcfad05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28be1e097b7b08529efc8746b66ccdfa854e345d9a6cad2e0ab4a9b3232b0000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Lean.Parser.Command.macro] def elabMacro : CommandElab
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
      macro%$tk$[:$prec?]? $[(name := $name?)]? $[(priority := $prio?)]? $args:macroArg* : $cat => $rhs) =>
    -- exclude command prefix from synthetic position used for e.g. jumping to the macro definition
    withRef (mkNullNode #[tk, rhs]) do
      let prio  ← liftMacroM <| evalOptPrio prio?
      let (stxParts, patArgs) := (← args.mapM expandMacroArg).unzip
      let kind ← elabSyntax (← `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
        syntax$[:$prec?]?
          $[(name := $name?)]?
          (priority := $(quote prio):num)
          $[$stxParts]* : $cat))
      let pat := ⟨mkNode kind patArgs⟩
      let rhs := rhs.raw
      -- Elide `scoped` for `macro_rules`; this allows for using scoped macros in unscoped macros
      -- for back-compat and unlike with `local`, there would be no benefit to enforcing `scoped`.
      let mut rulesKind := attrKind
      if rulesKind matches `(attrKind| scoped) then
        rulesKind ← `(attrKind| )
      let macroRulesCmd ← if rhs.getArgs.size == 1 then
        -- `rhs` is a `term`
        let rhs := ⟨rhs[0]⟩
        `($[$doc?:docComment]? $rulesKind:attrKind macro_rules | `($pat) => Functor.map (@TSyntax.raw $(quote cat.getId.eraseMacroScopes)) $rhs)
      else
        -- TODO(gabriel): remove after bootstrap
        -- `rhs` is of the form `` `( $body ) ``
        let rhsBody := ⟨rhs[1]⟩
        `($[$doc?:docComment]? $rulesKind:attrKind macro_rules | `($pat) => `($rhsBody))
      elabCommand macroRulesCmd
  | _ => throwUnsupportedSyntax

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant550f3c7e9dee3c6938d62d12d9d2aa143fa5cab5df6692506b4d25a0ffcfad05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant550f3c7e9dee3c6938d62d12d9d2aa143fa5cab5df6692506b4d25a0ffcfad05.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f0ec125bd1bec06e2d52759840508a1fa596b50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
