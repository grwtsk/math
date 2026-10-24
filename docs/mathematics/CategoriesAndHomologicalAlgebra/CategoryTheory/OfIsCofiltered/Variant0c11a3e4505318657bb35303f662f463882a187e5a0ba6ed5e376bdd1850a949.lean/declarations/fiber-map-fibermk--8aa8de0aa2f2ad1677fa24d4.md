# fiber_map_fiberMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07877324223c0b9e07c5966e5e568eeee42e630e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff6d147b-910f-2f0b-2647-83f4a3f1328b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d70f0706-d7b4-983f-5cfe-456d8b6e9947",
  "kind": "lemma",
  "lexical_name": "fiber_map_fiberMk",
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
  "slug": "fiber-map-fibermk--8aa8de0aa2f2ad1677fa24d4",
  "source": {
    "blob": "07877324223c0b9e07c5966e5e568eeee42e630e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa8de0aa2f2ad1677fa24d45c8821ff92ca02c0c82c6cc956d076bf8e6a7b4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d70f0706-d7b4-983f-5cfe-456d8b6e9947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fiber_map_fiberMk {U : N} {X : C} (f : p.obj U ⟶ X) {Y : C} (g : X ⟶ Y) :
    (fiber p).map g (fiberMk.{w} f) = fiberMk.{w} (f ≫ g) :=
  (congr_hom (ι_colimMap (p.op.whiskerLeft (shrinkYoneda.{w}.map g)) (op U))
    (shrinkYonedaObjObjEquiv.symm f)).trans (by
      simp [fiberMk, shrinkYoneda_map_app_shrinkYonedaObjObjEquiv_symm.{w}])

/-- A functor `N ⥤ (fiber p).Elements` which is initial when `N`
is cofiltered and initially small. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07877324223c0b9e07c5966e5e568eeee42e630e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
