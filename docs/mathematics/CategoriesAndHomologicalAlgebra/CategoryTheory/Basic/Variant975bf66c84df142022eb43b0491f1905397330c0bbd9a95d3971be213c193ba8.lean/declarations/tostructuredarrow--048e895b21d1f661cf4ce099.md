# toStructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f325473d05bdefcd472ac5cc87ec9699767cbe01d1162039484d0701924f2bb",
  "kind": "def",
  "lexical_name": "toStructuredArrow",
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
  "slug": "tostructuredarrow--048e895b21d1f661cf4ce099",
  "source": {
    "blob": "5208a59c866c9f65c650962f528308c79c997d81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 743,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:048e895b21d1f661cf4ce099fe48d32fcd66141e5a88028b7accb45ddbf30fa0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f325473d05bdefcd472ac5cc87ec9699767cbe01d1162039484d0701924f2bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStructuredArrow (G : E ⥤ C) (X : D) (F : C ⥤ D) (f : (Y : E) → X ⟶ F.obj (G.obj Y))
    (h : ∀ {Y Z : E} (g : Y ⟶ Z), f Y ≫ F.map (G.map g) = f Z) : E ⥤ StructuredArrow X F where
  obj Y := StructuredArrow.mk (f Y)
  map g := StructuredArrow.homMk (G.map g) (h g)

/-- Upgrading a functor `E ⥤ C` to a functor `E ⥤ StructuredArrow X F` and composing with the
    forgetful functor `StructuredArrow X F ⥤ C` recovers the original functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5208a59c866c9f65c650962f528308c79c997d81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
