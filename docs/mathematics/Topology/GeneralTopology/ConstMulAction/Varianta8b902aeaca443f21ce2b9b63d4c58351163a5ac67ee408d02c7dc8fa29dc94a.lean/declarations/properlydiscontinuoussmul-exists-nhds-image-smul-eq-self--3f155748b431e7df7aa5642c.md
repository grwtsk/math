# ProperlyDiscontinuousSMul.exists_nhds_image_smul_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6bfe194-5a58-4bff-7446-65a95798f451",
  "kind": "lemma",
  "lexical_name": "ProperlyDiscontinuousSMul.exists_nhds_image_smul_eq_self",
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
  "slug": "properlydiscontinuoussmul-exists-nhds-image-smul-eq-self--3f155748b431e7df7aa5642c",
  "source": {
    "blob": "8b197e82fcb1919341311054eda0d1dcdbf9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 570,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f155748b431e7df7aa5642c3963bbcc3d57925e196b1080f06f94a9a13580ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6bfe194-5a58-4bff-7446-65a95798f451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma ProperlyDiscontinuousSMul.exists_nhds_image_smul_eq_self :
    ∃ U ∈ 𝓝 x, ∀ γ : Γ, ((γ • ·) '' U ∩ U).Nonempty → γ • x = x := by
  obtain ⟨V, V_cpt, V_nhd⟩ := exists_compact_mem_nhds x
  let Γ₀ := {γ : Γ | ((γ • ·) '' V ∩ V).Nonempty ∧ γ • x ≠ x}
  have : Finite Γ₀ := (finite_disjoint_inter_image V_cpt V_cpt).subset fun _ ↦ And.left
  choose u v hu hv u_v_disjoint using fun γ : Γ₀ ↦ t2_separation_nhds γ.2.2
  refine ⟨V ∩ ⋂ γ : Γ₀, (γ.1 • ·) ⁻¹' u γ ∩ v γ, inter_mem V_nhd (iInter_mem.mpr fun γ ↦
    inter_mem ((continuous_const_smul _).continuousAt <| hu γ) (hv γ)), fun γ hγ ↦ ?_⟩
  obtain ⟨_, ⟨z, hz, rfl⟩, hγz⟩ := hγ
  by_contra h
  rw [mem_inter_iff, mem_iInter] at hz hγz
  let γ : Γ₀ := ⟨γ, ⟨_, ⟨z, hz.1, rfl⟩, hγz.1⟩, h⟩
  exact (u_v_disjoint γ).le_bot ⟨(hz.2 γ).1, (hγz.2 γ).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Varianta8b902aeaca443f21ce2b9b63d4c58351163a5ac67ee408d02c7dc8fa29dc94a.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b197e82fcb1919341311054eda0d1dcdbf9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
