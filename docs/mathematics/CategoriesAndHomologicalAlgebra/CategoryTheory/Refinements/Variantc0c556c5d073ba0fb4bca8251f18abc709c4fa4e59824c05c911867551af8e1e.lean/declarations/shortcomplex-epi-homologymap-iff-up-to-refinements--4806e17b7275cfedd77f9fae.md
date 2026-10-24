# ShortComplex.epi_homologyMap_iff_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f005f6f3-a793-37bf-f729-7742621de7d4",
  "kind": "lemma",
  "lexical_name": "ShortComplex.epi_homologyMap_iff_up_to_refinements",
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
  "slug": "shortcomplex-epi-homologymap-iff-up-to-refinements--4806e17b7275cfedd77f9fae",
  "source": {
    "blob": "717b398cf7833040d592f428dbfbd4b7e769b7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4806e17b7275cfedd77f9fae7b95e14a06c1f5d07b2edd2b46884eec01dd9285",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f005f6f3-a793-37bf-f729-7742621de7d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortComplex.epi_homologyMap_iff_up_to_refinements (φ : S₁ ⟶ S₂) :
    Epi (homologyMap φ) ↔
      ∀ ⦃A : C⦄ (y₂ : A ⟶ S₂.X₂) (_ : y₂ ≫ S₂.g = 0),
        ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (x₂ : A' ⟶ S₁.X₂) (_ : x₂ ≫ S₁.g = 0)
          (y₁ : A' ⟶ S₂.X₁), π ≫ y₂ = x₂ ≫ φ.τ₂ + y₁ ≫ S₂.f := by
  rw [epi_iff_surjective_up_to_refinements]
  constructor
  · intro h A y₂ hy₂
    obtain ⟨A₁, π₁, hπ₁, γ, hγ⟩ := h (S₂.liftCycles y₂ hy₂ ≫ S₂.homologyπ)
    obtain ⟨A₂, π₂, hπ₂, x₂, hx₂, fac⟩ := S₁.eq_liftCycles_homologyπ_up_to_refinements γ
    replace hγ := π₂ ≫= hγ
    simp only [reassoc_of% fac, homologyπ_naturality, liftCycles_comp_cyclesMap_assoc,
      comp_liftCycles_assoc, liftCycles_comp_homologyπ_eq_iff_up_to_refinements] at hγ
    obtain ⟨A₃, π₃, hπ₃, x₁, hx₁⟩ := hγ
    exact ⟨A₃, π₃ ≫ π₂ ≫ π₁, inferInstance, π₃ ≫ x₂, by simp only [assoc, hx₂, comp_zero],
      x₁, by simpa only [assoc] using hx₁⟩
  · intro h A γ
    obtain ⟨A₁, π₁, hπ₁, y₂, hy₂, fac⟩ := S₂.eq_liftCycles_homologyπ_up_to_refinements γ
    obtain ⟨A₂, π₂, hπ₂, x₂, hx₂, y₁, hy₁⟩ := h y₂ hy₂
    refine ⟨A₂, π₂ ≫ π₁, inferInstance, S₁.liftCycles x₂ hx₂ ≫ S₁.homologyπ, ?_⟩
    simp only [assoc, fac, homologyπ_naturality, liftCycles_comp_cyclesMap_assoc,
      comp_liftCycles_assoc, liftCycles_comp_homologyπ_eq_iff_up_to_refinements]
    exact ⟨A₂, 𝟙 _, inferInstance, y₁, by simpa only [id_comp] using hy₁⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b398cf7833040d592f428dbfbd4b7e769b7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
