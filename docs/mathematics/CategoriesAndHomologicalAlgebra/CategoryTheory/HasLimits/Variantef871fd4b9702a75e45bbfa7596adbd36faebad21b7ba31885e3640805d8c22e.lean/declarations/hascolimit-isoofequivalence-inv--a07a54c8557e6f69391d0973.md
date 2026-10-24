# HasColimit.isoOfEquivalence_inv_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a08df59e-e4e3-b013-42c6-1e1f83987ffd",
  "kind": "theorem",
  "lexical_name": "HasColimit.isoOfEquivalence_inv_π",
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
  "slug": "hascolimit-isoofequivalence-inv--a07a54c8557e6f69391d0973",
  "source": {
    "blob": "46e7061763609a190425e72e6e5e908dd35ccace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 873,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07a54c8557e6f69391d0973db47ba0b9fb7579874ecf9420824fb2a6df535b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a08df59e-e4e3-b013-42c6-1e1f83987ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasColimit.isoOfEquivalence_inv_π {F : J ⥤ C} [HasColimit F] {G : K ⥤ C} [HasColimit G]
    (e : J ≌ K) (w : e.functor ⋙ G ≅ F) (k : K) :
    colimit.ι G k ≫ (HasColimit.isoOfEquivalence e w).inv =
      G.map (e.counitInv.app k) ≫ w.hom.app (e.inverse.obj k) ≫ colimit.ι F (e.inverse.obj k) := by
  simp [HasColimit.isoOfEquivalence, IsColimit.coconePointsIsoOfEquivalence_inv]

section Pre

variable (F)
variable [HasColimit F] (E : K ⥤ J) [HasColimit (E ⋙ F)]

/-- The canonical morphism from the colimit of `E ⋙ F` to the colimit of `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantef871fd4b9702a75e45bbfa7596adbd36faebad21b7ba31885e3640805d8c22e.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e7061763609a190425e72e6e5e908dd35ccace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
