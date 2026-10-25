# notFollowedByRedefinedTermToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bfc8eaf2c3d1ebb05ddad5d454d5740a1a8d2a346fdbaf479ce6d43b4ebd349",
  "kind": "def",
  "lexical_name": "notFollowedByRedefinedTermToken",
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
  "slug": "notfollowedbyredefinedtermtoken--be744731f7f0f3b5940fbfd5",
  "source": {
    "blob": "eb16792599f501a6362079784c0d173d1998de0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be744731f7f0f3b5940fbfd531dc20bfc4c6f5645f5298426fbc840ce2e05442",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bfc8eaf2c3d1ebb05ddad5d454d5740a1a8d2a346fdbaf479ce6d43b4ebd349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def notFollowedByRedefinedTermToken :=
  -- Remark: we don't currently support `open` and `set_option` in `do`-blocks,
  -- but we include them in the following list to fix the ambiguity where
  -- an "open" command follows the `do`-block.
  -- If we don't add `do`, then users would have to indent `do` blocks or use `{ ... }`.
  notFollowedBy ("set_option" <|> "open" <|> "if" <|> "match" <|> "match_expr" <|> "let" <|> "let_expr" <|> "have" <|>
      "do" <|> "dbg_trace" <|> "idbg" <|> "assert!" <|> "debug_assert!" <|> "for" <|> "unless" <|> "return" <|> symbol "try")
    "token at 'do' element"

namespace InternalSyntax
/--
Internal syntax used in the `if` and `unless` elaborators. Behaves like `pure PUnit.unit` but
uses `()` if possible and gives better error messages.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb16792599f501a6362079784c0d173d1998de0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
