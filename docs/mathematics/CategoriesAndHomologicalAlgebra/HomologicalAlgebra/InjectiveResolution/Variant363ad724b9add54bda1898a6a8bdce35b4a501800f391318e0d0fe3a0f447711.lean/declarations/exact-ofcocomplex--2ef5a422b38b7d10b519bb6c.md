# exact_ofCocomplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cf6bd7ccde0865f7108ecfa0d1d99b8a01a9dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0c36da2-2184-d6c8-b75e-76de43e979b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b18b728-b7b6-d959-d265-481937ce46af",
  "kind": "theorem",
  "lexical_name": "exact_ofCocomplex",
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
  "slug": "exact-ofcocomplex--2ef5a422b38b7d10b519bb6c",
  "source": {
    "blob": "1cf6bd7ccde0865f7108ecfa0d1d99b8a01a9dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef5a422b38b7d10b519bb6c5758a1740a5537ccef64c133c5513ab64a70f0b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b18b728-b7b6-d959-d265-481937ce46af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_ofCocomplex (Z : C) (n : ℕ) :
    Exact (HomologicalComplex.d (ofCocomplex Z) n (n + 1))
    (HomologicalComplex.d (ofCocomplex Z) (n + 1) (n + 2)) :=
  match n with
-- Porting note: used to be simp; apply exact_f_d on both branches
    | 0 => by simp; apply exact_f_d
    | m+1 => by
      simp only [ofCocomplex_X, ComplexShape.up_Rel, not_true, ofCocomplex_d,
        eqToHom_refl, Category.comp_id, dite_eq_ite, ite_true]
      erw [if_pos (c := m + 1 + 1 + 1 = m + 2 + 1) rfl]
      apply exact_f_d

-- Porting note: still very slow but with `ofCocomplex_sq_01_comm` and
-- `exact_ofCocomplex` as separate results it is more reasonable
/-- In any abelian category with enough injectives,
`InjectiveResolution.of Z` constructs an injective resolution of the object `Z`.
-/
irreducible_def of (Z : C) : InjectiveResolution Z :=
  { cocomplex := ofCocomplex Z
    ι :=
      CochainComplex.mkHom
        ((CochainComplex.single₀ C).obj Z) (ofCocomplex Z) (Injective.ι Z) 0
          (ofCocomplex_sq_01_comm Z) fun n _ => by
          -- Porting note: used to be ⟨0, by ext⟩
            use 0
            apply HasZeroObject.from_zero_ext
    injective := by rintro (_ | _ | _ | n) <;> · apply Injective.injective_under
    exact₀ := by simpa using exact_f_d (Injective.ι Z)
    exact := exact_ofCocomplex Z
    mono := Injective.ι_mono Z }
set_option linter.uppercaseLean3 false in
#align category_theory.InjectiveResolution.of CategoryTheory.InjectiveResolution.of


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant363ad724b9add54bda1898a6a8bdce35b4a501800f391318e0d0fe3a0f447711.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cf6bd7ccde0865f7108ecfa0d1d99b8a01a9dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
