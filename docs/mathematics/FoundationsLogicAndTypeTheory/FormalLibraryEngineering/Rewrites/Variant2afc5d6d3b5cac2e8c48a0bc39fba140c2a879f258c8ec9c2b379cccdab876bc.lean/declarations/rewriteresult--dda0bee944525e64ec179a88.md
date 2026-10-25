# RewriteResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b5d89972739ee7c576d0b66cb11876a7384dccbaac4309d8bf6584f8c2e0cbc",
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
  "slug": "rewriteresult--dda0bee944525e64ec179a88",
  "source": {
    "blob": "e0d86f61ca1a7111d24b5d146d08047fbfc15bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dda0bee944525e64ec179a88c2ad8f2404ef57ff8f7f569a20be0ba883278328",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b5d89972739ee7c576d0b66cb11876a7384dccbaac4309d8bf6584f8c2e0cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

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
  /-- The metavariable context after the rewrite.
  This needs to be stored as part of the result so we can backtrack the state. -/
  mctx : MetavarContext
  rfl? : Bool

/-- Check to see if this expression (which must be a type) can be closed by `with_reducible rfl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d86f61ca1a7111d24b5d146d08047fbfc15bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
