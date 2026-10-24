# colimitMulAux_eq_of_rel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e276fbd6-b5d3-81d7-29d0-bdf05191d8df",
  "kind": "theorem",
  "lexical_name": "colimitMulAux_eq_of_rel_right",
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
  "slug": "colimitmulaux-eq-of-rel-right--9e64a31cef4ca95102824597",
  "source": {
    "blob": "7d15a15af9228eb8a9c7dd58b9594fc194bbe8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e64a31cef4ca95102824597d1a4a6364ee93df283fac53e404f9999ab099c86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e276fbd6-b5d3-81d7-29d0-bdf05191d8df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitMulAux_eq_of_rel_right {x y y' : Σ j, F.obj j}
    (hyy' : Types.FilteredColimit.Rel (F ⋙ forget MonCat) y y') :
    colimitMulAux.{v, u} F x y = colimitMulAux.{v, u} F x y' := by
  obtain ⟨j₁, y⟩ := y; obtain ⟨j₂, x⟩ := x; obtain ⟨j₃, y'⟩ := y'
  obtain ⟨l, f, g, hfg⟩ := hyy'
  simp only [Functor.comp_obj, Functor.comp_map, ConcreteCategory.hom_ofHom,
    TypeCat.Fun.coe_mk] at hfg
  obtain ⟨s, α, β, γ, h₁, h₂, h₃⟩ :=
    IsFiltered.tulip (IsFiltered.rightToMax j₂ j₁) (IsFiltered.leftToMax j₂ j₁)
      (IsFiltered.leftToMax j₂ j₃) (IsFiltered.rightToMax j₂ j₃) f g
  apply M.mk_eq
  use s, α, γ
  simp_rw [map_mul, ← comp_apply, ← F.map_comp, h₁, h₂, h₃, F.map_comp,
    comp_apply, hfg]

/-- Multiplication in the colimit. See also `colimitMulAux`. -/
@[to_additive /-- Addition in the colimit. See also `colimitAddAux`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d15a15af9228eb8a9c7dd58b9594fc194bbe8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
