# NatTrans.mapSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ad2f4c693869cf2f7a23ab1e91a8a9241887042cbce8cd81f51b23921bfc3ae",
  "kind": "def",
  "lexical_name": "NatTrans.mapSquare",
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
  "slug": "nattrans-mapsquare--ab76369905e698c0fa502a5d",
  "source": {
    "blob": "274289d0a3fe09b7fedba52af8af4f3628ebed79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab76369905e698c0fa502a5dda137ab9348c7cdbe3010a154e40ce681e5d94e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ad2f4c693869cf2f7a23ab1e91a8a9241887042cbce8cd81f51b23921bfc3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NatTrans.mapSquare {F G : C ⥤ D} (τ : F ⟶ G) :
    F.mapSquare ⟶ G.mapSquare where
  app sq :=
    { τ₁ := τ.app _
      τ₂ := τ.app _
      τ₃ := τ.app _
      τ₄ := τ.app _ }

/-- The functor `(C ⥤ D) ⥤ Square C ⥤ Square D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274289d0a3fe09b7fedba52af8af4f3628ebed79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
