# coneOfPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c45a41ea9a15978c78445e8c3e71ed87a6673eb1df26ad25db76d29df9276ead",
  "kind": "def",
  "lexical_name": "coneOfPreserves",
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
  "slug": "coneofpreserves--b3ec97b1eadba3f297e0d02b",
  "source": {
    "blob": "4825d36eb369880a55e2026744944684c44d8499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant4f0b1b91b8bf45c9fbc578884758159ea2b3d18a9ad2c34a784970ab5474cada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3ec97b1eadba3f297e0d02bdc10a7bd738ea6900c6a5b5f928da4316fdba838",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant4f0b1b91b8bf45c9fbc578884758159ea2b3d18a9ad2c34a784970ab5474cada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c45a41ea9a15978c78445e8c3e71ed87a6673eb1df26ad25db76d29df9276ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coneOfPreserves [PreservesLimit (F ⋙ snd L R) R] (c₁ : Cone (F ⋙ fst L R))
    {c₂ : Cone (F ⋙ snd L R)} (t₂ : IsLimit c₂) : Cone F where
  pt :=
    { left := c₁.pt
      right := c₂.pt
      hom := (isLimitOfPreserves R t₂).lift (limitAuxiliaryCone _ c₁) }
  π :=
    { app := fun j =>
        { left := c₁.π.app j
          right := c₂.π.app j
          w := ((isLimitOfPreserves R t₂).fac (limitAuxiliaryCone F c₁) j).symm }
      naturality := fun j₁ j₂ t => by
        ext
        · simp [← c₁.w t]
        · simp [← c₂.w t] }

set_option backward.defeqAttrib.useBackward true in
/-- Let `F : J ⥤ Comma L R`. If `R` preserves the limit of
`F ⋙ snd _ _`, then `Comma.fst L R` and `Comma.snd L R` jointly
reflect the limit of `F`, i.e. if `c` is a cone for `F` which
becomes a limit after applying `Comma.fst L R` and `Comma.snd L R`,
then `c` is a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant4f0b1b91b8bf45c9fbc578884758159ea2b3d18a9ad2c34a784970ab5474cada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant4f0b1b91b8bf45c9fbc578884758159ea2b3d18a9ad2c34a784970ab5474cada.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4825d36eb369880a55e2026744944684c44d8499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
