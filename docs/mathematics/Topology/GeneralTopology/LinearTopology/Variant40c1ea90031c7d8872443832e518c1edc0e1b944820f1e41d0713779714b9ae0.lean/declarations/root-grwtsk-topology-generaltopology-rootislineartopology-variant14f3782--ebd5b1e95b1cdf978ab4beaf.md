# _root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_twoSidedIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2623c241-e10b-a38b-08fb-35e858113d0a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_twoSidedIdeal",
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
  "slug": "root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--ebd5b1e95b1cdf978ab4beaf",
  "source": {
    "blob": "3798230fe242e60caa151b551e94ef358e22af29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd5b1e95b1cdf978ab4beafd89bcb043ee143d47a66d4e9a74a94baf3c8204e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2623c241-e10b-a38b-08fb-35e858113d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_twoSidedIdeal [ContinuousAdd R] :
    IsLinearTopology R R ∧ IsLinearTopology Rᵐᵒᵖ R ↔ (𝓝 0).HasBasis
      (fun I : TwoSidedIdeal R ↦ IsOpen (I : Set R)) (fun I : TwoSidedIdeal R ↦ (I : Set R)) :=
  ⟨fun ⟨_, _⟩ ↦ hasBasis_open_twoSidedIdeal, fun h ↦
    ⟨.mk_of_hasBasis' R h fun I r x hx ↦ I.mul_mem_left r x hx,
      .mk_of_hasBasis' Rᵐᵒᵖ h fun I r x hx ↦ I.mul_mem_right x r.unop hx⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3798230fe242e60caa151b551e94ef358e22af29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
