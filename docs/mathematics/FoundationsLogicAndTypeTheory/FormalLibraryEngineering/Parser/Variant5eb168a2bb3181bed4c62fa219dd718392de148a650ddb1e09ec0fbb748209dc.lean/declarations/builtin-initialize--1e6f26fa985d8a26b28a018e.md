# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7effea2b371405f7a0d10cd150a1d0b7c7a94031bfde683edb7a0a8957f2839",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--1e6f26fa985d8a26b28a018e",
  "source": {
    "blob": "931c55b498bade448473a27e80ed0c704435239f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e6f26fa985d8a26b28a018e8822de9f214dd6097a251c2f31ddd7f2fe0cdaa9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7effea2b371405f7a0d10cd150a1d0b7c7a94031bfde683edb7a0a8957f2839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  register_parser_alias "ws" checkWsBefore { stackSz? := some 0 }
  register_parser_alias "noWs" checkNoWsBefore { stackSz? := some 0 }
  register_parser_alias "linebreak" checkLinebreakBefore { stackSz? := some 0 }
  register_parser_alias (kind := numLitKind) "num" numLit
  register_parser_alias (kind := strLitKind) "str" strLit
  register_parser_alias (kind := charLitKind) "char" charLit
  register_parser_alias (kind := nameLitKind) "name" nameLit
  register_parser_alias (kind := scientificLitKind) "scientific" scientificLit
  register_parser_alias (kind := identKind) ident
  register_parser_alias (kind := identKind) rawIdent
  register_parser_alias (kind := hygieneInfoKind) hygieneInfo
  register_parser_alias "colGt" checkColGt { stackSz? := some 0 }
  register_parser_alias "colGe" checkColGe { stackSz? := some 0 }
  register_parser_alias "colEq" checkColEq { stackSz? := some 0 }
  register_parser_alias "lineEq" checkLineEq { stackSz? := some 0 }
  register_parser_alias lookahead { stackSz? := some 0 }
  register_parser_alias atomic { stackSz? := none }
  register_parser_alias many
  register_parser_alias many1
  register_parser_alias manyIndent
  register_parser_alias many1Indent
  register_parser_alias optional { autoGroupArgs := false }
  register_parser_alias withPosition { stackSz? := none }
  register_parser_alias withoutPosition { stackSz? := none }
  register_parser_alias withoutForbidden { stackSz? := none }
  register_parser_alias (kind := interpolatedStrKind) interpolatedStr
  register_parser_alias (kind := hexnumKind) hexnum
  register_parser_alias orelse
  register_parser_alias andthen { stackSz? := none }
  register_parser_alias recover

  registerAlias `notFollowedBy ``notFollowedBy (notFollowedBy · "element")
  Parenthesizer.registerAlias `notFollowedBy notFollowedBy.parenthesizer
  Formatter.registerAlias `notFollowedBy notFollowedBy.formatter

end Parser

namespace PrettyPrinter
namespace Parenthesizer

set_option compiler.ignoreBorrowAnnotation true in
-- Close the mutual recursion loop; see corresponding `[extern]` in the parenthesizer.
@[export lean_mk_antiquot_parenthesizer]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931c55b498bade448473a27e80ed0c704435239f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
