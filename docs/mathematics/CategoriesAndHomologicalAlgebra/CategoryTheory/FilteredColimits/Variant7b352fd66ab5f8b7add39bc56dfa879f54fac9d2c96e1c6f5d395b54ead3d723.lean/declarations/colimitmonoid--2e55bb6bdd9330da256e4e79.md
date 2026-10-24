# colimitMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14ca2b1265e93a3040d857e48710e78543de6ed584b0a4a557e2ec54c34ff40d",
  "kind": "instance",
  "lexical_name": "colimitMonoid",
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
  "slug": "colimitmonoid--2e55bb6bdd9330da256e4e79",
  "source": {
    "blob": "1e3526dbce57d167b44a1ad046628b5289f3b08c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e55bb6bdd9330da256e4e795cf154f538a920a4e2f1973d4db5e5c3a826e3c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14ca2b1265e93a3040d857e48710e78543de6ed584b0a4a557e2ec54c34ff40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance colimitMonoid : Monoid (M.{v, u} F) :=
  { colimitMulOneClass F with
    mul_assoc := fun x y z => by
      obtain ⟨j₁, x₁, rfl⟩ := x.mk_surjective
      obtain ⟨j₂, y₂, rfl⟩ := y.mk_surjective
      obtain ⟨j₃, z₃, rfl⟩ := z.mk_surjective
      obtain ⟨j, f₁, f₂, f₃, x, y, z, h₁, h₂, h₃⟩ :
          ∃ (j : J) (f₁ : j₁ ⟶ j) (f₂ : j₂ ⟶ j) (f₃ : j₃ ⟶ j) (x y z : F.obj j),
          F.map f₁ x₁ = x ∧ F.map f₂ y₂ = y ∧ F.map f₃ z₃ = z :=
        ⟨IsFiltered.max₃ j₁ j₂ j₃, IsFiltered.firstToMax₃ _ _ _,
          IsFiltered.secondToMax₃ _ _ _, IsFiltered.thirdToMax₃ _ _ _,
          _, _, _, rfl, rfl, rfl⟩
      simp only [← M.map_mk F f₁, ← M.map_mk F f₂, ← M.map_mk F f₃, h₁, h₂, h₃,
        colimit_mul_mk_eq', mul_assoc] }

/-- The bundled monoid giving the filtered colimit of a diagram. -/
@[to_additive
  /-- The bundled additive monoid giving the filtered colimit of a diagram. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3526dbce57d167b44a1ad046628b5289f3b08c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
