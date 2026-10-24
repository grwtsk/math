# ShortComplex.mono_homologyMap_iff_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f1f07e-41e2-1613-18a2-d4b3cb03d515",
  "kind": "lemma",
  "lexical_name": "ShortComplex.mono_homologyMap_iff_up_to_refinements",
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
  "slug": "shortcomplex-mono-homologymap-iff-up-to-refinements--1905392c531c70a8d574dc1d",
  "source": {
    "blob": "717b398cf7833040d592f428dbfbd4b7e769b7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1905392c531c70a8d574dc1daab529c2fd42de320dcb96045f9763b3af26ca73",
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

Occurrence: `result:19f1f07e-41e2-1613-18a2-d4b3cb03d515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortComplex.mono_homologyMap_iff_up_to_refinements (φ : S₁ ⟶ S₂) :
    Mono (homologyMap φ) ↔
      ∀ ⦃A : C⦄ (x₂ : A ⟶ S₁.X₂) (_ : x₂ ≫ S₁.g = 0) (y₁ : A ⟶ S₂.X₁)
          (_ : x₂ ≫ φ.τ₂ = y₁ ≫ S₂.f),
        ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (x₁ : A' ⟶ S₁.X₁),
          π ≫ x₂ = x₁ ≫ S₁.f := by
  refine ⟨fun h A x₂ hx₂ y₁ fac ↦ ?_, fun h ↦ ?_⟩
  · suffices S₁.liftCycles x₂ hx₂ ≫ S₁.homologyπ = 0 by
      rwa [← S₁.liftCycles_comp_homologyπ_eq_zero_iff_up_to_refinements]
    simp only [← cancel_mono (homologyMap φ), zero_comp, assoc,
      homologyπ_naturality, liftCycles_comp_cyclesMap_assoc,
      S₂.liftCycles_comp_homologyπ_eq_zero_iff_up_to_refinements]
    exact ⟨A, 𝟙 A, inferInstance, y₁, by simpa using fac⟩
  · rw [Preadditive.mono_iff_cancel_zero]
    intro A γ hγ
    obtain ⟨A₁, π₁, hπ₁, z, hz, fac⟩ := S₁.eq_liftCycles_homologyπ_up_to_refinements γ
    rw [← cancel_epi π₁, fac, comp_zero]
    replace hγ := π₁ ≫= hγ
    simp only [reassoc_of% fac, homologyπ_naturality, liftCycles_comp_cyclesMap_assoc,
      comp_zero, comp_homologyπ_eq_zero_iff_up_to_refinements] at hγ
    obtain ⟨A₂, π₂, hπ₂, y, hy⟩ := hγ
    replace hy := hy =≫ S₂.iCycles
    simp only [assoc, liftCycles_i, toCycles_i] at hy
    obtain ⟨A₃, π₃, hπ₃, x₁, hx₁⟩ :=
      h (π₂ ≫ z) (by rw [assoc, hz, comp_zero]) y (by simpa)
    rw [liftCycles_comp_homologyπ_eq_zero_iff_up_to_refinements]
    exact ⟨A₃, π₃ ≫ π₂, epi_comp _ _, x₁, by simpa⟩

variable {K L} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variantc0c556c5d073ba0fb4bca8251f18abc709c4fa4e59824c05c911867551af8e1e.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b398cf7833040d592f428dbfbd4b7e769b7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
