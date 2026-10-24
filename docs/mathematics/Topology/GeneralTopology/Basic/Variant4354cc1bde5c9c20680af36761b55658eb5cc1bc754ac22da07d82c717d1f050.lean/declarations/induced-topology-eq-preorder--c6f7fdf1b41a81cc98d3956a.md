# induced_topology_eq_preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "152453ea8caa12862879e967ece65a996e5623c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1006,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06f2ec5f-942f-3e68-38c7-16d3cfd5cb1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:952736a0-05e9-5bf2-c97e-3a245e8bb588",
  "kind": "theorem",
  "lexical_name": "induced_topology_eq_preorder",
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
  "slug": "induced-topology-eq-preorder--c6f7fdf1b41a81cc98d3956a",
  "source": {
    "blob": "152453ea8caa12862879e967ece65a996e5623c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1026,
    "line": 1006,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f7fdf1b41a81cc98d3956a0d253fa61548f4fa7336bfb8208deb219c12bd27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952736a0-05e9-5bf2-c97e-3a245e8bb588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1026.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induced_topology_eq_preorder [Preorder α] [Preorder β] [TopologicalSpace β]
    [OrderTopology β] {f : α → β} (hf : ∀ {x y}, f x < f y ↔ x < y)
    (H₁ : ∀ {a b x}, b < f a → ¬(b < f x) → ∃ y, y < a ∧ b ≤ f y)
    (H₂ : ∀ {a b x}, f a < b → ¬(f x < b) → ∃ y, a < y ∧ f y ≤ b) :
    induced f ‹TopologicalSpace β› = Preorder.topology α := by
  let _ := Preorder.topology α; have : OrderTopology α := ⟨rfl⟩
  refine le_antisymm (induced_topology_le_preorder hf) ?_
  refine le_of_nhds_le_nhds fun a => ?_
  simp only [nhds_eq_order, nhds_induced, comap_inf, comap_iInf, comap_principal]
  refine inf_le_inf (le_iInf₂ fun b hb => ?_) (le_iInf₂ fun b hb => ?_)
  · rcases em (∃ x, ¬(b < f x)) with (⟨x, hx⟩ | hb)
    · rcases H₁ hb hx with ⟨y, hya, hyb⟩
      exact iInf₂_le_of_le y hya (principal_mono.2 fun z hz => hyb.trans_lt (hf.2 hz))
    · push_neg at hb
      exact le_principal_iff.2 (univ_mem' hb)
  · rcases em (∃ x, ¬(f x < b)) with (⟨x, hx⟩ | hb)
    · rcases H₂ hb hx with ⟨y, hya, hyb⟩
      exact iInf₂_le_of_le y hya (principal_mono.2 fun z hz => (hf.2 hz).trans_le hyb)
    · push_neg at hb
      exact le_principal_iff.2 (univ_mem' hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152453ea8caa12862879e967ece65a996e5623c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
