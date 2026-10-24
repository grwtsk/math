# IsPreconnected.biUnion_of_reflTransGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c3bca8a-9b54-20c1-f420-0c1e0122d99a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8215391a-7538-32b1-e750-ad44a3af8bff",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.biUnion_of_reflTransGen",
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
  "slug": "ispreconnected-biunion-of-refltransgen--93f73c0ce85e6ba43b7b88e1",
  "source": {
    "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f73c0ce85e6ba43b7b88e1cb6148802e1dd4c8818ce5af1b9e1318803d13ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8215391a-7538-32b1-e750-ad44a3af8bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.biUnion_of_reflTransGen {ι : Type*} {t : Set ι} {s : ι → Set α}
    (H : ∀ i ∈ t, IsPreconnected (s i))
    (K : ∀ i, i ∈ t → ∀ j, j ∈ t → ReflTransGen (fun i j => (s i ∩ s j).Nonempty ∧ i ∈ t) i j) :
    IsPreconnected (⋃ n ∈ t, s n) := by
  let R := fun i j : ι => (s i ∩ s j).Nonempty ∧ i ∈ t
  have P : ∀ i, i ∈ t → ∀ j, j ∈ t → ReflTransGen R i j →
      ∃ p, p ⊆ t ∧ i ∈ p ∧ j ∈ p ∧ IsPreconnected (⋃ j ∈ p, s j) := fun i hi j hj h => by
    induction h
    case refl =>
      refine ⟨{i}, singleton_subset_iff.mpr hi, mem_singleton i, mem_singleton i, ?_⟩
      rw [biUnion_singleton]
      exact H i hi
    case tail j k _ hjk ih =>
      obtain ⟨p, hpt, hip, hjp, hp⟩ := ih hjk.2
      refine ⟨insert k p, insert_subset_iff.mpr ⟨hj, hpt⟩, mem_insert_of_mem k hip,
        mem_insert k p, ?_⟩
      rw [biUnion_insert]
      refine (H k hj).union' (hjk.1.mono ?_) hp
      rw [inter_comm]
      exact inter_subset_inter_right _ (subset_biUnion_of_mem hjp)
  refine' isPreconnected_of_forall_pair _
  intro x hx y hy
  obtain ⟨i : ι, hi : i ∈ t, hxi : x ∈ s i⟩ := mem_iUnion₂.1 hx
  obtain ⟨j : ι, hj : j ∈ t, hyj : y ∈ s j⟩ := mem_iUnion₂.1 hy
  obtain ⟨p, hpt, hip, hjp, hp⟩ := P i hi j hj (K i hi j hj)
  exact ⟨⋃ j ∈ p, s j, biUnion_subset_biUnion_left hpt, mem_biUnion hip hxi,
    mem_biUnion hjp hyj, hp⟩
#align is_preconnected.bUnion_of_refl_trans_gen IsPreconnected.biUnion_of_reflTransGen

/-- The biUnion of a family of preconnected sets is preconnected if the graph determined by
whether two sets intersect is preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb42d9e9235f9b07a8c938b2ed90b94b6875cd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
