# preprocessExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea270d73796c0c3179e1ae7702333b6949b04d9ea1759c7bac9c416cb8890f4d",
  "kind": "def",
  "lexical_name": "preprocessExpr",
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
  "slug": "preprocessexpr--0b0958eaa39aeb6723eef7fa",
  "source": {
    "blob": "a388528f3d41875fe3fe1b10df3a292a82ae8546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0958eaa39aeb6723eef7fa3a6e84575439d676519a1583dddd7bb5577ba605",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea270d73796c0c3179e1ae7702333b6949b04d9ea1759c7bac9c416cb8890f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def preprocessExpr (e : Expr) : SymM Expr := do
  -- This function relies on `shareCommon` to unfold reducible constants, so the
  -- corresponding check must not have been disabled (e.g., via `withoutShareCommonChecks`).
  assert! (← getConfig).enforceUnfoldReducible
  shareCommon (← instantiateMVars e)

/--
Helper function that removes gaps, instantiate metavariables, and applies `shareCommon`.
Gaps are `none` cells at `lctx.decls`. In `SymM`, we assume these cells don't exist.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant560df362143968c46ce2cbb9d88a20ccf23ead456352ba8db8233e896d9b4d15.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a388528f3d41875fe3fe1b10df3a292a82ae8546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
