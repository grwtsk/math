# isSheaf_iff_isSheafUniqueGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6ec0e01-79cb-574a-cf46-a6e7a7b8535d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:333c3106-8756-8137-4ecd-eaacf53beb7c",
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
  "slug": "issheaf-iff-issheafuniquegluing--9492ce7f37acda02dd248cee",
  "source": {
    "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9492ce7f37acda02dd248ceec364537e2c65b67317c57541406aa975af12a415",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:333c3106-8756-8137-4ecd-eaacf53beb7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–249.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e83aa53504d92a9a19edee4fa2edde64b8a2a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
