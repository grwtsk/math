# shiftIso_hom_app_comp_shiftMap_of_add_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad067af-b046-ad2b-7955-e3c59cfa47cf",
  "kind": "lemma",
  "lexical_name": "shiftIso_hom_app_comp_shiftMap_of_add_eq_zero",
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
  "slug": "shiftiso-hom-app-comp-shiftmap-of-add-eq-zero--2cffd1117bb1db81b81d8fd8",
  "source": {
    "blob": "7fb743c746cd03e0eff18032d5553e161ec20f81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantb834c0a89e4febc85d21ecf2933aa30b98528d5adf0243898e7ed8469f9ecceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cffd1117bb1db81b81d8fd8db875508cbb50d6f368cacb4092d4da5b4875725",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantb834c0a89e4febc85d21ecf2933aa30b98528d5adf0243898e7ed8469f9ecceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad067af-b046-ad2b-7955-e3c59cfa47cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftIso_hom_app_comp_shiftMap_of_add_eq_zero [F.ShiftSequence G]
    {X Y : C} {m : G} (f : X ⟶ Y⟦m⟧)
    (n : G) (hnm : n + m = 0) (a a' : G) (ha' : m + a = a') :
    (F.shiftIso n a' a (by rw [← ha', ← add_assoc, hnm, zero_add])).hom.app X ≫
      F.shiftMap f a a' ha' =
    (F.shift a').map (f⟦n⟧' ≫ (shiftFunctorCompIsoId C m n
      (by rw [← add_left_inj m, add_assoc, hnm, zero_add, add_zero])).hom.app Y) := by
  have hnm' : m + n = 0 := by
    rw [← add_left_inj m, add_assoc, hnm, zero_add, add_zero]
  simp [F.shiftIso_hom_app_comp_shiftMap f n 0 hnm' a' a, shiftIso_zero_hom_app,
    shiftFunctorCompIsoId]

section

variable [HasZeroMorphisms C] [HasZeroMorphisms A] [F.PreservesZeroMorphisms]
  [∀ (n : M), (shiftFunctor C n).PreservesZeroMorphisms]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantb834c0a89e4febc85d21ecf2933aa30b98528d5adf0243898e7ed8469f9ecceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantb834c0a89e4febc85d21ecf2933aa30b98528d5adf0243898e7ed8469f9ecceb.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb743c746cd03e0eff18032d5553e161ec20f81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
