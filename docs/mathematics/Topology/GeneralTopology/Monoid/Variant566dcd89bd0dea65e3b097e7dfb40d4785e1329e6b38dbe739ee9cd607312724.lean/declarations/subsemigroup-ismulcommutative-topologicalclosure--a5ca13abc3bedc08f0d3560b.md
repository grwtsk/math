# Subsemigroup.isMulCommutative_topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:116e5bd738e4b35c121a7184cc52ee61f38b6ca0e8aea36bde5fece823086360",
  "kind": "instance",
  "lexical_name": "Subsemigroup.isMulCommutative_topologicalClosure",
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
  "slug": "subsemigroup-ismulcommutative-topologicalclosure--a5ca13abc3bedc08f0d3560b",
  "source": {
    "blob": "aec0e747f56d1284079b639fd4ab1441ee848698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 652,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5ca13abc3bedc08f0d3560b3a86a7328163c31be2d1b100965800a346bf6556",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:116e5bd738e4b35c121a7184cc52ee61f38b6ca0e8aea36bde5fece823086360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subsemigroup.isMulCommutative_topologicalClosure [T2Space M] (s : Subsemigroup M)
    [IsMulCommutative s] : IsMulCommutative s.topologicalClosure := by
  refine .of_setLike_mul_comm fun _ h₁ _ h₂ ↦ ?_
  refine eqOn_closure₂' (fun _ ha _ hb ↦ setLike_mul_comm ha hb) ?_ ?_ ?_ ?_ _ h₁ _ h₂
  all_goals fun_prop

open scoped IsMulCommutative in
/-- If a subsemigroup of a topological semigroup is commutative, then so is its topological
closure.

See note [reducible non-instances] -/
@[to_additive (attr := deprecated Subsemigroup.isMulCommutative_topologicalClosure
(since := "2026-07-29"))
/-- If a subsemigroup of an additive topological semigroup is commutative, then so is its
topological closure.

See note [reducible non-instances] -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec0e747f56d1284079b639fd4ab1441ee848698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
