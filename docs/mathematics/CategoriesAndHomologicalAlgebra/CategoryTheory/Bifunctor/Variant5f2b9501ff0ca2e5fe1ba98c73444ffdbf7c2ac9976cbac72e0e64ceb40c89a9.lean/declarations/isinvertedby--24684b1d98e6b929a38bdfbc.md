# IsInvertedBy₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7703430250b3f63b002ae1ff45d722df4dabff5590f42df9fe6a395b45864540",
  "kind": "def",
  "lexical_name": "IsInvertedBy₂",
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
  "slug": "isinvertedby--24684b1d98e6b929a38bdfbc",
  "source": {
    "blob": "7755ae9cca22ea4fa105bee9c72857d4b6df9f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24684b1d98e6b929a38bdfbc9af800ddc543954b72d8e619c57e151321b2c039",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7703430250b3f63b002ae1ff45d722df4dabff5590f42df9fe6a395b45864540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInvertedBy₂ (W₁ : MorphismProperty C₁) (W₂ : MorphismProperty C₂)
    (F : C₁ ⥤ C₂ ⥤ E) : Prop :=
  (W₁.prod W₂).IsInvertedBy (uncurry.obj F)

end MorphismProperty

namespace Localization

section

variable (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂)

/-- Given functors `L₁ : C₁ ⥤ D₁`, `L₂ : C₂ ⥤ D₂`, morphisms properties `W₁` on `C₁`
and `W₂` on `C₂`, and functors `F : C₁ ⥤ C₂ ⥤ E` and `F' : D₁ ⥤ D₂ ⥤ E`, we say
`Lifting₂ L₁ L₂ W₁ W₂ F F'` holds if `F` is induced by `F'`, up to an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7755ae9cca22ea4fa105bee9c72857d4b6df9f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
