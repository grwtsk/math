# Topology.IsInducing.isLindelof_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c510385-5d69-bcb5-d40d-f5cea8686ca7",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.isLindelof_iff",
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
  "slug": "topology-isinducing-islindelof-iff--3915dd80712b3e09c2de27a1",
  "source": {
    "blob": "a53449fe2a297dc7b1f2ce908b9e2693c30c1876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 612,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3915dd80712b3e09c2de27a14f1ee72293389ce8a9b1733a8ec737ca88bfdc12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c510385-5d69-bcb5-d40d-f5cea8686ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsInducing.isLindelof_iff {f : X → Y} (hf : IsInducing f) :
    IsLindelof s ↔ IsLindelof (f '' s) := by
  refine ⟨fun hs => hs.image hf.continuous, fun hs F F_ne_bot _ F_le => ?_⟩
  obtain ⟨_, ⟨x, x_in : x ∈ s, rfl⟩, hx : ClusterPt (f x) (map f F)⟩ :=
    hs ((map_mono F_le).trans_eq map_principal)
  exact ⟨x, x_in, hf.mapClusterPt_iff.1 hx⟩

/-- If `f : X → Y` is an embedding, the image `f '' s` of a set `s` is Lindelöf
if and only if `s` is Lindelöf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a53449fe2a297dc7b1f2ce908b9e2693c30c1876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
