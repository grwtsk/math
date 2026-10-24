# pullback_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba8921b859416f4679b85bf81c1b71ee50cbdd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:284a337a-0598-3d6f-a02d-be96a8f50735",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5ae7a49-233a-9ab8-38a1-e8869e4acca4",
  "kind": "theorem",
  "lexical_name": "pullback_obj",
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
  "slug": "pullback-obj--a8ed2cb34a5e4fa0e4ce4663",
  "source": {
    "blob": "ba8921b859416f4679b85bf81c1b71ee50cbdd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 551,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8ed2cb34a5e4fa0e4ce4663433a636a70a6b4719ba41c62415341e368814cd3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5ae7a49-233a-9ab8-38a1-e8869e4acca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_obj {X Y : C} (f : Y ⟶ X) (x : Subobject X) :
    (pullback f).obj x = mk (pullback.snd x.arrow f) := by
  obtain ⟨Z, i, _, rfl⟩ := mk_surjective x
  rw [pullback_obj_mk (IsPullback.of_hasPullback i f)]
  exact mk_eq_mk_of_comm _ _ (asIso (pullback.map i f (mk i).arrow f
    (underlyingIso i).inv (𝟙 _) (𝟙 _) (by simp) (by simp))) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8921b859416f4679b85bf81c1b71ee50cbdd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
