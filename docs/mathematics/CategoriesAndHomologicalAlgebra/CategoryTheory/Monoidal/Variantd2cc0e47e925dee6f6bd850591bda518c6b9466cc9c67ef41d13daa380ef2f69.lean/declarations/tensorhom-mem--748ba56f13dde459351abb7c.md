# tensorHom_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75c2b79ba1d88cc5315367025a22606620492dbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d8cab59-4739-6bca-af3a-d631a6f11b5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1ae8d0b-0aad-0add-0c86-be7ccffe7367",
  "kind": "lemma",
  "lexical_name": "tensorHom_mem",
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
  "slug": "tensorhom-mem--748ba56f13dde459351abb7c",
  "source": {
    "blob": "75c2b79ba1d88cc5315367025a22606620492dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748ba56f13dde459351abb7ca3cc78d73d77170d37eb797fdfbf9cc4d24d34ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1ae8d0b-0aad-0add-0c86-be7ccffe7367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorHom_mem {X₁ X₂ : C} (f : X₁ ⟶ X₂) {Y₁ Y₂ : C} (g : Y₁ ⟶ Y₂)
    (hf : W f) (hg : W g) : W (f ⊗ g) := by
  rw [tensorHom_def]
  exact comp_mem _ _ _ (whiskerRight_mem _ _ hf _) (whiskerLeft_mem _ _ _ hg)

end MorphismProperty

/-- Given a monoidal category `C`, a localization functor `L : C ⥤ D` with respect
to `W : MorphismProperty C` which satisfies `W.IsMonoidal`, and a choice
of object `unit : D` with an isomorphism `L.obj (𝟙_ C) ≅ unit`, this is a
type synonym for `D` on which we define the localized monoidal category structure. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantd2cc0e47e925dee6f6bd850591bda518c6b9466cc9c67ef41d13daa380ef2f69.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75c2b79ba1d88cc5315367025a22606620492dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
