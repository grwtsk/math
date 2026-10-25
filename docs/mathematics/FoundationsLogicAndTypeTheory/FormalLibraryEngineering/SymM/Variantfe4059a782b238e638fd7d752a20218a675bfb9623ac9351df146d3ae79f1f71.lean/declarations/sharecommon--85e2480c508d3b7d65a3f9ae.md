# shareCommon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db954e5cb6f56b2c5eb975769dbf0946b22f76ad715b9b071b1bf09044ee675f",
  "kind": "def",
  "lexical_name": "shareCommon",
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
  "slug": "sharecommon--85e2480c508d3b7d65a3f9ae",
  "source": {
    "blob": "fbc26446cc9617edfc7915675ce36a1d6c468b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e2480c508d3b7d65a3f9aec4e6f56f01213d52c3d5da005c115881ea5150af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db954e5cb6f56b2c5eb975769dbf0946b22f76ad715b9b071b1bf09044ee675f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def shareCommon (e : Expr) : SymM Expr := do
  match (← runShareCommonM (shareCommonAlpha e) (← checkedShareCtx)) with
  | .ok e => return e
  | .error cache => repairAndShare e cache

/--
Incremental variant of `shareCommon` for expressions constructed from already-shared subterms.

Use this when an expression `e` was produced by a Lean API (e.g., `inferType`, `mkApp4`) that
does not preserve maximal sharing, but the inputs to that API were already maximally shared.

Unlike `shareCommon`, this function does not use a local `Std.HashMap ExprPtr Expr` to
track visited nodes. This is more efficient when the number of new (unshared) nodes is small,
which is the common case when wrapping API calls that build a few constructor nodes around
shared inputs.

Example:
```
-- `a` and `b` are already maximally shared
let result := mkApp2 f a b  -- result is not maximally shared
let result ← shareCommonInc result -- efficiently restore sharing
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc26446cc9617edfc7915675ce36a1d6c468b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
