# exact_ofComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65ef9c70ae6353a0d13fdff3d56ae7d8295b44d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cda2635-15d0-715a-7b64-6f1016cf76c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95569b0a-6ccd-221e-10ef-5c93fe536554",
  "kind": "theorem",
  "lexical_name": "exact_ofComplex",
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
  "slug": "exact-ofcomplex--1f821d9242f6e7a43374939e",
  "source": {
    "blob": "65ef9c70ae6353a0d13fdff3d56ae7d8295b44d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f821d9242f6e7a43374939e0c2607871fd1138492ee071ea54e125f48b5b3fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95569b0a-6ccd-221e-10ef-5c93fe536554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_ofComplex (Z : C) (n : ℕ) :
    Exact (HomologicalComplex.d (ofComplex Z) (n + 2) (n + 1))
    (HomologicalComplex.d (ofComplex Z) (n + 1) n) :=
  match n with
-- Porting note: used to be simp; apply exact_d_f on both branches
    | 0 => by simp; apply exact_d_f
    | m+1 => by
      simp only [ofComplex_X, ComplexShape.down_Rel, ofComplex_d, eqToHom_refl,
        Category.id_comp, dite_eq_ite, not_true, ite_true]
      -- Porting note: this is probably required now due to
      -- https://github.com/leanprover/lean4/pull/2146
      erw [if_pos (c := m + 1 + 1 + 1 = m + 2 + 1) rfl]
      apply exact_d_f

/-- In any abelian category with enough projectives,
`ProjectiveResolution.of Z` constructs a projective resolution of the object `Z`.
-/
irreducible_def of (Z : C) : ProjectiveResolution Z :=
  { complex := ofComplex Z
    π := ChainComplex.mkHom (ofComplex Z) ((ChainComplex.single₀ C).obj Z) (Projective.π Z) 0
           (ofComplex_sq_10_comm Z) (fun n _ ↦ ⟨0, by
           -- Porting note: broken ext
            apply HasZeroObject.to_zero_ext ⟩)
    projective := by rintro (_ | _ | _ | n) <;> apply Projective.projective_over
    exact₀ := by simpa using exact_d_f (Projective.π Z)
    exact := exact_ofComplex Z
    epi := Projective.π_epi Z }
set_option linter.uppercaseLean3 false in
#align category_theory.ProjectiveResolution.of CategoryTheory.ProjectiveResolution.of

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ef9c70ae6353a0d13fdff3d56ae7d8295b44d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
