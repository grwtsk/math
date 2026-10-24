# isEmbedding_pushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89c4750d8a0ebe264381a21f01ed963bab796867",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d10fcde0-7656-cb68-1a01-c4806dcee06f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d6caf8e1-3a25-b484-bada-56386840fbb3",
  "kind": "lemma",
  "lexical_name": "isEmbedding_pushout",
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
  "slug": "isembedding-pushout--d7bb93b76324da6252540845",
  "source": {
    "blob": "89c4750d8a0ebe264381a21f01ed963bab796867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7bb93b76324da6252540845c66a82dca2057f5635f464f6f8f2471c871b2a01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6caf8e1-3a25-b484-bada-56386840fbb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_pushout [IsTopologicalRing R] (φ : A ⟶ B) (ψ : A ⟶ C) :
    IsEmbedding fun f : pushout φ ψ ⟶ R ↦ (pushout.inl φ ψ ≫ f, pushout.inr φ ψ ≫ f) := by
  -- The key idea: Let `X = Spec B` and `Y = Spec C`.
  -- We want to show `(X × Y)(R)` has the subspace topology from `X(R) × Y(R)`.
  -- We already know that `X(R) × Y(R)` is a subspace of `𝔸ᴮ(R) × 𝔸ᶜ(R)` and by explicit calculation
  -- this is isomorphic to `𝔸ᴮ⁺ᶜ(R)` which `(X × Y)(R)` embeds into.
  let PB := CommRingCat.of (MvPolynomial B A)
  let PC := CommRingCat.of (MvPolynomial C A)
  let fB : PB ⟶ B := CommRingCat.ofHom (MvPolynomial.eval₂Hom φ.hom id)
  have hfB : Function.Surjective fB.hom := fun x ↦ ⟨.X x, by simp [PB, fB]⟩
  let fC : PC ⟶ C := CommRingCat.ofHom (MvPolynomial.eval₂Hom ψ.hom id)
  have hfC : Function.Surjective fC.hom := fun x ↦ ⟨.X x, by simp [PC, fC]⟩
  have := (isEmbedding_precomp_of_surjective (R := R) fB hfB).prodMap
    (isEmbedding_precomp_of_surjective (R := R) fC hfC)
  rw [← IsEmbedding.of_comp_iff this]
  let PBC := CommRingCat.of (MvPolynomial (B ⊕ C) A)
  let fBC : PBC ⟶ pushout φ ψ :=
    CommRingCat.ofHom (MvPolynomial.eval₂Hom (φ ≫ pushout.inl φ ψ).hom
      (Sum.elim (pushout.inl φ ψ).hom (pushout.inr φ ψ).hom))
  have hfBC : Function.Surjective fBC := by
    rw [← RingHom.range_eq_top, ← top_le_iff,
      ← closure_range_union_range_eq_top_of_isPushout (.of_hasPushout _ _), Subring.closure_le]
    simp only [Set.union_subset_iff, RingHom.coe_range, Set.range_subset_iff, Set.mem_range]
    exact ⟨fun x ↦ ⟨.X (.inl x), by simp [fBC, PBC]⟩, fun x ↦ ⟨.X (.inr x), by simp [fBC, PBC]⟩⟩
  let F : ((A ⟶ R) × ((B ⊕ C) → R)) → ((A ⟶ R) × (B → R)) × ((A ⟶ R) × (C → R)) :=
    fun x ↦ ⟨⟨x.1, x.2 ∘ Sum.inl⟩, ⟨x.1, x.2 ∘ Sum.inr⟩⟩
  have hF : IsEmbedding F := (Homeomorph.prodProdProdComm _ _ _ _).isEmbedding.comp
    ((isEmbedding_graph continuous_id).prodMap Homeomorph.sumArrowHomeomorphProdArrow.isEmbedding)
  have H := (mvPolynomialHomeomorph B R A).symm.isEmbedding.prodMap
    (mvPolynomialHomeomorph C R A).symm.isEmbedding
  convert!
    ((H.comp hF).comp (mvPolynomialHomeomorph _ R A).isEmbedding).comp
      (isEmbedding_precomp_of_surjective (R := R) fBC hfBC)
  have (s : _) : (pushout.inr φ ψ).hom (ψ.hom s) = (pushout.inl φ ψ).hom (φ.hom s) :=
    congr($(pushout.condition (f := φ)).hom s).symm
  ext f s <;> simp [fB, fC, fBC, PB, PC, PBC, F, this]

end CommRingCat.HomTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant97f7054a64a53b9dba9eeb471e0bd1da5a3d9dc8c69336033ac3c927592341eb.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c4750d8a0ebe264381a21f01ed963bab796867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
