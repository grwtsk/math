# elabElabRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e74dfd4b3d3397729dd2ded2c81f9536053f91ae3fec8a8441ca82789630c9e3",
  "kind": "def",
  "lexical_name": "elabElabRules",
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
  "slug": "elabelabrules--a21b6e3906bc86e8398f6040",
  "source": {
    "blob": "82b1b8a6b318efebd8196ef7b585ffcbb5e453c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Variantb8b0ec404e717ba6725ac6872a86d5cdd85d44140eeae7421216998275e49cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a21b6e3906bc86e8398f6040c2da8c076fc6fd07d839101d60324a18359de2fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Variantb8b0ec404e717ba6725ac6872a86d5cdd85d44140eeae7421216998275e49cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e74dfd4b3d3397729dd2ded2c81f9536053f91ae3fec8a8441ca82789630c9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab «elab_rules»] def elabElabRules : CommandElab :=
  adaptExpander fun stx => match stx with
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind elab_rules $[: $cat?]? $[<= $expty?]? $alts:matchAlt*) =>
    expandNoKindMacroRulesAux alts "elab_rules" fun kind? alts =>
      `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind elab_rules $[(kind := $(mkIdent <$> kind?))]? $[: $cat?]? $[<= $expty?]? $alts:matchAlt*)
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind elab_rules (kind := $kind) $[: $cat?]? $[<= $expty?]? $alts:matchAlt*) =>
    do elabElabRulesAux doc? attrs? attrKind (← resolveSyntaxKind kind.getId) cat? expty? alts
  | _  => throwUnsupportedSyntax

@[builtin_command_elab Lean.Parser.Command.elab]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Variantb8b0ec404e717ba6725ac6872a86d5cdd85d44140eeae7421216998275e49cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Variantb8b0ec404e717ba6725ac6872a86d5cdd85d44140eeae7421216998275e49cba.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b1b8a6b318efebd8196ef7b585ffcbb5e453c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
