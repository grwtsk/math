# colimitMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e6b0846f0be4cbacf29e3ef1291ae8a73b199e36e7a42816e180e9cf6c34a1f",
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
  "slug": "colimitmonoid--68cd1d894e32ae92fb859d48",
  "source": {
    "blob": "63c6430bf75093a50d373e196580baa234842f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68cd1d894e32ae92fb859d489e4bf38b08f9a7791282e49ad4336ef72e713f5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e6b0846f0be4cbacf29e3ef1291ae8a73b199e36e7a42816e180e9cf6c34a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–216.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantce4026b3e273105d18a2d6dd5cd03fef319cdb58f6594e903c6aad7e1f27d1e0.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c6430bf75093a50d373e196580baa234842f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
