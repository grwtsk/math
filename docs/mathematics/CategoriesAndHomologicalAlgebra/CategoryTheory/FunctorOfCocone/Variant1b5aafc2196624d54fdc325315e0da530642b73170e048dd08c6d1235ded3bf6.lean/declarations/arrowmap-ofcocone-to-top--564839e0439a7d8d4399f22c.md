# arrowMap_ofCocone_to_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c75826a22944fb71eaa38d2ecdf37cc694d7efdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13c3f1c6-825e-c33a-3ca0-ecb1e78b99f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87361496-2314-cee5-31f1-b9a7ca3384a4",
  "kind": "lemma",
  "lexical_name": "arrowMap_ofCocone_to_top",
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
  "slug": "arrowmap-ofcocone-to-top--564839e0439a7d8d4399f22c",
  "source": {
    "blob": "c75826a22944fb71eaa38d2ecdf37cc694d7efdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:564839e0439a7d8d4399f22c8688b40cc0ad6260710905de1b586b35df435f86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87361496-2314-cee5-31f1-b9a7ca3384a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arrowMap_ofCocone_to_top (i : J) (hi : i < j) :
    arrowMap (ofCocone c) i j hi.le (by simp) = Arrow.mk (c.ι.app ⟨i, hi⟩) := by
  rw [arrowMap, ofCocone_map_to_top _ _ hi]
  exact Arrow.ext (ofCocone_obj_eq _ _ _) (ofCocone_obj_eq_pt _) rfl

end SuccStruct

end SmallObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c75826a22944fb71eaa38d2ecdf37cc694d7efdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
