# exist_mul_closure_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0e35235a9889ad2752d740e4cb59c883f064383",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d55c2040-1db9-0b36-2392-a8b9442b6442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd0427a2-bdd3-ab17-e81a-6e7fb65d2860",
  "kind": "lemma",
  "lexical_name": "exist_mul_closure_nhds",
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
  "slug": "exist-mul-closure-nhds--1dda5665b809e7b84c11e4d2",
  "source": {
    "blob": "e0e35235a9889ad2752d740e4cb59c883f064383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 575,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dda5665b809e7b84c11e4d2a7cfbce4b958e498e6480ca23e25b1e76b58abaf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd0427a2-bdd3-ab17-e81a-6e7fb65d2860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exist_mul_closure_nhds {W : Set G} (WClopen : IsClopen W) : ∃ T ∈ 𝓝 (1 : G), W * T ⊆ W := by
  apply WClopen.isClosed.isCompact.induction_on (p := fun S ↦ ∃ T ∈ 𝓝 (1 : G), S * T ⊆ W)
    ⟨Set.univ, by simp only [univ_mem, empty_mul, empty_subset, and_self]⟩
    (fun _ _ huv ⟨T, hT, mem⟩ ↦ ⟨T, hT, (mul_subset_mul_right huv).trans mem⟩)
    fun U V ⟨T₁, hT₁, mem1⟩ ⟨T₂, hT₂, mem2⟩ ↦ ⟨T₁ ∩ T₂, inter_mem hT₁ hT₂, by
      rw [union_mul]
      exact union_subset (mul_subset_mul_left inter_subset_left |>.trans mem1)
        (mul_subset_mul_left inter_subset_right |>.trans mem2) ⟩
  intro x memW
  have : (x, 1) ∈ (fun p ↦ p.1 * p.2) ⁻¹' W := by simp [memW]
  rcases isOpen_prod_iff.mp (continuous_mul.isOpen_preimage W <| WClopen.2) x 1 this with
    ⟨U, V, Uopen, Vopen, xmemU, onememV, prodsub⟩
  have h6 : U * V ⊆ W := mul_subset_iff.mpr (fun _ hx _ hy ↦ prodsub (mk_mem_prod hx hy))
  exact ⟨U ∩ W, ⟨U, Uopen.mem_nhds xmemU, W, fun _ a ↦ a, rfl⟩,
    V, IsOpen.mem_nhds Vopen onememV, fun _ a ↦ h6 ((mul_subset_mul_right inter_subset_left) a)⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantae99f92e86fbbcf2301be8e78ef84dd31a498b29cf11b915b1ce2494c7e9395c.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e35235a9889ad2752d740e4cb59c883f064383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
