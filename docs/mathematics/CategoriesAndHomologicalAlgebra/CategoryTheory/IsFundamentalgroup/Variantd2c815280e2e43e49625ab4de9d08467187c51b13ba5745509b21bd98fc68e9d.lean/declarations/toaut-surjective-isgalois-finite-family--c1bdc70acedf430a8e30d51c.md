# toAut_surjective_isGalois_finite_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c84a56091c8654dd97c6d13a4139d53bf7b6bef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b35d2e8-c064-cd13-9e03-6cbad69fedc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:246cbe0c-6e1a-7661-1839-4cd2f2f7ceb7",
  "kind": "lemma",
  "lexical_name": "toAut_surjective_isGalois_finite_family",
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
  "slug": "toaut-surjective-isgalois-finite-family--c1bdc70acedf430a8e30d51c",
  "source": {
    "blob": "8c84a56091c8654dd97c6d13a4139d53bf7b6bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1bdc70acedf430a8e30d51c2ac2a0c485afedddb1062aac6f1b53eb3e5fd702",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:246cbe0c-6e1a-7661-1839-4cd2f2f7ceb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAut_surjective_isGalois_finite_family (t : Aut F) {ι : Type*} [Finite ι] (X : ι → C)
    [∀ i, IsGalois (X i)] (h : ∀ (X : C) [IsGalois X], MulAction.IsPretransitive G (F.obj X)) :
    ∃ (g : G), ∀ (i : ι) (x : F.obj (X i)), g • x = t.hom.app (X i) x := by
  let x (i : ι) : F.obj (X i) := (nonempty_fiber_of_isConnected F (X i)).some
  let P : C := ∏ᶜ X
  letI : Fintype ι := Fintype.ofFinite ι
  let is₁ : F.obj P ≅ ∏ᶜ fun i ↦ (F.obj (X i)) := PreservesProduct.iso F X
  let is₂ : (∏ᶜ fun i ↦ F.obj (X i) : FintypeCat) ≃ ∀ i, F.obj (X i) :=
    Limits.FintypeCat.productEquiv (fun i ↦ (F.obj (X i)))
  let px : F.obj P := is₁.inv (is₂.symm x)
  have hpx (i : ι) : F.map (Pi.π X i) px = x i := by
    simp only [px, is₁, is₂, ← piComparison_comp_π, ← PreservesProduct.iso_hom]
    simp only [FintypeCat.comp_apply, FintypeCat.inv_hom_id_apply,
      FintypeCat.productEquiv_symm_comp_π_apply]
  obtain ⟨A, f, a, _, hfa⟩ := exists_hom_from_galois_of_fiber F P px
  obtain ⟨g, hg⟩ := toAut_surjective_isGalois F G t A
  refine ⟨g, fun i y ↦ action_ext_of_isGalois F (x i) ?_ _⟩
  rw [← hpx i, ← IsNaturalSMul.naturality, FunctorToFintypeCat.naturality,
    ← hfa, FunctorToFintypeCat.naturality, ← IsNaturalSMul.naturality, hg]

open Pointwise

/-- If `G` is a compact, topological group that acts continuously and naturally on the
fibers of `F`, `toAut F G` is surjective if and only if it acts transitively on the fibers
of all Galois objects. This is the `if` direction. For the `only if` see
`isPretransitive_of_surjective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c84a56091c8654dd97c6d13a4139d53bf7b6bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
