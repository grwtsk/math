# IsConvexDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d343fb46bb9a392296efe453d812780ef8c32263ba0b20d3e025abaa80122cc9",
  "kind": "class",
  "lexical_name": "IsConvexDist",
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
  "slug": "isconvexdist--3a734e611f23c6a1c2daa87a",
  "source": {
    "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a734e611f23c6a1c2daa87a6e1baf411375831132a58992def99b8cc2cac150",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d343fb46bb9a392296efe453d812780ef8c32263ba0b20d3e025abaa80122cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsConvexDist [inst₁ : ConvexSpace ℝ X] [inst₂ : MetricSpace X] : Prop where
  /-- Use `dist_iConvexComb_le` instead. -/
  dist_iConvexComb_fst_snd_le [inst₁] [inst₂] (f : StdSimplex ℝ (X × X)) :
    dist (f.iConvexComb Prod.fst) (f.iConvexComb Prod.snd) ≤ f.iConvexComb fun x ↦ dist x.1 x.2

@[deprecated (since := "2026-05-15")] alias IsConvexMetricSpace := IsConvexDist

variable [ConvexSpace ℝ X] [MetricSpace X] [IsConvexDist X]

/-- `dist(∑ tᵢ xᵢ, ∑ tᵢ yᵢ) ≤ ∑ tᵢ dist(xᵢ, yᵢ)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f646d1821791679b7ea52cad2aff5e09b7af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
