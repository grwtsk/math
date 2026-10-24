# _root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecc8517501fbd02b2d7581b7ef1cf9a3e4840726",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5e65581-1ca0-1c32-20f6-fe10a3689ccd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f78d643-8e8c-f1e5-f740-6dd9a0322595",
  "kind": "lemma",
  "lexical_name": "_root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter",
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
  "slug": "root-mdifferentiablewithinat-mpullbackwithin-vectorfield-inter--b96540e52d344a4474bc6ce1",
  "source": {
    "blob": "ecc8517501fbd02b2d7581b7ef1cf9a3e4840726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 227,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b96540e52d344a4474bc6ce15d5fa92e404b540afece9e2ce8d93d92a051f9ac",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f78d643-8e8c-f1e5-f740-6dd9a0322595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.MDifferentiableWithinAt.mpullbackWithin_vectorField_inter
    (hV : MDifferentiableWithinAt I' I'.tangent
      (fun (y : M') ↦ (V y : TangentBundle I' M')) t (f x₀))
    (hf : ContMDiffWithinAt I I' n f s x₀) (hf' : (mfderivWithin I I' f s x₀).IsInvertible)
    (hx₀ : x₀ ∈ s) (hs : UniqueMDiffOn I s) (hmn : 2 ≤ n) :
    MDifferentiableWithinAt I I.tangent
      (fun (y : M) ↦ (mpullbackWithin I I' f V s y : TangentBundle I M)) (s ∩ f ⁻¹' t) x₀ := by
  /- We want to apply the theorem `MDifferentiableWithinAt.clm_apply_of_inCoordinates`,
  stating that applying linear maps to vector fields gives a smooth result when the linear map and
  the vector field are smooth. This theorem is general, we will apply it to
  `b₁ = f`, `b₂ = id`, `v = V ∘ f`, `ϕ = fun x ↦ (mfderivWithin I I' f s x).inverse` -/
  let b₁ := f
  let b₂ : M → M := id
  let v : Π (x : M), TangentSpace I' (f x) := V ∘ f
  let ϕ : Π (x : M), TangentSpace I' (f x) →L[𝕜] TangentSpace I x :=
    fun x ↦ (mfderivWithin I I' f s x).inverse
  have hv : MDifferentiableWithinAt I I'.tangent
      (fun x ↦ (v x : TangentBundle I' M')) (s ∩ f ⁻¹' t) x₀ := by
    apply hV.comp x₀ ((hf.mdifferentiableWithinAt (one_le_two.trans hmn)).mono inter_subset_left)
    exact MapsTo.mono_left (mapsTo_preimage _ _) inter_subset_right
  /- The only nontrivial fact, from which the conclusion follows, is
  that `ϕ` depends smoothly on `x`. -/
  suffices hϕ : MDifferentiableWithinAt I 𝓘(𝕜, E' →L[𝕜] E)
      (fun (x : M) ↦ ContinuousLinearMap.inCoordinates
        E' (TangentSpace I' (M := M')) E (TangentSpace I (M := M))
        (b₁ x₀) (b₁ x) (b₂ x₀) (b₂ x) (ϕ x)) s x₀ from
    MDifferentiableWithinAt.clm_apply_of_inCoordinates (hϕ.mono inter_subset_left)
      hv mdifferentiableWithinAt_id
  /- To prove that `ϕ` depends smoothly on `x`, we use that the derivative depends smoothly on `x`
  (this is `ContMDiffWithinAt.mfderivWithin_const`), and that taking the inverse is a smooth
  operation at an invertible map. -/
  -- the derivative in coordinates depends smoothly on the point
  have : MDifferentiableWithinAt I 𝓘(𝕜, E →L[𝕜] E')
      (fun (x : M) ↦ ContinuousLinearMap.inCoordinates
        E (TangentSpace I (M := M)) E' (TangentSpace I' (M := M'))
        x₀ x (f x₀) (f x) (mfderivWithin I I' f s x)) s x₀ :=
    ((hf.of_le hmn).mfderivWithin_const le_rfl hx₀ hs).mdifferentiableWithinAt le_rfl
  -- therefore, its inverse in coordinates also depends smoothly on the point
  have : MDifferentiableWithinAt I 𝓘(𝕜, E' →L[𝕜] E)
      (ContinuousLinearMap.inverse ∘ (fun (x : M) ↦ ContinuousLinearMap.inCoordinates
        E (TangentSpace I (M := M)) E' (TangentSpace I' (M := M'))
        x₀ x (f x₀) (f x) (mfderivWithin I I' f s x))) s x₀ := by
    apply MDifferentiableAt.comp_mdifferentiableWithinAt _ _ this
    apply ContMDiffAt.mdifferentiableAt _ le_rfl
    apply ContDiffAt.contMDiffAt
    apply IsInvertible.contDiffAt_map_inverse
    rw [inCoordinates_eq (FiberBundle.mem_baseSet_trivializationAt' x₀)
      (FiberBundle.mem_baseSet_trivializationAt' (f x₀))]
    exact isInvertible_equiv.comp (hf'.comp isInvertible_equiv)
  -- the inverse in coordinates coincides with the in-coordinate version of the inverse,
  -- therefore the previous point gives the conclusion
  apply this.congr_of_eventuallyEq_of_mem _ hx₀
  have A : (trivializationAt E (TangentSpace I) x₀).baseSet ∈ 𝓝[s] x₀ := by
    apply nhdsWithin_le_nhds
    apply (trivializationAt _ _ _).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' _
  have B : f ⁻¹' (trivializationAt E' (TangentSpace I') (f x₀)).baseSet ∈ 𝓝[s] x₀ := by
    apply hf.continuousWithinAt.preimage_mem_nhdsWithin
    apply (trivializationAt _ _ _).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' _
  filter_upwards [A, B] with x hx h'x
  simp only [Function.comp_apply]
  rw [inCoordinates_eq hx h'x, inCoordinates_eq h'x (by exact hx)]
  simp only [inverse_equiv_comp, inverse_comp_equiv, ContinuousLinearEquiv.symm_symm, ϕ]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant490266700e123afbc1ed5af753ccb2fdd333450b439b9732814bf5afdec30564.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecc8517501fbd02b2d7581b7ef1cf9a3e4840726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
