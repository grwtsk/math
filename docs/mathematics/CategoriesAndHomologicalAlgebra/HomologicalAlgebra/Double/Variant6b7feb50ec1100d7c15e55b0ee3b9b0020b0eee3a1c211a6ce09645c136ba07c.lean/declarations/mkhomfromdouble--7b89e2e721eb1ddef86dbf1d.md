# mkHomFromDouble

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcdcd7413f716f2f1c4b7b4f9f6c04e33a7505f6731092a160d80564921cc21e",
  "kind": "def",
  "lexical_name": "mkHomFromDouble",
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
  "slug": "mkhomfromdouble--7b89e2e721eb1ddef86dbf1d",
  "source": {
    "blob": "82a2a1e0d9f59dd7fa3908d288c2135404438d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b89e2e721eb1ddef86dbf1d4e305e333f63be2df7dba78c81fe9c0de0e501f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcdcd7413f716f2f1c4b7b4f9f6c04e33a7505f6731092a160d80564921cc21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkHomFromDouble : double f hi₀₁ ⟶ K where
  f k :=
    if hk₀ : k = i₀ then
      eqToHom (by rw [hk₀]) ≫ (doubleXIso₀ f hi₀₁).hom ≫ φ₀ ≫ eqToHom (by rw [hk₀])
    else if hk₁ : k = i₁ then
      eqToHom (by rw [hk₁]) ≫ (doubleXIso₁ f hi₀₁ h).hom ≫ φ₁ ≫ eqToHom (by rw [hk₁])
    else 0
  comm' k₀ k₁ hk := by
    dsimp
    by_cases h₀ : k₀ = i₀
    · subst h₀
      rw [dif_pos rfl]
      obtain rfl := c.next_eq hk hi₀₁
      simp [dif_neg h.symm, dif_pos rfl, double_d f hi₀₁ h, comm]
    · rw [dif_neg h₀]
      by_cases h₁ : k₀ = i₁
      · subst h₁
        dsimp
        rw [if_pos rfl, comp_id, id_comp, assoc, hφ k₁ hk, comp_zero,
          double_d_eq_zero₀ _ _ _ _ h.symm, zero_comp]
      · apply (isZero_double_X f hi₀₁ k₀ h₀ h₁).eq_of_src

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant6b7feb50ec1100d7c15e55b0ee3b9b0020b0eee3a1c211a6ce09645c136ba07c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a2a1e0d9f59dd7fa3908d288c2135404438d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
