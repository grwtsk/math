# homEquiv₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe789674c8f073ac539ca53ff1fffae87f86aaa5c0e5cc3193588d5babdfe09f",
  "kind": "def",
  "lexical_name": "homEquiv₁",
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
  "slug": "homequiv--774462fb0575af11c1a1cfe9",
  "source": {
    "blob": "eccb12c8b39c52d8af43220632ae6c439ceff644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:774462fb0575af11c1a1cfe9c040c66c9d09e1e715227b129cc2f212b979f4ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe789674c8f073ac539ca53ff1fffae87f86aaa5c0e5cc3193588d5babdfe09f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homEquiv₁ {g : b ⟶ d} {h : c ⟶ d} : (g ⟶ l ≫ h) ≃ (r ≫ g ⟶ h) where
  toFun γ := r ◁ γ ≫ (α_ _ _ _).inv ≫ adj.counit ▷ h ≫ (λ_ _).hom
  invFun β := (λ_ _).inv ≫ adj.unit ▷ _ ≫ (α_ _ _ _).hom ≫ l ◁ β
  left_inv γ :=
    calc
      _ = 𝟙 _ ⊗≫ (adj.unit ▷ g ≫ (l ≫ r) ◁ γ) ⊗≫ l ◁ adj.counit ▷ h ⊗≫ 𝟙 _ := by
        bicategory
      _ = γ ⊗≫ leftZigzag adj.unit adj.counit ▷ h ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]
        bicategory
      _ = γ := by
        rw [adj.left_triangle]
        bicategory
  right_inv β := by
    calc
      _ = 𝟙 _ ⊗≫ r ◁ adj.unit ▷ g ⊗≫ ((r ≫ l) ◁ β ≫ adj.counit ▷ h) ⊗≫ 𝟙 _ := by
        bicategory
      _ = 𝟙 _ ⊗≫ rightZigzag adj.unit adj.counit ▷ g ⊗≫ β := by
        rw [whisker_exchange]
        bicategory
      _ = β := by
        rw [adj.right_triangle]
        bicategory

/-- The bijection `(g ≫ l ⟶ h) ≃ (g ⟶ h ≫ r)` induced by an adjunction
`l ⊣ r` in a bicategory. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccb12c8b39c52d8af43220632ae6c439ceff644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
