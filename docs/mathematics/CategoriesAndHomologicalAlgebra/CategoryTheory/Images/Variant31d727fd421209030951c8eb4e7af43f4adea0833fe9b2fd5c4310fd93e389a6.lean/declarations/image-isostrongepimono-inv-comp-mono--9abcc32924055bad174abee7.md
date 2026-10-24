# image.isoStrongEpiMono_inv_comp_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ab47764eda15212de71e047565ca1dfba6dc581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1032,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0b43349-e69d-4f59-f174-78567520beb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d7f365c-33b8-c73e-4093-d8c7ce93e326",
  "kind": "theorem",
  "lexical_name": "image.isoStrongEpiMono_inv_comp_mono",
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
  "slug": "image-isostrongepimono-inv-comp-mono--9abcc32924055bad174abee7",
  "source": {
    "blob": "9ab47764eda15212de71e047565ca1dfba6dc581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1032,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9abcc32924055bad174abee7ac65a92fb1dd79797d8ce63270cc6b380c00b162",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d7f365c-33b8-c73e-4093-d8c7ce93e326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1032–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image.isoStrongEpiMono_inv_comp_mono {I' : C} (e : X ⟶ I') (m : I' ⟶ Y) (comm : e ≫ m = f)
    [StrongEpi e] [Mono m] : (image.isoStrongEpiMono e m comm).inv ≫ m = image.ι f :=
  image.lift_fac _
#align category_theory.limits.image.iso_strong_epi_mono_inv_comp_mono CategoryTheory.Limits.image.isoStrongEpiMono_inv_comp_mono

end CategoryTheory.Limits

namespace CategoryTheory.Functor

open CategoryTheory.Limits

variable {C D : Type*} [Category C] [Category D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean#L1032).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ab47764eda15212de71e047565ca1dfba6dc581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
