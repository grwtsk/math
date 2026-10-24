# Topology.IsInducing.isCompact_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96be8ab4-8f53-3726-1e14-bee976fcd787",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.isCompact_iff",
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
  "slug": "topology-isinducing-iscompact-iff--54f314757768dc9fc5ea1a0b",
  "source": {
    "blob": "50faf667b485e24757b73ff5809b3fb7d2f4a5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 881,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54f314757768dc9fc5ea1a0b7476a65b762d13c337b4bd607873595e53db96b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96be8ab4-8f53-3726-1e14-bee976fcd787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsInducing.isCompact_iff {f : X → Y} (hf : IsInducing f) :
    IsCompact s ↔ IsCompact (f '' s) := by
  refine ⟨fun hs => hs.image hf.continuous, fun hs F F_ne_bot F_le => ?_⟩
  obtain ⟨_, ⟨x, x_in : x ∈ s, rfl⟩, hx : ClusterPt (f x) (map f F)⟩ :=
    hs ((map_mono F_le).trans_eq map_principal)
  exact ⟨x, x_in, hf.mapClusterPt_iff.1 hx⟩

@[deprecated (since := "2024-10-28")] alias Inducing.isCompact_iff := IsInducing.isCompact_iff

/-- If `f : X → Y` is an embedding, the image `f '' s` of a set `s` is compact
if and only if `s` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50faf667b485e24757b73ff5809b3fb7d2f4a5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
