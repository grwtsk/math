# isSheaf_iff_isSheafUniqueGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef1435d5-893c-6ed6-21bd-7d7d91fb4fb6",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheafUniqueGluing",
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
  "slug": "issheaf-iff-issheafuniquegluing--28a8f7c20fc3ecf4e71ccf00",
  "source": {
    "blob": "07b565b7ca63f2a34d16e39af2a392af18864bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a8f7c20fc3ecf4e71ccf00d66563298d498fe0268d010c28be7da74e907c57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1435d5-893c-6ed6-21bd-7d7d91fb4fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheafUniqueGluing : F.IsSheaf ↔ F.IsSheafUniqueGluing :=
  Iff.trans (isSheaf_iff_isSheaf_comp (forget C) F)
    (isSheaf_iff_isSheafUniqueGluing_types (F ⋙ forget C))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_iff_is_sheaf_unique_gluing TopCat.Presheaf.isSheaf_iff_isSheafUniqueGluing

end

end Presheaf

namespace Sheaf

open Presheaf

open CategoryTheory

section

attribute [local instance] ConcreteCategory.hasCoeToSort ConcreteCategory.funLike

variable [HasLimits C] [ReflectsIsomorphisms (ConcreteCategory.forget (C := C))]

variable [PreservesLimits (ConcreteCategory.forget (C := C))]

variable {X : TopCat.{v}} (F : Sheaf C X) {ι : Type v} (U : ι → Opens X)

/-- A more convenient way of obtaining a unique gluing of sections for a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant31a7d1d5179620d731bce746ad0563779b104c7bd4fc4012f7c39dffdcf26bf8.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b565b7ca63f2a34d16e39af2a392af18864bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
