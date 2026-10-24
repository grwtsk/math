# TotallyBounded.isVonNBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24b3286f-3d58-b2f6-4c0e-18b1cfc3be1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b361a042-b24a-7b19-d19a-dddaf9c22b4f",
  "kind": "theorem",
  "lexical_name": "TotallyBounded.isVonNBounded",
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
  "slug": "totallybounded-isvonnbounded--1d14e7531d89216d1e4868bb",
  "source": {
    "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d14e7531d89216d1e4868bb67b6805a1f356bd8631cd7b07f2bc5f01efaac72",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b361a042-b24a-7b19-d19a-dddaf9c22b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TotallyBounded.isVonNBounded {s : Set E} (hs : TotallyBounded s) :
    Bornology.IsVonNBounded 𝕜 s := by
  rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero] at hs
  intro U hU
  have h : Filter.Tendsto (fun x : E × E => x.fst + x.snd) (𝓝 (0, 0)) (𝓝 ((0 : E) + (0 : E))) :=
    tendsto_add
  rw [add_zero] at h
  have h' := (nhds_basis_balanced 𝕜 E).prod (nhds_basis_balanced 𝕜 E)
  simp_rw [← nhds_prod_eq, id.def] at h'
  rcases h.basis_left h' U hU with ⟨x, hx, h''⟩
  rcases hs x.snd hx.2.1 with ⟨t, ht, hs⟩
  refine' Absorbs.mono_right _ hs
  rw [ht.absorbs_iUnion]
  have hx_fstsnd : x.fst + x.snd ⊆ U := by
    intro z hz
    rcases Set.mem_add.mp hz with ⟨z1, z2, hz1, hz2, hz⟩
    have hz' : (z1, z2) ∈ x.fst ×ˢ x.snd := ⟨hz1, hz2⟩
    simpa only [hz] using h'' hz'
  refine' fun y _ => Absorbs.mono_left _ hx_fstsnd
  rw [← Set.singleton_vadd, vadd_eq_add]
  exact (absorbent_nhds_zero hx.1.1).absorbs.add hx.2.2.absorbs_self
#align totally_bounded.is_vonN_bounded TotallyBounded.isVonNBounded

end UniformAddGroup

section VonNBornologyEqMetric

variable (𝕜 E) [NontriviallyNormedField 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]

namespace NormedSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f696a3832faba98223f5bb834de93634f0e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
