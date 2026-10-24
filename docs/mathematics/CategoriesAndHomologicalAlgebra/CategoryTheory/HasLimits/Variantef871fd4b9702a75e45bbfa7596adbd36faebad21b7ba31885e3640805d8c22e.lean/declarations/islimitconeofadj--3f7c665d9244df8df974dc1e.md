# isLimitConeOfAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4adf633e9dedaf6e4a16cb177cbabc3bad25f1f57da279a23cd582e19cfd3dbd",
  "kind": "def",
  "lexical_name": "isLimitConeOfAdj",
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
  "slug": "islimitconeofadj--3f7c665d9244df8df974dc1e",
  "source": {
    "blob": "46e7061763609a190425e72e6e5e908dd35ccace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 553,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f7c665d9244df8df974dc1e360140d9bc48caa73062cf615a1f898efccaeeb2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4adf633e9dedaf6e4a16cb177cbabc3bad25f1f57da279a23cd582e19cfd3dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitConeOfAdj (F : J ⥤ C) :
    IsLimit (coneOfAdj adj F) where
  lift s := adj.homEquiv _ _ s.π
  fac s j := by
    have eq := NatTrans.congr_app (adj.counit.naturality s.π) j
    have eq' := NatTrans.congr_app (adj.left_triangle_components s.pt) j
    dsimp at eq eq' ⊢
    rw [adj.homEquiv_unit, assoc, eq, reassoc_of% eq']
  uniq s m hm := (adj.homEquiv _ _).symm.injective (by ext j; simpa using hm j)

end Adjunction

/-- We can transport limits of shape `J` along an equivalence `J ≌ J'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e7061763609a190425e72e6e5e908dd35ccace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
