# mateEquiv_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ee74b7d-f4ae-6db5-43e2-326750991bb0",
  "kind": "theorem",
  "lexical_name": "mateEquiv_square",
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
  "slug": "mateequiv-square--56ed0d197836f92442ec1286",
  "source": {
    "blob": "eccb12c8b39c52d8af43220632ae6c439ceff644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56ed0d197836f92442ec128679ac3c9c98cdece522ac7b217f7703190b915b5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ee74b7d-f4ae-6db5-43e2-326750991bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_square
    (α : g₁ ≫ l₃ ⟶ l₁ ≫ h₁) (β : h₁ ≫ l₄ ⟶ l₂ ≫ k₁)
    (γ : g₂ ≫ l₅ ⟶ l₃ ≫ h₂) (δ : h₂ ≫ l₆ ⟶ l₄ ≫ k₂) :
    (mateEquiv (adj₁.comp adj₂) (adj₅.comp adj₆))
        (leftAdjointSquare.comp α β γ δ) =
      rightAdjointSquare.comp
        (mateEquiv adj₁ adj₃ α) (mateEquiv adj₂ adj₄ β)
        (mateEquiv adj₃ adj₅ γ) (mateEquiv adj₄ adj₆ δ) := by
  have vcomp :=
    mateEquiv_vcomp (adj₁.comp adj₂) (adj₃.comp adj₄) (adj₅.comp adj₆)
      (leftAdjointSquare.hcomp α β) (leftAdjointSquare.hcomp γ δ)
  have hcomp1 := mateEquiv_hcomp adj₁ adj₃ adj₂ adj₄ α β
  have hcomp2 := mateEquiv_hcomp adj₃ adj₅ adj₄ adj₆ γ δ
  rw [hcomp1, hcomp2] at vcomp
  exact vcomp

end mateEquivSquareComp

section conjugateEquiv

section

variable {c d : B}
variable {l₁ l₂ : c ⟶ d} {r₁ r₂ : d ⟶ c}
variable (adj₁ : l₁ ⊣ r₁) (adj₂ : l₂ ⊣ r₂)

/-- Given two adjunctions `l₁ ⊣ r₁` and `l₂ ⊣ r₂` both between objects `c`, `d`, there is a
bijection between 2-morphisms `l₂ ⟶ l₁` and 2-morphisms `r₁ ⟶ r₂`. This is
defined as a special case of `mateEquiv`, where the two "vertical" 1-morphisms are identities.
This bijection is `conjugateEquiv`; the image of a 2-morphism under it is called its conjugate.

Furthermore, this bijection preserves (and reflects) isomorphisms, i.e. a 2-morphism is an iso
iff its image under the bijection is an iso.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccb12c8b39c52d8af43220632ae6c439ceff644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
