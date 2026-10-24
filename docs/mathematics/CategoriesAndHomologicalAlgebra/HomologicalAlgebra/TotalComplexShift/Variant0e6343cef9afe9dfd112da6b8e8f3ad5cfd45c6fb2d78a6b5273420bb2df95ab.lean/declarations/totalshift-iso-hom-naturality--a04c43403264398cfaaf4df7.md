# totalShift₂Iso_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f7542f-2ea9-957b-d92f-3b43d7cf2fc9",
  "kind": "lemma",
  "lexical_name": "totalShift₂Iso_hom_naturality",
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
  "slug": "totalshift-iso-hom-naturality--a04c43403264398cfaaf4df7",
  "source": {
    "blob": "abc0cb5af6602eac51cb55d552ec68ee39cf7c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a04c43403264398cfaaf4df70cf01dc01d81dfa506d809dd6aa4ab998e25c75c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f7542f-2ea9-957b-d92f-3b43d7cf2fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totalShift₂Iso_hom_naturality [L.HasTotal (up ℤ)] :
    total.map ((shiftFunctor₂ C y).map f) (up ℤ) ≫ (L.totalShift₂Iso y).hom =
      (K.totalShift₂Iso y).hom ≫ (total.map f (up ℤ))⟦y⟧' := by
  ext n i₁ i₂ h
  dsimp at h ⊢
  rw [ιTotal_map_assoc, L.ι_totalShift₂Iso_hom_f y i₁ i₂ n h _ rfl _ rfl,
    K.ι_totalShift₂Iso_hom_f_assoc y i₁ i₂ n h _ rfl _ rfl]
  dsimp
  rw [id_comp, id_comp, comp_id, comp_id, Linear.comp_units_smul,
    Linear.units_smul_comp, ιTotal_map]

variable (C) in
/-- The shift functors `shiftFunctor₁ C x` and `shiftFunctor₂ C y` on bicomplexes
with respect to both variables commute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc0cb5af6602eac51cb55d552ec68ee39cf7c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
