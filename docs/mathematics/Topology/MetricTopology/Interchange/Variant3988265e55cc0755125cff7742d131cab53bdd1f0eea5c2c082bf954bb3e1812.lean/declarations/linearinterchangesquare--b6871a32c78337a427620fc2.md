# LinearInterchangeSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a777a5ab9cc5ee2a66fdbab022aba5160d9563d7394775ca0cc2ece5254bfdfb",
  "kind": "structure",
  "lexical_name": "LinearInterchangeSquare",
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
  "slug": "linearinterchangesquare--b6871a32c78337a427620fc2",
  "source": {
    "blob": "39054fc0dca9ee68f8850c85fc219ac77319c136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 185,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6871a32c78337a427620fc217b59fdf39fd9a98d834b7a722567e4d599a3aed",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a777a5ab9cc5ee2a66fdbab022aba5160d9563d7394775ca0cc2ece5254bfdfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearInterchangeSquare
    (R : Type uR)
    (PrevSources : Type uX)
    (PrevAggregate : Type uPrev)
    (NowSources : Type uNow)
    (Compare : Type uY)
    [Ring R]
    [AddCommGroup PrevSources] [Module R PrevSources]
    [AddCommGroup PrevAggregate] [Module R PrevAggregate]
    [AddCommGroup NowSources] [Module R NowSources]
    [AddCommGroup Compare] [Module R Compare] where
  retrievePrev : PrevSources →ₗ[R] PrevAggregate
  transportAggregate : PrevAggregate →ₗ[R] Compare
  transportSources : PrevSources →ₗ[R] NowSources
  retrieveNow : NowSources →ₗ[R] Compare

namespace LinearInterchangeSquare

variable {R : Type uR}
variable {PrevSources : Type uX}
variable {PrevAggregate : Type uPrev}
variable {NowSources : Type uNow}
variable {Compare : Type uY}
variable [Ring R]
variable [AddCommGroup PrevSources] [Module R PrevSources]
variable [AddCommGroup PrevAggregate] [Module R PrevAggregate]
variable [AddCommGroup NowSources] [Module R NowSources]
variable [AddCommGroup Compare] [Module R Compare]

/-- Forget linear structure while retaining all carrier boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39054fc0dca9ee68f8850c85fc219ac77319c136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
