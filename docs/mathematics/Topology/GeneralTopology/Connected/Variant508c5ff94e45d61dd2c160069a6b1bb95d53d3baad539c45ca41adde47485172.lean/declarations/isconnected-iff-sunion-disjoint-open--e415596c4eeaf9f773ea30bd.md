# isConnected_iff_sUnion_disjoint_open

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
      "line": 1046,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d1d0192-b204-6fb5-1558-f548961a8444",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5df965ca-7be8-2658-634a-0a7685f9b308",
  "kind": "theorem",
  "lexical_name": "isConnected_iff_sUnion_disjoint_open",
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
  "slug": "isconnected-iff-sunion-disjoint-open--e415596c4eeaf9f773ea30bd",
  "source": {
    "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1069,
    "line": 1046,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e415596c4eeaf9f773ea30bdd9e6b4094962cad76a9909d3b306bbbb7e09bcbc",
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

Occurrence: `result:5df965ca-7be8-2658-634a-0a7685f9b308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1046–1069.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConnected_iff_sUnion_disjoint_open {s : Set α} :
    IsConnected s ↔
      ∀ U : Finset (Set α), (∀ u v : Set α, u ∈ U → v ∈ U → (s ∩ (u ∩ v)).Nonempty → u = v) →
        (∀ u ∈ U, IsOpen u) → (s ⊆ ⋃₀ ↑U) → ∃ u ∈ U, s ⊆ u := by
  rw [IsConnected, isPreconnected_iff_subset_of_disjoint]
  refine ⟨fun ⟨hne, h⟩ U hU hUo hsU => ?_, fun h => ⟨?_, fun u v hu hv hs hsuv => ?_⟩⟩
  · induction U using Finset.induction_on
    case empty => exact absurd (by simpa using hsU) hne.not_subset_empty
    case insert u U uU IH =>
      simp only [← ball_cond_comm, Finset.forall_mem_insert, Finset.exists_mem_insert,
        Finset.coe_insert, sUnion_insert, implies_true, true_and] at *
      refine (h _ hUo.1 (⋃₀ ↑U) (isOpen_sUnion hUo.2) hsU ?_).imp_right ?_
      · refine subset_empty_iff.1 fun x ⟨hxs, hxu, v, hvU, hxv⟩ => ?_
        exact ne_of_mem_of_not_mem hvU uU (hU.1 v hvU ⟨x, hxs, hxu, hxv⟩).symm
      · exact IH (fun u hu => (hU.2 u hu).2) hUo.2
  · simpa [subset_empty_iff, nonempty_iff_ne_empty] using h ∅
  · rw [← not_nonempty_iff_eq_empty] at hsuv
    have := hsuv; rw [inter_comm u] at this
    simpa [*, or_imp, forall_and] using h {u, v}
#align is_connected_iff_sUnion_disjoint_open isConnected_iff_sUnion_disjoint_open

-- porting note: `IsPreconnected.subset_clopen` moved up from here

/-- Preconnected sets are either contained in or disjoint to any given clopen set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean#L1046).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb42d9e9235f9b07a8c938b2ed90b94b6875cd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
