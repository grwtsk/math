# essentiallySmall_fullSubcategory_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5e4cacef8c1471b0902f4ddfdc00e7ae23be39ea23dd6d14bdb54e88c201948",
  "kind": "instance",
  "lexical_name": "essentiallySmall_fullSubcategory_mem",
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
  "slug": "essentiallysmall-fullsubcategory-mem--58851afbd02d72638335d7fb",
  "source": {
    "blob": "0c75b812c175169360ab31c3e3437339d27b0c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58851afbd02d72638335d7fb6f3d12255fd5ed14c5f023133c2693bd11dc6239",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5e4cacef8c1471b0902f4ddfdc00e7ae23be39ea23dd6d14bdb54e88c201948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance essentiallySmall_fullSubcategory_mem (s : Set C) [Small.{w} s] [LocallySmall.{w} C] :
    EssentiallySmall.{w} (ObjectProperty.FullSubcategory (· ∈ s)) :=
  suffices Small.{w} (ObjectProperty.FullSubcategory (· ∈ s)) from
    essentiallySmall_of_small_of_locallySmall _
  small_of_injective (f := fun x => (⟨x.1, x.2⟩ : s)) (by cat_disch)

end FullSubcategory

/-- Any thin category is locally small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c75b812c175169360ab31c3e3437339d27b0c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
