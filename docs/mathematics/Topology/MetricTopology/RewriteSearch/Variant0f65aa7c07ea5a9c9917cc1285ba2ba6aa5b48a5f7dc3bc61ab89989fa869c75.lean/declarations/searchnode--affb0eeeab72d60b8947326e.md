# SearchNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df1e1d85f1ab66c17577572dff04a59637194f5497a614ee830c038226765ce",
  "kind": "structure",
  "lexical_name": "SearchNode",
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
  "slug": "searchnode--affb0eeeab72d60b8947326e",
  "source": {
    "blob": "b82f207e7111d1043404195a3fea09cd64293172",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 101,
    "path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:affb0eeeab72d60b8947326e9082915186446a3ab5da88b6f8eefcdb4d79c273",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df1e1d85f1ab66c17577572dff04a59637194f5497a614ee830c038226765ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SearchNode where mk' ::
  /-- The lemmas used so far. -/
  -- The first component is the index amongst successful rewrites at the previous node.
  history : Array (Nat × Expr × Bool)
  /-- The metavariable context after rewriting.
  We carry this around so the search can safely backtrack. -/
  mctx : MetavarContext
  /-- The current goal. -/
  goal : MVarId
  /-- The type of the current goal. -/
  type : Expr
  /-- The pretty printed current goal. -/
  ppGoal : String
  /-- The tokenization of the left-hand-side of the current goal. -/
  lhs : List String
  /-- The tokenization of the right-hand-side of the current goal. -/
  rhs : List String
  /-- Whether the current goal can be closed by `rfl` (or `none` if this hasn't been test yet). -/
  rfl? : Option Bool := none
  /-- The edit distance between the tokenizations of the two sides
  (or `none` if this hasn't been computed yet). -/
  dist? : Option Nat := none
namespace SearchNode

/--
What is the cost for changing a token?
`Levenshtein.defaultCost` just uses constant cost `1` for any token.

It may be interesting to try others.
the only one I've experimented with so far is `Levenshtein.stringLogLengthCost`,
which performs quite poorly!
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82f207e7111d1043404195a3fea09cd64293172` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
