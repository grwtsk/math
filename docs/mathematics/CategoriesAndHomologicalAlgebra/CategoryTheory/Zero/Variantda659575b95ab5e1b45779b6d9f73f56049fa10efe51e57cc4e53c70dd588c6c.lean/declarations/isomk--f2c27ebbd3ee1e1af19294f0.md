# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c126ce45a0b8c61e9b94561b65e7497748b5807ca0c5b046b5524fe5ca4eef15",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--f2c27ebbd3ee1e1af19294f0",
  "source": {
    "blob": "bb5750ea8477deeda472cfa6da00108dbd5219ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2c27ebbd3ee1e1af19294f0de79f2e04845994b1cab297353b37f4d6a3c74da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c126ce45a0b8c61e9b94561b65e7497748b5807ca0c5b046b5524fe5ca4eef15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk {S : C} {E F : PreZeroHypercover.{w} S}
    (s₀ : E.I₀ ≃ F.I₀) (h₀ : ∀ i, E.X i ≅ F.X (s₀ i))
    (w₀ : ∀ i, (h₀ i).hom ≫ F.f _ = E.f _ := by cat_disch) :
    E ≅ F where
  hom.s₀ := s₀
  hom.h₀ i := (h₀ i).hom
  inv.s₀ := s₀.symm
  inv.h₀ i := eqToHom (by simp) ≫ (h₀ _).inv
  inv.w₀ i := by
    obtain ⟨i, rfl⟩ := s₀.surjective i
    simp only [← cancel_epi (h₀ i).hom, w₀, Category.assoc, Equiv.symm_apply_apply,
      eqToHom_iso_hom_naturality_assoc, Iso.hom_inv_id_assoc]
    rw [← CategoryTheory.eqToHom_naturality _ (by simp)]
    simp
  hom_inv_id := Hom.ext' (by ext; simp) (fun i ↦ by simp)
  inv_hom_id := Hom.ext' (by ext; simp) (fun i ↦ by simp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantda659575b95ab5e1b45779b6d9f73f56049fa10efe51e57cc4e53c70dd588c6c.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5750ea8477deeda472cfa6da00108dbd5219ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
