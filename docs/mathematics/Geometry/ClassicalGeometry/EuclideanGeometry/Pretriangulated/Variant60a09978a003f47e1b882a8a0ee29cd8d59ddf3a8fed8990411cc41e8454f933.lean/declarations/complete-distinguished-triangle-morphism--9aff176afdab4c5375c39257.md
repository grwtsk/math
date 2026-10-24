# complete_distinguished_triangle_morphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85878911211140df9f83db3e6c6f88c76e3d1d2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2735916-bf20-ee8c-4c2b-c9a538d8f6b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b4fdae4-dca7-695d-84ba-32552ec9c7a2",
  "kind": "lemma",
  "lexical_name": "complete_distinguished_triangle_morphism",
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
  "slug": "complete-distinguished-triangle-morphism--9aff176afdab4c5375c39257",
  "source": {
    "blob": "85878911211140df9f83db3e6c6f88c76e3d1d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 473,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aff176afdab4c5375c3925702a54059315295e1d731477aea42e584b45bf4de",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b4fdae4-dca7-695d-84ba-32552ec9c7a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma complete_distinguished_triangle_morphism
    (T₁ T₂ : Triangle (HomotopyCategory C (ComplexShape.up ℤ)))
    (hT₁ : T₁ ∈ distinguishedTriangles C) (hT₂ : T₂ ∈ distinguishedTriangles C)
    (a : T₁.obj₁ ⟶ T₂.obj₁) (b : T₁.obj₂ ⟶ T₂.obj₂) (fac : T₁.mor₁ ≫ b = a ≫ T₂.mor₁) :
    ∃ (c : T₁.obj₃ ⟶ T₂.obj₃), T₁.mor₂ ≫ c = b ≫ T₂.mor₂ ∧
      T₁.mor₃ ≫ a⟦(1 : ℤ)⟧' = c ≫ T₂.mor₃ := by
  obtain ⟨K₁, L₁, φ₁, ⟨e₁⟩⟩ := hT₁
  obtain ⟨K₂, L₂, φ₂, ⟨e₂⟩⟩ := hT₂
  obtain ⟨a', ha'⟩ : ∃ (a' : (quotient _ _).obj K₁ ⟶ (quotient _ _).obj K₂),
    a' = e₁.inv.hom₁ ≫ a ≫ e₂.hom.hom₁ := ⟨_, rfl⟩
  obtain ⟨b', hb'⟩ : ∃ (b' : (quotient _ _).obj L₁ ⟶ (quotient _ _).obj L₂),
    b' = e₁.inv.hom₂ ≫ b ≫ e₂.hom.hom₂ := ⟨_, rfl⟩
  obtain ⟨a'', rfl⟩ := (quotient _ _).map_surjective a'
  obtain ⟨b'', rfl⟩ := (quotient _ _).map_surjective b'
  have H : Homotopy (φ₁ ≫ b'') (a'' ≫ φ₂) := homotopyOfEq _ _ (by
    have comm₁₁ := e₁.inv.comm₁
    have comm₁₂ := e₂.hom.comm₁
    dsimp at comm₁₁ comm₁₂
    simp only [Functor.map_comp, ha', hb', reassoc_of% comm₁₁,
      reassoc_of% fac, comm₁₂, assoc])
  let γ := e₁.hom ≫ trianglehMapOfHomotopy H ≫ e₂.inv
  have comm₂ := γ.comm₂
  have comm₃ := γ.comm₃
  dsimp [γ] at comm₂ comm₃
  simp only [ha', hb'] at comm₂ comm₃
  refine ⟨γ.hom₃, ?_, ?_⟩
  -- the following list of lemmas was obtained by doing simpa? [γ] using comm₂
  · simpa only [triangleCategory_comp, Functor.mapTriangle_obj, triangle_obj₁, triangle_obj₂,
      triangle_obj₃, triangle_mor₁, triangle_mor₂, TriangleMorphism.comp_hom₃, Triangle.mk_obj₃,
      trianglehMapOfHomotopy_hom₃, TriangleMorphism.comm₂_assoc, Triangle.mk_obj₂,
      Triangle.mk_mor₂, assoc, Iso.hom_inv_id_triangle_hom₂, comp_id,
      Iso.hom_inv_id_triangle_hom₂_assoc, γ] using comm₂
  -- the following list of lemmas was obtained by doing simpa? [γ] using comm₃
  · simpa only [triangleCategory_comp, Functor.mapTriangle_obj, triangle_obj₁, triangle_obj₂,
      triangle_obj₃, triangle_mor₁, triangle_mor₂, TriangleMorphism.comp_hom₃, Triangle.mk_obj₃,
      trianglehMapOfHomotopy_hom₃, assoc, Triangle.mk_obj₁, Iso.hom_inv_id_triangle_hom₁, comp_id,
      Iso.hom_inv_id_triangle_hom₁_assoc, γ] using comm₃

end Pretriangulated

variable [HasZeroObject C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant60a09978a003f47e1b882a8a0ee29cd8d59ddf3a8fed8990411cc41e8454f933.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85878911211140df9f83db3e6c6f88c76e3d1d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
