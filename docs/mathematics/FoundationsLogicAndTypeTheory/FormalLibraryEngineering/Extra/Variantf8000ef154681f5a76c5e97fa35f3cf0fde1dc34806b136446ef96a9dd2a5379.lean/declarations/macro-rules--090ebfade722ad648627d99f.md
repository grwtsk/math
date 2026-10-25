# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:039ff9aa9f86824c44b1b20e9b09d256fd3379b00968ff554dbbedb0ccb229e2",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--090ebfade722ad648627d99f",
  "source": {
    "blob": "72bf2743519f83381e89c6da00ab9f287d0f24fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:090ebfade722ad648627d99f854ed718749237e768c29b01c524587bfa154c6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:039ff9aa9f86824c44b1b20e9b09d256fd3379b00968ff554dbbedb0ccb229e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(register_parser_alias $[(kind := $kind?)]? $(aliasName?)? $declName $(info?)?) => do
    let [(fullDeclName, [])] ← Macro.resolveGlobalName declName.getId |
      Macro.throwError "expected non-overloaded constant name"
    let aliasName := match aliasName? with
      | some n => quote (Name.mkSimple n.getString)
      | none => quote declName.getId
    `(do Parser.registerAlias $aliasName ``$declName $declName $(info?.getD (Unhygienic.run `({}))) (kind? := some $(kind?.getD (quote fullDeclName)))
         PrettyPrinter.Formatter.registerAlias $aliasName $(mkIdentFrom declName (declName.getId ++ `formatter))
         PrettyPrinter.Parenthesizer.registerAlias $aliasName $(mkIdentFrom declName (declName.getId ++ `parenthesizer)))

open Parser

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantf8000ef154681f5a76c5e97fa35f3cf0fde1dc34806b136446ef96a9dd2a5379.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72bf2743519f83381e89c6da00ab9f287d0f24fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
