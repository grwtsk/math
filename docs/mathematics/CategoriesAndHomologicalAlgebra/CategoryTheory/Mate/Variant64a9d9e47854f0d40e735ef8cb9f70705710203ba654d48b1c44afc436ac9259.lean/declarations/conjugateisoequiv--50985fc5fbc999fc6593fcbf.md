# conjugateIsoEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22346ecd9898c5a8b230751c60fc16bf5cc757ad25017b0b2f33e5b58c739264",
  "kind": "def",
  "lexical_name": "conjugateIsoEquiv",
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
  "slug": "conjugateisoequiv--50985fc5fbc999fc6593fcbf",
  "source": {
    "blob": "32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 609,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50985fc5fbc999fc6593fcbfe4a9ffa2c41c922301b46de0fa337d17e7a6052e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22346ecd9898c5a8b230751c60fc16bf5cc757ad25017b0b2f33e5b58c739264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def conjugateIsoEquiv : (l₂ ≅ l₁) ≃ (r₁ ≅ r₂) where
  toFun α :=
    { hom := conjugateEquiv adj₁ adj₂ α.hom
      inv := conjugateEquiv adj₂ adj₁ α.inv
      hom_inv_id := by
        rw [conjugateEquiv_comp, Iso.inv_hom_id, conjugateEquiv_id]
      inv_hom_id := by
        rw [conjugateEquiv_comp, Iso.hom_inv_id, conjugateEquiv_id] }
  invFun β :=
    { hom := (conjugateEquiv adj₁ adj₂).symm β.hom
      inv := (conjugateEquiv adj₂ adj₁).symm β.inv
      hom_inv_id := by
        rw [conjugateEquiv_symm_comp, Iso.inv_hom_id, conjugateEquiv_symm_id]
      inv_hom_id := by
        rw [conjugateEquiv_symm_comp, Iso.hom_inv_id, conjugateEquiv_symm_id] }
  left_inv := by
    intro α
    simp only [Equiv.symm_apply_apply]
  right_inv := by
    intro α
    simp only [Equiv.apply_symm_apply]

end ConjugateIsomorphism

section IteratedMateEquiv
variable {a b c d : B}
variable {f₁ : a ⟶ c} {u₁ : c ⟶ a} {f₂ : b ⟶ d} {u₂ : d ⟶ b}
variable {l₁ : a ⟶ b} {r₁ : b ⟶ a} {l₂ : c ⟶ d} {r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂) (adj₃ : f₁ ⊣ u₁) (adj₄ : f₂ ⊣ u₂)

/-- When all four morphisms in a square are left adjoints, the mates operation can be iterated:
```
         l₁                  r₁                  r₁
      a --→ b             a ←-- b             a ←-- b
   f₁ ↓  ↗  ↓  f₂      f₁ ↓  ↘  ↓ f₂       u₁ ↑  ↙  ↑ u₂
      c --→ d             c ←-- d             c ←-- d
         l₂                  r₂                  r₂
```
In this case the iterated mate equals the conjugate of the original 2-morphism and is thus an
isomorphism if and only if the original 2-morphism is. This explains why some Beck-Chevalley
2-morphisms are isomorphisms.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant64a9d9e47854f0d40e735ef8cb9f70705710203ba654d48b1c44afc436ac9259.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32177d8f4abf71f94ccb8a9b940fbaaac4b00fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
