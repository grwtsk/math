# Filter.IsApproximateUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37d516382c5da1210a56d9d3096496b686214aec3d6bc3a3e80739f4c8b351af",
  "kind": "structure",
  "lexical_name": "Filter.IsApproximateUnit",
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
  "slug": "filter-isapproximateunit--932edb8fb4020ea19b477f37",
  "source": {
    "blob": "f60566fcc3f99f22738cda7df2df625234a9fb38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:932edb8fb4020ea19b477f3705f0f9069e2a7357055b601c396bb3e38ecad2f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37d516382c5da1210a56d9d3096496b686214aec3d6bc3a3e80739f4c8b351af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Filter.IsApproximateUnit {α : Type*} [TopologicalSpace α] [Mul α]
    (l : Filter α) : Prop where
  /-- Multiplication on the left by `m` tends to `𝓝 m` along the filter. -/
  tendsto_mul_left m : Tendsto (m * ·) l (𝓝 m)
  /-- Multiplication on the right by `m` tends to `𝓝 m` along the filter. -/
  tendsto_mul_right m : Tendsto (· * m) l (𝓝 m)
  /-- The filter is not `⊥`. -/
  protected [neBot : NeBot l]

namespace Filter.IsApproximateUnit

section TopologicalMonoid

variable {α : Type*} [TopologicalSpace α] [MulOneClass α]

variable (α) in
/-- A unital magma with a topology and bornology has the trivial approximate unit `pure 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant0627770ac72ef6627dd23837b428fb85199d40693416486f218a2ccfd71beab7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f60566fcc3f99f22738cda7df2df625234a9fb38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
