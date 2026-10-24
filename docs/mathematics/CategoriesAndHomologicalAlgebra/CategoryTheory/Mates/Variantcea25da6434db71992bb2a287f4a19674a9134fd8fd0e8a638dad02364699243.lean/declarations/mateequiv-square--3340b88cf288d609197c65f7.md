# mateEquiv_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad31967-cec3-3cb8-8178-c8c99a178e82",
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
  "slug": "mateequiv-square--3340b88cf288d609197c65f7",
  "source": {
    "blob": "da90d0d1f1072d57bfe04696436bedad5b731736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3340b88cf288d609197c65f729e95a5ece9e155034bf3df6a87433cbc2fe7258",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad31967-cec3-3cb8-8178-c8c99a178e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mateEquiv_square (α : TwoSquare G₁ L₁ L₃ H₁) (β : TwoSquare H₁ L₂ L₄ K₁)
    (γ : TwoSquare G₂ L₃ L₅ H₂) (δ : TwoSquare H₂ L₄ L₆ K₂) :
    (mateEquiv (adj₁.comp adj₂) (adj₅.comp adj₆)) ((α ≫ᵥ β) ≫ₕ (γ ≫ᵥ δ)) =
      ((mateEquiv adj₂ adj₄ β) ≫ₕ (mateEquiv adj₁ adj₃ α))
         ≫ᵥ ((mateEquiv adj₄ adj₆ δ) ≫ₕ (mateEquiv adj₃ adj₅ γ)) := by
  have vcomp :=
    mateEquiv_vcomp (adj₁.comp adj₂) (adj₃.comp adj₄) (adj₅.comp adj₆) (α ≫ᵥ β) (γ ≫ᵥ δ)
  simp only [mateEquiv_hcomp] at vcomp
  assumption

end mateEquivSquareComp

section conjugateEquiv

variable {C : Type u₁} {D : Type u₂}
variable [Category.{v₁} C] [Category.{v₂} D]
variable {L₁ L₂ : C ⥤ D} {R₁ R₂ : D ⥤ C}
variable (adj₁ : L₁ ⊣ R₁) (adj₂ : L₂ ⊣ R₂)

/-- Given two adjunctions `L₁ ⊣ R₁` and `L₂ ⊣ R₂` both between categories `C`, `D`, there is a
bijection between natural transformations `L₂ ⟶ L₁` and natural transformations `R₁ ⟶ R₂`. This is
defined as a special case of `mateEquiv`, where the two "vertical" functors are identity, modulo
composition with the unitors. Corresponding natural transformations are called `conjugateEquiv`.
TODO: Generalise to when the two vertical functors are equivalences rather than being exactly `𝟭`.

Furthermore, this bijection preserves (and reflects) isomorphisms, i.e. a transformation is an iso
iff its image under the bijection is an iso, see e.g. `CategoryTheory.conjugateIsoEquiv`.
This is in contrast to the general case `mateEquiv` which does not in general have this property.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da90d0d1f1072d57bfe04696436bedad5b731736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
