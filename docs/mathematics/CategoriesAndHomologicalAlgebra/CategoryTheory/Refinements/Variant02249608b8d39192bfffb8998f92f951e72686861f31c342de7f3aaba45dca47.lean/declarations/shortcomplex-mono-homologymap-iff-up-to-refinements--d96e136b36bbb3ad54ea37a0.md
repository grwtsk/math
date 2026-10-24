# ShortComplex.mono_homologyMap_iff_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b315a3af1296c5af0f6d7c71017abe56a8352c0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e49bc78-f9ed-5cbc-5a87-e61b14ea9db5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2531a518-56e1-0675-d69f-4cdef25ac9c1",
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
  "slug": "shortcomplex-mono-homologymap-iff-up-to-refinements--d96e136b36bbb3ad54ea37a0",
  "source": {
    "blob": "b315a3af1296c5af0f6d7c71017abe56a8352c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96e136b36bbb3ad54ea37a09dade1fb3ac53253df06d7af07e0e35c02cdcaa4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2531a518-56e1-0675-d69f-4cdef25ac9c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–214.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b315a3af1296c5af0f6d7c71017abe56a8352c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
