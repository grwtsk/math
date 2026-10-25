# MetaProblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34ed46bdf1af6b2378c10a46aeb584a0ba1c2b88359e4533ec4ea54a12ab7df8",
  "kind": "structure",
  "lexical_name": "MetaProblem",
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
  "slug": "metaproblem--dcc8e4798d9893f7666dc936",
  "source": {
    "blob": "3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcc8e4798d9893f7666dc936797e06bc2da2074eeca121d9393482a71ad99c81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34ed46bdf1af6b2378c10a46aeb584a0ba1c2b88359e4533ec4ea54a12ab7df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MetaProblem where
  /-- An integer linear arithmetic problem. -/
  problem : Problem := {}
  /-- Pending facts which have not been processed yet. -/
  facts : List Expr := []
  /--
  Pending disjunctions, which we will case split one at a time if we can't get a contradiction.
  -/
  disjunctions : List Expr := []
  /-- Facts which have already been processed; we keep these to avoid duplicates. -/
  processedFacts : Std.HashSet Expr := ∅

/-- Construct the `rfl` proof that `lc.eval atoms = e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
