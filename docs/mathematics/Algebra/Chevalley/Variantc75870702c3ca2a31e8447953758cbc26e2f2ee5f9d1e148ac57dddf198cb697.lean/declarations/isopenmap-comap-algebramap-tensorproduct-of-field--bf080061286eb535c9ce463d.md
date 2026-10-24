# isOpenMap_comap_algebraMap_tensorProduct_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7aec199d5e7add500991da0aa3a6d38d43acd7b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26d1d50c-a87d-cddd-2d42-8a76687cffc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57c85237-531c-c665-f36e-439b515baf39",
  "kind": "theorem",
  "lexical_name": "isOpenMap_comap_algebraMap_tensorProduct_of_field",
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
  "slug": "isopenmap-comap-algebramap-tensorproduct-of-field--bf080061286eb535c9ce463d",
  "source": {
    "blob": "7aec199d5e7add500991da0aa3a6d38d43acd7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 72,
    "path": "GRWTSK/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf080061286eb535c9ce463d62f7ab148197b0264904a60b1171cc58ab15e0c7",
  "verification": {
    "reference": "docs/verification/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c85237-531c-c665-f36e-439b515baf39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenMap_comap_algebraMap_tensorProduct_of_field
    {K A B : Type*} [Field K] [CommRing A] [CommRing B] [Algebra K A] [Algebra K B] :
    IsOpenMap (PrimeSpectrum.comap (algebraMap A (A ⊗[K] B))) := by
  intro U hU
  wlog hU' : ∃ f, U = SetLike.coe (basicOpen f) generalizing U
  · rw [eq_biUnion_of_isOpen hU, Set.image_iUnion₂]
    exact isOpen_iUnion fun _ ↦ isOpen_iUnion fun _ ↦ this _ (basicOpen _).isOpen ⟨_, rfl⟩
  obtain ⟨f, rfl⟩ := hU'
  obtain ⟨B', hB, f, rfl⟩ := exists_fg_and_mem_baseChange f
  have : Algebra.FinitePresentation K B' :=
    Algebra.FinitePresentation.of_finiteType.mp ⟨B'.fg_top.mpr hB⟩
  convert!
    isOpenMap_comap_of_hasGoingDown_of_finitePresentation (R := A) (S := A ⊗[K] B') _
      (basicOpen f).isOpen using 1
  ext x
  rw [PrimeSpectrum.mem_image_comap_basicOpen, PrimeSpectrum.mem_image_comap_basicOpen,
    not_iff_not]
  let ψ := Algebra.TensorProduct.map
    (Algebra.TensorProduct.map (.id A A) B'.val) (.id A x.asIdeal.ResidueField)
  have hψeq : ψ = (Algebra.TensorProduct.comm _ _ _ |>.toAlgHom.comp <|
    Algebra.TensorProduct.cancelBaseChange K A A _ B |>.symm.toAlgHom.comp <|
    Algebra.TensorProduct.map (.id _ _) B'.val |>.comp <|
    Algebra.TensorProduct.cancelBaseChange K A A _ B' |>.toAlgHom.comp <|
    (Algebra.TensorProduct.comm _ _ _).toAlgHom) := by ext; simp [ψ]
  have hψ : Function.Injective ψ := by
    rw [hψeq]
    dsimp
    simp_rw [EmbeddingLike.comp_injective, ← Function.comp_assoc, EquivLike.injective_comp]
    exact Module.Flat.lTensor_preserves_injective_linearMap _ Subtype.val_injective
  rw [← IsNilpotent.map_iff hψ]
  rfl

end PrimeSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aec199d5e7add500991da0aa3a6d38d43acd7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
