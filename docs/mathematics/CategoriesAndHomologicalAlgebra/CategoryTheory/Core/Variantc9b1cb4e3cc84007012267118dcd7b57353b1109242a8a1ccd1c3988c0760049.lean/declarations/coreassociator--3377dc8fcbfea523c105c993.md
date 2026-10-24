# coreAssociator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c50572-1362-0dce-6a4b-3bf7d111f32f",
  "kind": "lemma",
  "lexical_name": "coreAssociator",
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
  "slug": "coreassociator--3377dc8fcbfea523c105c993",
  "source": {
    "blob": "3699407de5039b0be2af525c55006dae47af18a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3377dc8fcbfea523c105c9936c8dcae68a7190c2cb734fa7ac3a99201a9204b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c50572-1362-0dce-6a4b-3bf7d111f32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coreAssociator {E : Type u₃} [Category.{v₃} E] {E' : Type u₄} [Category.{v₄} E']
    (F : C ⥤ D) (G : D ⥤ E) (H : E ⥤ E') :
    (Functor.associator F G H).core =
    (F ⋙ G).coreComp H ≪≫ isoWhiskerRight (F.coreComp G) H.core ≪≫
      Functor.associator F.core G.core H.core ≪≫ (isoWhiskerLeft F.core (G.coreComp H)).symm ≪≫
      (F.coreComp (G ⋙ H)).symm := by
  aesop_cat

end Iso

variable (D : Type u₂) [Category.{v₂} D]

namespace Equivalence

variable {D} in
/-- Equivalent categories have equivalent cores. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantc9b1cb4e3cc84007012267118dcd7b57353b1109242a8a1ccd1c3988c0760049.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3699407de5039b0be2af525c55006dae47af18a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
