# isOpenMap_comap_algebraMap_tensorProduct_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21d012e2-79a2-b23c-82af-92258055e734",
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
  "slug": "isopenmap-comap-algebramap-tensorproduct-of-field--85b893e7e1ea6d172338f908",
  "source": {
    "blob": "38f7503de7550124911de40ae88d2028804d2513",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 80,
    "path": "GRWTSK/Algebra/Chevalley/Variant00e00f8f9cb7aab6e7c504f3a8c94b54f851d7e84ad4826c0b8901bc4043e331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85b893e7e1ea6d172338f9087a5ca75c4450ba1433c2180b99bc85650404a231",
  "verification": {
    "reference": "docs/verification/Algebra/Chevalley/Variant00e00f8f9cb7aab6e7c504f3a8c94b54f851d7e84ad4826c0b8901bc4043e331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d012e2-79a2-b23c-82af-92258055e734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–112.

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

[Verification target and public status](../../../../../verification/Algebra/Chevalley/Variant00e00f8f9cb7aab6e7c504f3a8c94b54f851d7e84ad4826c0b8901bc4043e331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Chevalley/Variant00e00f8f9cb7aab6e7c504f3a8c94b54f851d7e84ad4826c0b8901bc4043e331.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f7503de7550124911de40ae88d2028804d2513` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
