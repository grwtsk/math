# IsConvexDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:931d07637a2d4f8ceb7f866cee0b33928f65bb105df27272d81cacdf17352c91",
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
  "slug": "isconvexdist--e83cdf41416485c5887f95ed",
  "source": {
    "blob": "765fba550482faddd0c55ca7289277e253e7798c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e83cdf41416485c5887f95ed9589b84c447a68e7a33b0eb6769b58c550e4b2dd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:931d07637a2d4f8ceb7f866cee0b33928f65bb105df27272d81cacdf17352c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765fba550482faddd0c55ca7289277e253e7798c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
