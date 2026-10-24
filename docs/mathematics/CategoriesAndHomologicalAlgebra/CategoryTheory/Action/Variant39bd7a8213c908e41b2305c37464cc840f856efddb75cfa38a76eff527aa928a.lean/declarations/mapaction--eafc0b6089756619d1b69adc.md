# mapAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce1b8f0782d80f7295591e39a692c5798f282fd72dd4d47bdf0cdd2254bd0c46",
  "kind": "def",
  "lexical_name": "mapAction",
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
  "slug": "mapaction--eafc0b6089756619d1b69adc",
  "source": {
    "blob": "74139c8e005ae9b4d41e0f41116bfe7fe3e08fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 952,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eafc0b6089756619d1b69adcfe6f0bf064545be32563708952b60e3cc49110d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce1b8f0782d80f7295591e39a692c5798f282fd72dd4d47bdf0cdd2254bd0c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 952–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAction (F : V ⥤ W) (G : MonCat.{u}) : Action V G ⥤ Action W G where
  obj M :=
    { V := F.obj M.V
      ρ :=
        { toFun := fun g => F.map (M.ρ g)
          map_one' := by simp only [End.one_def, Action.ρ_one, F.map_id, MonCat.one_of]
          map_mul' := fun g h => by
            dsimp
            rw [map_mul, MonCat.mul_of, End.mul_def, End.mul_def, F.map_comp] } }
  map f :=
    { hom := F.map f.hom
      comm := fun g => by dsimp; rw [← F.map_comp, f.comm, F.map_comp] }
  map_id M := by ext; simp only [Action.id_hom, F.map_id]
  map_comp f g := by ext; simp only [Action.comp_hom, F.map_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Action CategoryTheory.Functor.mapAction

variable (F : V ⥤ W) (G : MonCat.{u}) [Preadditive V] [Preadditive W]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variant39bd7a8213c908e41b2305c37464cc840f856efddb75cfa38a76eff527aa928a.lean#L952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74139c8e005ae9b4d41e0f41116bfe7fe3e08fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
