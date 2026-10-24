# induced_topology_eq_preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:defdfc24-8d8a-fea5-aa6f-9e1e20aafc2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fc3b433-98f3-7233-5b86-d972d471afe2",
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
  "slug": "induced-topology-eq-preorder--83cbe07bf02fef6fef660423",
  "source": {
    "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83cbe07bf02fef6fef660423a6c30f8f9d8aa7be09dd319c7a2bdd0ef49d4cba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fc3b433-98f3-7233-5b86-d972d471afe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–299.

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
  · by_cases! h : ∃ x, ¬(b < f x)
    · rcases h with ⟨x, hx⟩
      rcases H₁ hb hx with ⟨y, hya, hyb⟩
      exact iInf₂_le_of_le y hya (principal_mono.2 fun z hz => hyb.trans_lt (hf.2 hz))
    · exact le_principal_iff.2 (univ_mem' h)
  · by_cases! h : ∃ x, ¬(f x < b)
    · rcases h with ⟨x, hx⟩
      rcases H₂ hb hx with ⟨y, hya, hyb⟩
      exact iInf₂_le_of_le y hya (principal_mono.2 fun z hz => (hf.2 hz).trans_le hyb)
    · exact le_principal_iff.2 (univ_mem' h)

@[to_dual self (reorder := hf (x y), H₁ H₂)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a6d413ad1c02252c0c69261cf5761e95af1cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
