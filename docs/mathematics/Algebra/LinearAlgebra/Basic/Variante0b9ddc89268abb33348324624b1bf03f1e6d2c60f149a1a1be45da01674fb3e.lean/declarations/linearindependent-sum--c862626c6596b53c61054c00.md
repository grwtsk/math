# linearIndependent_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 421,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fcd1500-859a-a282-1691-d228cf67f80d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2e6eedd-7b0f-dc5f-7c17-b51d31174646",
  "kind": "theorem",
  "lexical_name": "linearIndependent_sum",
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
  "slug": "linearindependent-sum--c862626c6596b53c61054c00",
  "source": {
    "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 421,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c862626c6596b53c61054c00c4ac3ddb7e2f81202287909a74902172349760da",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e6eedd-7b0f-dc5f-7c17-b51d31174646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_sum {v : ι ⊕ ι' → M} :
    LinearIndependent R v ↔
      LinearIndependent R (v ∘ Sum.inl) ∧
        LinearIndependent R (v ∘ Sum.inr) ∧
          Disjoint (Submodule.span R (range (v ∘ Sum.inl)))
            (Submodule.span R (range (v ∘ Sum.inr))) := by
  classical
  rw [range_comp v, range_comp v]
  refine ⟨?_, ?_⟩
  · intro h
    refine ⟨h.comp _ Sum.inl_injective, h.comp _ Sum.inr_injective, ?_⟩
    exact h.disjoint_span_image <| isCompl_range_inl_range_inr.disjoint
  rintro ⟨hl, hr, hlr⟩
  rw [linearIndependent_iff'] at *
  intro s g hg i hi
  have :
    ((∑ i ∈ s.preimage Sum.inl Sum.inl_injective.injOn, (fun x => g x • v x) (Sum.inl i)) +
        ∑ i ∈ s.preimage Sum.inr Sum.inr_injective.injOn, (fun x => g x • v x) (Sum.inr i)) =
      0 := by
    -- Porting note: `g` must be specified.
    rw [Finset.sum_preimage' (g := fun x => g x • v x),
      Finset.sum_preimage' (g := fun x => g x • v x), ← Finset.sum_union, ← Finset.filter_or]
    · simpa only [← mem_union, range_inl_union_range_inr, mem_univ, Finset.filter_true]
    · exact Finset.disjoint_filter.2 fun x _ hx =>
        disjoint_left.1 isCompl_range_inl_range_inr.disjoint hx
  rw [← eq_neg_iff_add_eq_zero] at this
  rw [disjoint_def'] at hlr
  have A := by
    refine hlr _ (sum_mem fun i _ => ?_) _ (neg_mem <| sum_mem fun i _ => ?_) this
    · exact smul_mem _ _ (subset_span ⟨Sum.inl i, mem_range_self _, rfl⟩)
    · exact smul_mem _ _ (subset_span ⟨Sum.inr i, mem_range_self _, rfl⟩)
  rcases i with i | i
  · exact hl _ _ A i (Finset.mem_preimage.2 hi)
  · rw [this, neg_eq_zero] at A
    exact hr _ _ A i (Finset.mem_preimage.2 hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d691b993206990704e02d62c3d1a5bdd41e9289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
