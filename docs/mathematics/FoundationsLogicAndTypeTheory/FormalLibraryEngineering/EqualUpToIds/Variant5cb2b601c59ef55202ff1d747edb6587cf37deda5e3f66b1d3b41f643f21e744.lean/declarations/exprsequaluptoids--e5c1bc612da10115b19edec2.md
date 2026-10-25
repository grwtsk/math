# exprsEqualUpToIds'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bff232b675ebe48a62b52aebc2fe02cc094df0eab5c1f2a3529797b5040804c",
  "kind": "def",
  "lexical_name": "exprsEqualUpToIds'",
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
  "slug": "exprsequaluptoids--e5c1bc612da10115b19edec2",
  "source": {
    "blob": "0a2c96db4a17e1ae56ef52af2e8f1d51cb8ab9ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c1bc612da10115b19edec24dd17f9ade001b227308d333b7be8473cc301db4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bff232b675ebe48a62b52aebc2fe02cc094df0eab5c1f2a3529797b5040804c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exprsEqualUpToIds' (e₁ e₂ : Expr) (allowAssignmentDiff := false) :
    MetaM Bool := do
  let mctx ← getMCtx
  let lctx ← getLCtx
  let localInstances ← getLocalInstances
  exprsEqualUpToIds mctx mctx lctx lctx localInstances localInstances e₁ e₂
    allowAssignmentDiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant5cb2b601c59ef55202ff1d747edb6587cf37deda5e3f66b1d3b41f643f21e744.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2c96db4a17e1ae56ef52af2e8f1d51cb8ab9ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
