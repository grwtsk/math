# colimitMulAux_eq_of_rel_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df1c199-b2c9-ee6c-1d01-f0baa4eca0cc",
  "kind": "theorem",
  "lexical_name": "colimitMulAux_eq_of_rel_left",
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
  "slug": "colimitmulaux-eq-of-rel-left--fd694bd1b345687f82bfac4e",
  "source": {
    "blob": "a47a409c0f731058b79a778e4061a696dd9a7653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd694bd1b345687f82bfac4e4709df21d10c667be5aad9d820aac18fb6814a9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df1c199-b2c9-ee6c-1d01-f0baa4eca0cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitMulAux_eq_of_rel_left {x x' y : Σ j, F.obj j}
    (hxx' : Types.FilteredColimit.Rel.{v, u} (F ⋙ forget MonCat) x x') :
    colimitMulAux.{v, u} F x y = colimitMulAux.{v, u} F x' y := by
  cases' x with j₁ x; cases' y with j₂ y; cases' x' with j₃ x'
  obtain ⟨l, f, g, hfg⟩ := hxx'
  simp at hfg
  obtain ⟨s, α, β, γ, h₁, h₂, h₃⟩ :=
    IsFiltered.tulip (IsFiltered.leftToMax j₁ j₂) (IsFiltered.rightToMax j₁ j₂)
      (IsFiltered.rightToMax j₃ j₂) (IsFiltered.leftToMax j₃ j₂) f g
  apply M.mk_eq
  use s, α, γ
  dsimp
  simp_rw [MonoidHom.map_mul]
  -- Porting note : Lean cannot seem to use lemmas from concrete categories directly
  change (F.map _ ≫ F.map _) _ * (F.map _ ≫ F.map _) _ =
    (F.map _ ≫ F.map _) _ * (F.map _ ≫ F.map _) _
  simp_rw [← F.map_comp, h₁, h₂, h₃, F.map_comp]
  congr 1
  change F.map _ (F.map _ _) = F.map _ (F.map _ _)
  rw [hfg]
#align Mon.filtered_colimits.colimit_mul_aux_eq_of_rel_left MonCat.FilteredColimits.colimitMulAux_eq_of_rel_left
#align AddMon.filtered_colimits.colimit_add_aux_eq_of_rel_left AddMonCat.FilteredColimits.colimitAddAux_eq_of_rel_left

/-- Multiplication in the colimit is well-defined in the right argument. -/
@[to_additive "Addition in the colimit is well-defined in the right argument."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant5ed1c7bb5f7f0da6ee31d1e7a44e981fdfbb67616dcc3e6dd13521b64bd95fb7.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47a409c0f731058b79a778e4061a696dd9a7653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
