# homotopyInvHomId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4282e0b4ccea6fda2ce425112c2b29f2eae2ffbc5134bd0814b034019da22011",
  "kind": "def",
  "lexical_name": "homotopyInvHomId",
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
  "slug": "homotopyinvhomid--27b9d5dd48b1a061c249b29b",
  "source": {
    "blob": "9416211610574d325340696a1c2b6864a3a5a126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27b9d5dd48b1a061c249b29b2a065109f962eac134fccc8a75f89a5a73ad68e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4282e0b4ccea6fda2ce425112c2b29f2eae2ffbc5134bd0814b034019da22011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyInvHomId : Homotopy (inv f g ≫ hom f g) (𝟙 _) :=
  (Cochain.equivHomotopy _ _).symm ⟨-((snd _).comp ((fst (f ≫ g)).1.comp
    ((inl f).comp (inl _) (by decide)) (show 1 + (-2) = -1 by decide)) (zero_add (-1))), by
      rw [δ_neg, δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
        Int.negOnePow_neg, Int.negOnePow_one, Units.neg_smul, one_smul,
        δ_comp _ _ (show 1 + (-2) = -1 by decide) 2 (-1) 0 (by decide)
          (by decide) (by decide),
        δ_comp _ _ (show (-1) + (-1) = -2 by decide) 0 0 (-1) (by decide)
          (by decide) (by decide), Int.negOnePow_neg, Int.negOnePow_neg,
        Int.negOnePow_even 2 ⟨1, by decide⟩, Int.negOnePow_one, Units.neg_smul,
        one_smul, one_smul, δ_inl, δ_inl, δ_snd, Cocycle.δ_eq_zero, Cochain.zero_comp, add_zero,
        Cochain.neg_comp, neg_neg]
      ext n
      rw [ext_from_iff _ (n + 1) n rfl, ext_from_iff _ (n + 1) n rfl,
        ext_from_iff _ (n + 2) (n + 1) (by omega)]
      dsimp [hom, inv]
      simp [ext_to_iff _ n (n + 1) rfl, map, Cochain.comp_v _ _
          (add_neg_cancel 1) n (n + 1) n (by omega) (by omega),
        Cochain.comp_v _ _ (show 1 + -2 = -1 by decide) (n + 1) (n + 2) n
          (by omega) (by omega),
        Cochain.comp_v _ _ (show (-1) + -1 = -2 by decide) (n + 2) (n + 1) n
          (by omega) (by omega)]⟩

end MappingConeCompHomotopyEquiv

/-- Given two composable morphisms `f` and `g` in the category of cochain complexes,
this is the homotopy equivalence `mappingConeCompHomotopyEquiv f g`
between `mappingCone g` and the mapping cone of
the morphism `mappingCone f ⟶ mappingCone (f ≫ g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant44000b8f927448a0e234513285d1a327cc89d9d0495d7b18ebbe0012981594cb.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416211610574d325340696a1c2b6864a3a5a126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
