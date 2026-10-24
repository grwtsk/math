# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edf12a1b018eea24171a556a8a4f3953b6cb2184e8640293e031127b3e9fa9b4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d3b05781a2ae39923b4bf3d1",
  "source": {
    "blob": "e5af173b989f8103433f3771e32cd9646b9ea41e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3b05781a2ae39923b4bf3d1ac6068de3afb05781c1b17d15c1ba5088afe4b32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edf12a1b018eea24171a556a8a4f3953b6cb2184e8640293e031127b3e9fa9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 10) exponentialIdeal_of_preservesBinaryProducts
    [Limits.PreservesLimitsOfShape (Discrete Limits.WalkingPair) (reflector i)] :
    ExponentialIdeal i := by
  let ir := reflectorAdjunction i
  let L : C ⥤ D := reflector i
  let η : 𝟭 C ⟶ L ⋙ i := ir.unit
  let ε : i ⋙ L ⟶ 𝟭 D := ir.counit
  apply ExponentialIdeal.mk'
  intro B A
  let q : i.obj (L.obj (A ⟹ i.obj B)) ⟶ A ⟹ i.obj B := by
    apply CartesianClosed.curry (ir.homEquiv _ _ _)
    apply _ ≫ (ir.homEquiv _ _).symm ((exp.ev A).app (i.obj B))
    exact prodComparison L A _ ≫ (_ ◁ (ε.app _)) ≫ inv (prodComparison _ _ _)
  have : η.app (A ⟹ i.obj B) ≫ q = 𝟙 (A ⟹ i.obj B) := by
    dsimp
    rw [← curry_natural_left, curry_eq_iff, uncurry_id_eq_ev, ← ir.homEquiv_naturality_left,
      ir.homEquiv_apply_eq, assoc, assoc, prodComparison_natural_whiskerLeft_assoc,
      ← MonoidalCategory.whiskerLeft_comp_assoc,
      ir.left_triangle_components, MonoidalCategory.whiskerLeft_id, id_comp]
    apply IsIso.hom_inv_id_assoc
  haveI : IsSplitMono (η.app (A ⟹ i.obj B)) := IsSplitMono.mk' ⟨_, this⟩
  apply mem_essImage_of_unit_isSplitMono

variable [ExponentialIdeal i]

/-- If `i` witnesses that `D` is a reflective subcategory and an exponential ideal, then `D` is
itself cartesian closed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variant2fe67576a5333c5296dfa6e6164813f7299a5985fd4d1a1e0a2dfbc783b5be99.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5af173b989f8103433f3771e32cd9646b9ea41e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
