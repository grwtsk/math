# Limits.CokernelCofork.IsColimit.comp_π_eq_zero_iff_up_to_refinements

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
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ade9cb04-1e6c-09fa-60cf-4f1d33e023c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f936a077-6d18-4e81-2d91-e63ab31e3a1a",
  "kind": "lemma",
  "lexical_name": "Limits.CokernelCofork.IsColimit.comp_π_eq_zero_iff_up_to_refinements",
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
  "slug": "limits-cokernelcofork-iscolimit-comp-eq-zero-iff-up-to-refinements--2ad2256ee2a4ab213f617b04",
  "source": {
    "blob": "b315a3af1296c5af0f6d7c71017abe56a8352c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ad2256ee2a4ab213f617b042dd3d23f0d794f51d78d36ed7fd53713d8c58251",
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

Occurrence: `result:f936a077-6d18-4e81-2d91-e63ab31e3a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.CokernelCofork.IsColimit.comp_π_eq_zero_iff_up_to_refinements {f : X ⟶ Y}
    {c : CokernelCofork f} (hc : IsColimit c) {A : C} (y : A ⟶ Y) :
    y ≫ c.π = 0 ↔ ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (x : A' ⟶ X), π ≫ y = x ≫ f := by
  refine ⟨fun hy ↦ ?_, ?_⟩
  · have h := (ShortComplex.mk _ _ c.condition).exact_of_g_is_cokernel
      (IsColimit.ofIsoColimit hc (Cofork.ext (Iso.refl _) (by simp)))
    rw [ShortComplex.exact_iff_exact_up_to_refinements] at h
    obtain ⟨A', π, hπ, x₁, fac⟩ := h y hy
    exact ⟨A', π, hπ, x₁, fac⟩
  · rintro ⟨A', π, hπ, x, fac⟩
    simp [← cancel_epi π, reassoc_of% fac, condition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant02249608b8d39192bfffb8998f92f951e72686861f31c342de7f3aaba45dca47.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b315a3af1296c5af0f6d7c71017abe56a8352c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
