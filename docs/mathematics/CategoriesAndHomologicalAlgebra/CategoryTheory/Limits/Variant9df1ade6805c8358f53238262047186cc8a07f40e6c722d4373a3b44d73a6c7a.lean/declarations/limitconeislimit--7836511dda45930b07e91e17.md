# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:132e95246f54d45d9b8bfc0e256187d33f2bf8651200229c8a963a9dcbf86303",
  "kind": "def",
  "lexical_name": "limitConeIsLimit",
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
  "slug": "limitconeislimit--7836511dda45930b07e91e17",
  "source": {
    "blob": "254de39125b2e9c19fd03767913d24ae8177f781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7836511dda45930b07e91e172f3b447844caa1aa00cc128843c1854d2ca57088",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:132e95246f54d45d9b8bfc0e256187d33f2bf8651200229c8a963a9dcbf86303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeIsLimit (F : J ⥤ Mon_ C) : IsLimit (limitCone F) where
  lift s :=
    { hom := limit.lift (F ⋙ Mon_.forget C) ((Mon_.forget C).mapCone s)
      mul_hom := limit.hom_ext (fun j ↦ by
        dsimp
        simp only [Category.assoc, limit.lift_π, Functor.mapCone_pt, forget_obj,
          Functor.mapCone_π_app, forget_map, Hom.mul_hom, limMap_π, tensorObj_obj, Functor.comp_obj,
          MonFunctorCategoryEquivalence.inverseObj_mul_app, lim_μ_π_assoc, lim_obj,
          ← MonoidalCategory.tensor_comp_assoc]) }
  fac s h := by ext; simp
  uniq s m w := by
    ext1
    refine limit.hom_ext (fun j => ?_)
    dsimp; simp only [Mon_.forget_map, limit.lift_π, Functor.mapCone_π_app]
    exact congr_arg Mon_.Hom.hom (w j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254de39125b2e9c19fd03767913d24ae8177f781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
