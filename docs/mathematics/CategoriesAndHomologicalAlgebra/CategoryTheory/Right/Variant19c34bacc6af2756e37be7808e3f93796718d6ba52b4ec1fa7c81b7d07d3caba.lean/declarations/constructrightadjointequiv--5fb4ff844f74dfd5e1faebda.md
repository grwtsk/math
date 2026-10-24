# constructRightAdjointEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a226c1a262d8bbc04d608f6153fab2703f19baff4885ec5ed90facf99e9d420c",
  "kind": "def",
  "lexical_name": "constructRightAdjointEquiv",
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
  "slug": "constructrightadjointequiv--5fb4ff844f74dfd5e1faebda",
  "source": {
    "blob": "9d014feebe1015ce4430db93a6bb7fb145381013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fb4ff844f74dfd5e1faebdaf9d88d4eec196291fd5e833d8dc536830367e4cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a226c1a262d8bbc04d608f6153fab2703f19baff4885ec5ed90facf99e9d420c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constructRightAdjointEquiv (h : ∀ X : B, RegularMono (adj₁.unit.app X)) (Y : C)
    (X : B) : (Y ⟶ constructRightAdjointObj _ _ adj₁ adj₂ X) ≃ (L.obj Y ⟶ X) :=
  calc
    (Y ⟶ constructRightAdjointObj _ _ adj₁ adj₂ X) ≃
        { f : Y ⟶ U'.obj (F.obj X) //
          f ≫ U'.map (F.map (adj₁.unit.app X)) = f ≫ (otherMap _ _ adj₁ adj₂ X) } :=
      Fork.IsLimit.homIso (limit.isLimit _) _
    _ ≃ { g : F.obj (L.obj Y) ⟶ F.obj X // F.map (adj₁.unit.app _≫ U.map g) =
        g ≫ F.map (adj₁.unit.app _) } := by
      apply (adj₂.homEquiv _ _).symm.subtypeEquiv _
      intro f
      rw [← (adj₂.homEquiv _ _).injective.eq_iff, eq_comm, otherMap,
        ← adj₂.homEquiv_naturality_right_symm, adj₂.homEquiv_unit, ← adj₂.unit_naturality_assoc,
        adj₂.homEquiv_counit]
      simp
    _ ≃ { z : L.obj Y ⟶ U.obj (F.obj X) //
        z ≫ U.map (F.map (adj₁.unit.app X)) = z ≫ adj₁.unit.app (U.obj (F.obj X)) } := by
      apply (adj₁.homEquiv _ _).subtypeEquiv
      intro g
      rw [← (adj₁.homEquiv _ _).injective.eq_iff, adj₁.homEquiv_unit,
        adj₁.homEquiv_unit, adj₁.homEquiv_unit, eq_comm]
      simp
    _ ≃ (L.obj Y ⟶ X) := (Fork.IsLimit.homIso (unitEqualises adj₁ h X) _).symm

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Construct the right adjoint to `L`, with object map `constructRightAdjointObj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d014feebe1015ce4430db93a6bb7fb145381013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
