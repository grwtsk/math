# abelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ed1389a7530c4e67eea8cb3a16b8181bb582e1ae0246f064131e37994723196",
  "kind": "def",
  "lexical_name": "abelian",
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
  "slug": "abelian--7e43a115ff2cbcdeb5a547b8",
  "source": {
    "blob": "98ec2691e33ab3154d4af5cd65977a06121160e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 309,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e43a115ff2cbcdeb5a547b8c07b24c2350ae82194025f887ad192e127dda40d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ed1389a7530c4e67eea8cb3a16b8181bb582e1ae0246f064131e37994723196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def abelian [IsTriangulated C] : Abelian A :=
  Abelian.mk' (fun X₁ X₂ f₁ ↦ by
    obtain ⟨X₃, f₂, f₃, hT⟩ := distinguished_cocone_triangle (ι.map f₁)
    have : admissibleMorphism ι f₁ := by simp [hA]
    obtain ⟨K, Q, α, β, γ, hT'⟩ := this f₂ f₃ hT
    have := epi_πQ hι hT hT'
    obtain ⟨I, i, δ, hI⟩ := exists_distinguished_triangle_of_epi hι hA (πQ f₂ β)
    have H := someOctahedron (show f₂ ≫ β = ι.map (πQ f₂ β) by simp)
      (rot_of_distTriang _ hT) (rot_of_distTriang _ hT')
      (rot_of_distTriang _ hI)
    obtain ⟨m₁, hm₁⟩ : ∃ (m₁ : X₁ ⟶ I), (shiftFunctor C (1 : ℤ)).map (ι.map m₁) = H.m₁ :=
      ⟨(ι ⋙ shiftFunctor C (1 : ℤ)).preimage H.m₁, Functor.map_preimage (ι ⋙ _) _⟩
    obtain ⟨m₃ : ι.obj I ⟶ (ι.obj K)⟦(1 : ℤ)⟧, hm₃⟩ :
        ∃ m₃, (shiftFunctor C (1 : ℤ)).map m₃ = H.m₃ :=
      ⟨(shiftFunctor C (1 : ℤ)).preimage H.m₃, Functor.map_preimage _ _⟩
    have Hmem : Triangle.mk (ι.map (ιK f₃ α)) (ι.map m₁) (-m₃) ∈ distTriang C := by
      rw [rotate_distinguished_triangle, ← Triangle.shift_distinguished_iff _ 1]
      refine isomorphic_distinguished _ H.mem _ ?_
      exact Triangle.isoMk _ _ (-(Iso.refl _)) (Iso.refl _) (Iso.refl _)
    exact ⟨{
      kernelFork := _
      isLimitKernelFork := isLimitKernelFork hι hT hT'
      cokernelCofork := _
      isColimitCokernelCofork := isColimitCokernelCofork hι hT hT'
      image := _
      imageι := _
      imageπ := _
      ι_imageπ := _
      imageι_π := _
      imageIsCokernel := isColimitCokernelCoforkOfDistTriang hι _ _ _ Hmem
      imageIsKernel := isLimitKernelForkOfDistTriang hι _ _ _ hI
      fac := (ι ⋙ shiftFunctor C (1 : ℤ)).map_injective (by simpa [hm₁] using H.comm₂) }⟩)

end

end AbelianSubcategory

end Triangulated

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variant9fd58d9f23e835f848cf30f468e16aa8d13b55fde219eb6a5433101bdce5c4ca.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ec2691e33ab3154d4af5cd65977a06121160e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
