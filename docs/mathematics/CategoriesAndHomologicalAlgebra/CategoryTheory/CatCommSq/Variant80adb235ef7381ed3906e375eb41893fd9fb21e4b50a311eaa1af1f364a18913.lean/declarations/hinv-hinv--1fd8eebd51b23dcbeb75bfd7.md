# hInv_hInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d1b1d3c-c4d4-c671-fee1-7a677c6d32c5",
  "kind": "lemma",
  "lexical_name": "hInv_hInv",
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
  "slug": "hinv-hinv--1fd8eebd51b23dcbeb75bfd7",
  "source": {
    "blob": "c6f48eed8805f5789895d77710d7f70b1241b097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant80adb235ef7381ed3906e375eb41893fd9fb21e4b50a311eaa1af1f364a18913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fd8eebd51b23dcbeb75bfd7926b942b6fea0c30f53d0dde5855d20e97b812ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant80adb235ef7381ed3906e375eb41893fd9fb21e4b50a311eaa1af1f364a18913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1b1d3c-c4d4-c671-fee1-7a677c6d32c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hInv_hInv (h : CatCommSq T.functor L R B.functor) :
    hInv T.symm R L B.symm (hInv T L R B h) = h := by
  ext X
  rw [← cancel_mono (B.functor.map (L.map (T.unitIso.hom.app X)))]
  rw [← Functor.comp_map]
  erw [← h.iso'.hom.naturality (T.unitIso.hom.app X)]
  rw [hInv_iso'_hom_app]
  simp only [Equivalence.symm_functor]
  rw [hInv_iso'_inv_app]
  dsimp
  simp only [Functor.comp_obj, assoc, ← Functor.map_comp, Iso.inv_hom_id_app,
    Equivalence.counitInv_app_functor, Functor.map_id]
  simp only [Functor.map_comp, Equivalence.fun_inv_map, assoc,
    Equivalence.counitInv_functor_comp, comp_id, Iso.inv_hom_id_app_assoc]

/-- In a square of categories, when the top and bottom functors are part
of equivalence of categories, it is equivalent to show 2-commutativity for
the functors of these equivalences or for their inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant80adb235ef7381ed3906e375eb41893fd9fb21e4b50a311eaa1af1f364a18913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant80adb235ef7381ed3906e375eb41893fd9fb21e4b50a311eaa1af1f364a18913.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f48eed8805f5789895d77710d7f70b1241b097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
