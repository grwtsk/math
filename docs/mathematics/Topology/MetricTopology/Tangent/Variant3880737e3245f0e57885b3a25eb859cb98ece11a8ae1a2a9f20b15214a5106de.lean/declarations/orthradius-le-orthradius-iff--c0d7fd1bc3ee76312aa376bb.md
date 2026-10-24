# orthRadius_le_orthRadius_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d7dce0-d916-bf9f-f6a0-190f3fdddd05",
  "kind": "lemma",
  "lexical_name": "orthRadius_le_orthRadius_iff",
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
  "slug": "orthradius-le-orthradius-iff--c0d7fd1bc3ee76312aa376bb",
  "source": {
    "blob": "9a7f5481966cd1a194bb0ba3c7840825129541bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d7fd1bc3ee76312aa376bbde5efc89822b42e4d1db10319d32f9c071a8e7d0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d7dce0-d916-bf9f-f6a0-190f3fdddd05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orthRadius_le_orthRadius_iff {s : Sphere P} {p q : P} :
    s.orthRadius p ≤ s.orthRadius q ↔ p = q ∨ q = s.center := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · have h' := direction_le h
    simp only [direction_orthRadius] at h'
    have h'' := Submodule.orthogonal_le h'
    simp only [Submodule.orthogonal_orthogonal, Submodule.span_singleton_le_iff_mem,
      Submodule.mem_span_singleton] at h''
    rcases h'' with ⟨r, hr⟩
    have hp : p ∈ s.orthRadius q := h (s.self_mem_orthRadius p)
    rw [mem_orthRadius_iff_inner_left, ← vsub_sub_vsub_cancel_right p q s.center, ← hr,
      inner_sub_left, real_inner_smul_left, real_inner_smul_right, ← mul_assoc, ← sub_mul,
      mul_eq_zero] at hp
    rcases hp with hp | hp
    · nth_rw 1 [← one_mul r] at hp
      rw [← sub_mul, mul_eq_zero] at hp
      rcases hp with hp | rfl
      · rw [sub_eq_zero] at hp
        rw [← hp, one_smul, vsub_left_cancel_iff] at hr
        exact .inl hr
      · rw [zero_smul, eq_comm, vsub_eq_zero_iff_eq] at hr
        exact .inr hr
    · simp only [inner_self_eq_zero, vsub_eq_zero_iff_eq] at hp
      rw [hp, vsub_self, smul_zero, eq_comm, vsub_eq_zero_iff_eq] at hr
      exact .inr hr
  · rcases h with rfl | rfl <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant3880737e3245f0e57885b3a25eb859cb98ece11a8ae1a2a9f20b15214a5106de.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7f5481966cd1a194bb0ba3c7840825129541bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
