# IsPreconnected.sUnion_directed

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09323c3c-7c6f-ff05-23b3-bde12a9a3fb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61a084d9-1e06-ef39-805c-f14ecac60635",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.sUnion_directed",
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
  "slug": "ispreconnected-sunion-directed--b817382cf88a35cee5fa069b",
  "source": {
    "blob": "cb42d9e9235f9b07a8c938b2ed90b94b6875cd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b817382cf88a35cee5fa069bcfa2477e4b5c8f83944217b6e8bd3f1976f49d1b",
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

Occurrence: `result:61a084d9-1e06-ef39-805c-f14ecac60635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.sUnion_directed {S : Set (Set α)} (K : DirectedOn (· ⊆ ·) S)
    (H : ∀ s ∈ S, IsPreconnected s) : IsPreconnected (⋃₀ S) := by
  rintro u v hu hv Huv ⟨a, ⟨s, hsS, has⟩, hau⟩ ⟨b, ⟨t, htS, hbt⟩, hbv⟩
  obtain ⟨r, hrS, hsr, htr⟩ : ∃ r ∈ S, s ⊆ r ∧ t ⊆ r := K s hsS t htS
  have Hnuv : (r ∩ (u ∩ v)).Nonempty :=
    H _ hrS u v hu hv ((subset_sUnion_of_mem hrS).trans Huv) ⟨a, hsr has, hau⟩ ⟨b, htr hbt, hbv⟩
  have Kruv : r ∩ (u ∩ v) ⊆ ⋃₀ S ∩ (u ∩ v) := inter_subset_inter_left _ (subset_sUnion_of_mem hrS)
  exact Hnuv.mono Kruv
#align is_preconnected.sUnion_directed IsPreconnected.sUnion_directed

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant508c5ff94e45d61dd2c160069a6b1bb95d53d3baad539c45ca41adde47485172.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb42d9e9235f9b07a8c938b2ed90b94b6875cd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
