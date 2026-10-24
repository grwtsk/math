# coconeOfPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:781bf5734f77ffc72e99fde9f0fda9ed5f851206954affb4c9758bcc80470e22",
  "kind": "def",
  "lexical_name": "coconeOfPreserves",
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
  "slug": "coconeofpreserves--1162ae7101f7a2123dbd588d",
  "source": {
    "blob": "e76196bba0a9cda8cc3b749c3c6ed9a6bf84764b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant48078d02b19de7f0f3e1ef62d9b8706e6f7bb6bae6d8a432b91b221d2cfba1c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1162ae7101f7a2123dbd588ddc9e4d1b18c7860243f910635a38ce9fee21e10d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant48078d02b19de7f0f3e1ef62d9b8706e6f7bb6bae6d8a432b91b221d2cfba1c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:781bf5734f77ffc72e99fde9f0fda9ed5f851206954affb4c9758bcc80470e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeOfPreserves [PreservesColimit (F ⋙ fst L R) L] {c₁ : Cocone (F ⋙ fst L R)}
    (t₁ : IsColimit c₁) (c₂ : Cocone (F ⋙ snd L R)) : Cocone F where
  pt :=
    { left := c₁.pt
      right := c₂.pt
      hom := (isColimitOfPreserves L t₁).desc (colimitAuxiliaryCocone _ c₂) }
  ι :=
    { app := fun j =>
        { left := c₁.ι.app j
          right := c₂.ι.app j
          w := (isColimitOfPreserves L t₁).fac (colimitAuxiliaryCocone _ c₂) j }
      naturality := fun j₁ j₂ t => by
        ext
        · simp [← c₁.w t]
        · simp [← c₂.w t] }

/-- Provided that `L` preserves the appropriate colimit, then the cocone in `coconeOfPreserves` is
a colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant48078d02b19de7f0f3e1ef62d9b8706e6f7bb6bae6d8a432b91b221d2cfba1c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant48078d02b19de7f0f3e1ef62d9b8706e6f7bb6bae6d8a432b91b221d2cfba1c8.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76196bba0a9cda8cc3b749c3c6ed9a6bf84764b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
