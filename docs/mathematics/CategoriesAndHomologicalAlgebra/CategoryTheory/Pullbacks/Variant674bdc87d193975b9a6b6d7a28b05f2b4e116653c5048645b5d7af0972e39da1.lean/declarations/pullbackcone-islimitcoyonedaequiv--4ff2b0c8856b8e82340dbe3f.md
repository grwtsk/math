# PullbackCone.isLimitCoyonedaEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed395ea329d6a8c07f10efcbe4ce94a4546766c642ff7461dfd35c0088a6e0eb",
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
  "slug": "pullbackcone-islimitcoyonedaequiv--4ff2b0c8856b8e82340dbe3f",
  "source": {
    "blob": "2b015f722deddcfdc4e0d9a256e47e4c7454ed2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff2b0c8856b8e82340dbe3f104b3dd67da4ff10c4b12be6924eecce50cbffd0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed395ea329d6a8c07f10efcbe4ce94a4546766c642ff7461dfd35c0088a6e0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b015f722deddcfdc4e0d9a256e47e4c7454ed2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
