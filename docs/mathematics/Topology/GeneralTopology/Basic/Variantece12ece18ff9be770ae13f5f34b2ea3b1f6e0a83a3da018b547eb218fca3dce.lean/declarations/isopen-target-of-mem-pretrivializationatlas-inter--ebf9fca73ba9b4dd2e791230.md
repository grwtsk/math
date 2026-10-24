# isOpen_target_of_mem_pretrivializationAtlas_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0edee4c3-7f52-6bed-908a-7b8f5a104cd0",
  "kind": "theorem",
  "lexical_name": "isOpen_target_of_mem_pretrivializationAtlas_inter",
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
  "slug": "isopen-target-of-mem-pretrivializationatlas-inter--ebf9fca73ba9b4dd2e791230",
  "source": {
    "blob": "b4bb4345d1ef7d147cf058ae6f1690a5620d3c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 811,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebf9fca73ba9b4dd2e7912303bd17dca7f13ae4db0d0daf215e0f714ad7eb2e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0edee4c3-7f52-6bed-908a-7b8f5a104cd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_target_of_mem_pretrivializationAtlas_inter (e e' : Pretrivialization F (π F E))
    (he' : e' ∈ a.pretrivializationAtlas) :
    IsOpen (e'.toLocalEquiv.target ∩ e'.toLocalEquiv.symm ⁻¹' e.source) := by
  letI := a.totalSpaceTopology
  obtain ⟨u, hu1, hu2⟩ := continuousOn_iff'.mp (a.continuous_symm_of_mem_pretrivializationAtlas he')
    e.source (a.isOpen_source e)
  rw [inter_comm, hu2]
  exact hu1.inter e'.open_target
#align fiber_prebundle.is_open_target_of_mem_pretrivialization_atlas_inter FiberPrebundle.isOpen_target_of_mem_pretrivializationAtlas_inter

/-- Promotion from a `Pretrivialization` to a `Trivialization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bb4345d1ef7d147cf058ae6f1690a5620d3c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
