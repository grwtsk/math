# RewriteResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22194e37ea3f73157c42c4885aaf3001badcb6e387ca009d0dcbf9aa97ebefb5",
  "kind": "structure",
  "lexical_name": "RewriteResult",
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
  "slug": "rewriteresult--f15c54331998c3b729cb3ea6",
  "source": {
    "blob": "a3a16b14d71ff1cfe2d002be266de87cb60fe680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f15c54331998c3b729cb3ea6f015dd0b9db33b8d395d749bf0af8d9aa2ba105a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22194e37ea3f73157c42c4885aaf3001badcb6e387ca009d0dcbf9aa97ebefb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RewriteResult where
  /-- The lemma we rewrote by.
  This is `Expr`, not just a `Name`, as it may be a local hypothesis. -/
  expr : Expr
  /-- `True` if we rewrote backwards (i.e. with `rw [← h]`). -/
  symm : Bool
  /-- The "weight" of the rewrite. This is calculated based on how specific the rewrite rule was. -/
  weight : Nat
  /-- The result from the `rw` tactic. -/
  result : Meta.RewriteResult
  /-- Can the new goal in `result` be closed by `with_reducible rfl`? -/
  -- This is an `Option` so that it can be computed lazily.
  rfl? : Option Bool
  /-- The metavariable context after the rewrite.
  This needs to be stored as part of the result so we can backtrack the state. -/
  mctx : MetavarContext

/-- Update a `RewriteResult` by filling in the `rfl?` field if it is currently `none`,
to reflect whether the remaining goal can be closed by `with_reducible rfl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a16b14d71ff1cfe2d002be266de87cb60fe680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
