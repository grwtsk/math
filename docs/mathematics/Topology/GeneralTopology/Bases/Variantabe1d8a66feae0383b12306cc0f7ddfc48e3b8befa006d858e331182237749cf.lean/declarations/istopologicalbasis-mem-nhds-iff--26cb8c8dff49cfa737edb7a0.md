# IsTopologicalBasis.mem_nhds_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6b9112-2aea-a563-fff5-dd4ea8c1ba5e",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.mem_nhds_iff",
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
  "slug": "istopologicalbasis-mem-nhds-iff--26cb8c8dff49cfa737edb7a0",
  "source": {
    "blob": "98d06395051f49536a70c1b3294eecd50089e4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26cb8c8dff49cfa737edb7a0cfcf6f24612bd9c4387a5d6f52c1e0825350ee00",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6b9112-2aea-a563-fff5-dd4ea8c1ba5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalBasis.mem_nhds_iff {a : α} {s : Set α} {b : Set (Set α)}
    (hb : IsTopologicalBasis b) : s ∈ 𝓝 a ↔ ∃ t ∈ b, a ∈ t ∧ t ⊆ s := by
  change s ∈ (𝓝 a).sets ↔ ∃ t ∈ b, a ∈ t ∧ t ⊆ s
  rw [hb.eq_generateFrom, nhds_generateFrom, biInf_sets_eq]
  · simp [and_assoc, and_left_comm]
  · rintro s ⟨hs₁, hs₂⟩ t ⟨ht₁, ht₂⟩
    let ⟨u, hu₁, hu₂, hu₃⟩ := hb.1 _ hs₂ _ ht₂ _ ⟨hs₁, ht₁⟩
    exact ⟨u, ⟨hu₂, hu₁⟩, le_principal_iff.2 (hu₃.trans (inter_subset_left _ _)),
      le_principal_iff.2 (hu₃.trans (inter_subset_right _ _))⟩
  · rcases eq_univ_iff_forall.1 hb.sUnion_eq a with ⟨i, h1, h2⟩
    exact ⟨i, h2, h1⟩
#align topological_space.is_topological_basis.mem_nhds_iff TopologicalSpace.IsTopologicalBasis.mem_nhds_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d06395051f49536a70c1b3294eecd50089e4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
