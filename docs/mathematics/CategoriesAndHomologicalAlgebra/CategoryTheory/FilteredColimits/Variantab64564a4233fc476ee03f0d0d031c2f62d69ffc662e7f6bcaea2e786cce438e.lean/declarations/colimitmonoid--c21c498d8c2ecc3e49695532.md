# colimitMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:771497fccf262b0528d7f85f462280a8c94ff7509088521ab9eafcda5a717793",
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
  "slug": "colimitmonoid--c21c498d8c2ecc3e49695532",
  "source": {
    "blob": "635113a6a0faebde1452434e593875955582c19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c21c498d8c2ecc3e4969553263d30c55b8f53d3e05dfe33e37c6b9d1b9d2cfda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:771497fccf262b0528d7f85f462280a8c94ff7509088521ab9eafcda5a717793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance colimitMonoid : Monoid (M.{v, u} F) :=
  { colimitMulOneClass F with
    mul_assoc := fun x y z => by
      refine Quot.induction_on₃ x y z ?_
      clear x y z
      intro x y z
      obtain ⟨j₁, x⟩ := x
      obtain ⟨j₂, y⟩ := y
      obtain ⟨j₃, z⟩ := z
      change M.mk F _ * M.mk F _ * M.mk F _ = M.mk F _ * M.mk F _
      dsimp
      rw [colimit_mul_mk_eq F ⟨j₁, x⟩ ⟨j₂, y⟩ (IsFiltered.max j₁ (IsFiltered.max j₂ j₃))
          (IsFiltered.leftToMax j₁ (IsFiltered.max j₂ j₃))
          (IsFiltered.leftToMax j₂ j₃ ≫ IsFiltered.rightToMax _ _),
        colimit_mul_mk_eq F ⟨(IsFiltered.max j₁ (IsFiltered.max j₂ j₃)), _⟩ ⟨j₃, z⟩
          (IsFiltered.max j₁ (IsFiltered.max j₂ j₃)) (𝟙 _)
          (IsFiltered.rightToMax j₂ j₃ ≫ IsFiltered.rightToMax _ _),
        colimit_mul_mk_eq.{v, u} F ⟨j₁, x⟩ ⟨IsFiltered.max j₂ j₃, _⟩ _
          (IsFiltered.leftToMax _ _) (IsFiltered.rightToMax _ _)]
      congr 2
      dsimp only
      rw [F.map_id, show ∀ x, (𝟙 (F.obj (IsFiltered.max j₁ (IsFiltered.max j₂ j₃)))) x = x
        from fun _ => rfl, mul_assoc, MonoidHom.map_mul, F.map_comp, F.map_comp]
      rfl }

/-- The bundled monoid giving the filtered colimit of a diagram. -/
@[to_additive
  "The bundled additive monoid giving the filtered colimit of a diagram."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635113a6a0faebde1452434e593875955582c19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
