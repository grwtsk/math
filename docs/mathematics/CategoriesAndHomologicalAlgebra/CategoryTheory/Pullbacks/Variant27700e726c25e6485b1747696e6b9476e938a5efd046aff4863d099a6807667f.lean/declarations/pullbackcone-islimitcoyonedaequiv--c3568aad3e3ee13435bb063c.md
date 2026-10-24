# PullbackCone.isLimitCoyonedaEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53fb1ce4c5f9ae1487688421426dfb9088a39934e94c006bfd51748aa6ce36d3",
  "kind": "def",
  "lexical_name": "PullbackCone.isLimitCoyonedaEquiv",
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
  "slug": "pullbackcone-islimitcoyonedaequiv--c3568aad3e3ee13435bb063c",
  "source": {
    "blob": "6185621e2c2f4631fcc7f665ad141b65e41aa094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3568aad3e3ee13435bb063c61b3d3e096e832dd1b21e651f9a4e4c6e166d327",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53fb1ce4c5f9ae1487688421426dfb9088a39934e94c006bfd51748aa6ce36d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PullbackCone.isLimitCoyonedaEquiv (c : PullbackCone f g) :
    IsLimit c ≃ ∀ (X : Cᵒᵖ), IsLimit (c.map (coyoneda.obj X)) :=
  (Cone.isLimitCoyonedaEquiv c).trans
    (Equiv.piCongrRight (fun X ↦ c.isLimitMapConeEquiv (coyoneda.obj X)))

end Pullback

section Pushout

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]

namespace PushoutCocone

variable {W X Y : C} {f : W ⟶ X} {g : W ⟶ Y} (c : PushoutCocone f g) (G : C ⥤ D)

/-- The image of a pullback cone by a functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant27700e726c25e6485b1747696e6b9476e938a5efd046aff4863d099a6807667f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6185621e2c2f4631fcc7f665ad141b65e41aa094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
