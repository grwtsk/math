# IsConservativeFamilyOfPoints.over

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f51d0aa-ba96-73d5-9a66-264030267cb1",
  "kind": "lemma",
  "lexical_name": "IsConservativeFamilyOfPoints.over",
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
  "slug": "isconservativefamilyofpoints-over--ac6d4e21162a1a790808729a",
  "source": {
    "blob": "f9cc7c5845ea68c9b186e291f01671db72ecaf2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc291ae1cc52e90484164e21168b0dc8c5f961f70c3f75a5ae34cdcffbf3fa54d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac6d4e21162a1a790808729aa09b491ff749ec8feaae2cfba2b7448ec93428e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc291ae1cc52e90484164e21168b0dc8c5f961f70c3f75a5ae34cdcffbf3fa54d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f51d0aa-ba96-73d5-9a66-264030267cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsConservativeFamilyOfPoints.over
    {P : ObjectProperty (Point.{w} J)} [ObjectProperty.Small.{w} P]
    [J.WEqualsLocallyBijective (Type w)] [HasSheafify J (Type w)]
    (hP : P.IsConservativeFamilyOfPoints) (X : C) [HasSheafify (J.over X) (Type w)] :
    IsConservativeFamilyOfPoints
      (ObjectProperty.ofObj (fun (ψ : Σ (Φ : P.FullSubcategory),
        Φ.obj.fiber.obj X) ↦ ψ.1.obj.over ψ.2)) :=
  mk' (fun Y S hS ↦ by
    obtain ⟨Y, f, rfl⟩ := Over.mk_surjective Y
    obtain ⟨S, rfl⟩ := (Sieve.overEquiv _).symm.surjective S
    rw [mem_over_iff, OrderIso.apply_symm_apply]
    obtain ⟨ι, Z, g, rfl⟩ := S.exists_eq_ofArrows
    rw [hP.jointly_reflect_ofArrows_mem_of_small]
    intro Φ y
    obtain ⟨T, a, ⟨_, b, _, ⟨i⟩, hb⟩, ⟨z, hz₁⟩, hz₂⟩ := hS (⟨_, ⟨⟨Φ, Φ.obj.fiber.map f y⟩⟩⟩)
      (⟨by exact y, by rw [FunctorToTypes.mem_fromOverSubfunctor_iff]; rfl⟩)
    rw [Subtype.ext_iff] at hz₂
    exact ⟨i, Φ.obj.fiber.map b z,
      (ConcreteCategory.congr_hom (Φ.obj.fiber.map_comp b (g i)) _).symm.trans (by rwa [hb])⟩)

end ObjectProperty

namespace GrothendieckTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc291ae1cc52e90484164e21168b0dc8c5f961f70c3f75a5ae34cdcffbf3fa54d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantc291ae1cc52e90484164e21168b0dc8c5f961f70c3f75a5ae34cdcffbf3fa54d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9cc7c5845ea68c9b186e291f01671db72ecaf2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
