# hInv_hInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2e6a8c6-4ad8-3ffe-a084-dc7bc49e1e43",
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
  "slug": "hinv-hinv--abcc85bd167c22d5e59a11b5",
  "source": {
    "blob": "51b61d8397017edbde7dc9eb2af3b674583b5d4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant35e3ae483847500db17acb4c7219a8ca51fbe66fe95ad3e0f8267f562e3bfd22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abcc85bd167c22d5e59a11b5c242bf5bcee66ce341b9736fffddac1b2ae98c45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant35e3ae483847500db17acb4c7219a8ca51fbe66fe95ad3e0f8267f562e3bfd22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2e6a8c6-4ad8-3ffe-a084-dc7bc49e1e43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hInv_hInv (h : CatCommSq T.functor L R B.functor) :
  hInv T.symm R L B.symm (hInv T L R B h) = h := by
    ext X
    erw [← cancel_mono (B.functor.map (L.map (T.unitIso.hom.app X))),
      ← h.iso'.hom.naturality (T.unitIso.hom.app X), hInv_iso'_hom_app, hInv_iso'_inv_app]
    dsimp
    simp only [Functor.comp_obj, assoc, ← Functor.map_comp, Iso.inv_hom_id_app,
      Equivalence.counitInv_app_functor, Functor.map_id]
    simp only [Functor.map_comp, Equivalence.fun_inv_map, assoc,
      Equivalence.counitInv_functor_comp, comp_id, Iso.inv_hom_id_app_assoc]
    rfl

/-- In a square of categories, when the top and bottom functors are part
of equivalence of categorires, it is equivalent to show 2-commutativity for
the functors of these equivalences or for their inverses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant35e3ae483847500db17acb4c7219a8ca51fbe66fe95ad3e0f8267f562e3bfd22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant35e3ae483847500db17acb4c7219a8ca51fbe66fe95ad3e0f8267f562e3bfd22.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b61d8397017edbde7dc9eb2af3b674583b5d4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
