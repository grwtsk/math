# withExprHoverM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc67ccc1eb5cc3a2fb02977b36101fd6f964134fdae38323d4561e93ca3defea",
  "kind": "def",
  "lexical_name": "withExprHoverM",
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
  "slug": "withexprhoverm--969382ea1fc367e294e0732c",
  "source": {
    "blob": "5e2281389fe25ed6d76c50e2d78bed7a16b3ab36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:969382ea1fc367e294e0732c0397cc47586b89bec687a57e77373c25df9bdf33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc67ccc1eb5cc3a2fb02977b36101fd6f964134fdae38323d4561e93ca3defea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withExprHoverM {m} [Monad m] [MonadLCtx m]
    (fmt : Format) (expr : Expr) (lctx? : Option LocalContext := none)
    (location? : Option DeclarationLocation := none)
    (docString? : Option String := none)
    (mkDocString? : Option (PPContext → IO String) := none)
    (explicit : Bool := false) : m MessageData := do
  let lctx ← lctx?.getDM getLCtx
  return withExprHover fmt expr lctx location? docString? mkDocString? explicit

/--
Render `userName` as `MessageData`, attaching hover information for the local declaration with
that user-facing name if it is bound in the current `LocalContext`. The lookup uses `userName`
verbatim (so macro scopes are preserved for matching) and the rendered name uses
`userName.simpMacroScopes`. Falls back to plain text when the variable is not in scope.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2281389fe25ed6d76c50e2d78bed7a16b3ab36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
