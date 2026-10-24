# colimitCoyonedaIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e88f5916a54631ac6f30505ff4d90988daa74a8f3cfa9c22659c7e3ec8a6d8c9",
  "kind": "def",
  "lexical_name": "colimitCoyonedaIso",
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
  "slug": "colimitcoyonedaiso--dca59b3b4015713e8564e701",
  "source": {
    "blob": "a2e553b6e94c1809a6a32295d667d2c5cf884791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dca59b3b4015713e8564e7014bdf774f7d708a2a5cee9add651ca563216fc814",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e88f5916a54631ac6f30505ff4d90988daa74a8f3cfa9c22659c7e3ec8a6d8c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitCoyonedaIso (X : Cᵒᵖ) : colimit (coyoneda.obj X) ≅ PUnit := by
  apply colimit.isoColimitCocone
    { cocone := _
      isColimit := colimitCoconeIsColimit X }

end Coyoneda

variable {C : Type u} [Category.{v} C]

open Limits

section

variable {J : Type w} [Category.{t} J]

set_option backward.defeqAttrib.useBackward true in
/-- The cone of `F` corresponding to an element in `(F ⋙ yoneda.obj X).sections`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e553b6e94c1809a6a32295d667d2c5cf884791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
