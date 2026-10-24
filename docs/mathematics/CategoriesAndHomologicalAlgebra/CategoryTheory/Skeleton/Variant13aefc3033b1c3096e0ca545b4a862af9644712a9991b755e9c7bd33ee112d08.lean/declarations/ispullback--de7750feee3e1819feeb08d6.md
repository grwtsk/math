# isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d41d55de-2138-73c2-df7b-d6b778c9bf0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:175e983c-c926-11b2-4a02-01baf4aa2458",
  "kind": "lemma",
  "lexical_name": "isPullback",
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
  "slug": "ispullback--de7750feee3e1819feeb08d6",
  "source": {
    "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7750feee3e1819feeb08d6d6ba28407543cde7c07ed2e800c3d7fafd4edb3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:175e983c-c926-11b2-4a02-01baf4aa2458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPullback : IsPullback (t i d) (l i d) (r i d) (b i d) where
  w := w i d
  isLimit' := ⟨evaluationJointlyReflectsLimits _ (fun ⟨⟨n⟩⟩ ↦ by
    refine (isLimitMapConePullbackConeEquiv _ _).2
      (IsPullback.isLimit ?_)
    dsimp
    rw [Types.isPullback_iff]
    refine ⟨NatTrans.congr_app (w i d) _,
      fun x₁ x₂ ⟨_, h⟩ ↦ injective_of_mono ((l i d).app (op ⦋n⦌)) h,
      fun ⟨x, hx⟩ y h ↦ ?_⟩
    rw [Subtype.ext_iff] at h
    dsimp at h
    subst h
    obtain ⟨c, y, rfl⟩ := ιSigmaStdSimplex_jointly_surjective y
    refine ⟨c.ιSigmaBoundary.app _ ⟨y, ?_⟩, ?_, ?_⟩
    · rw [dsimp% congr($(c.ι_b_ι).app (op ⦋n⦌) y)] at hx
      rwa [← c.preimage_map, Subcomplex.preimage_obj, Set.mem_preimage]
    · rw [Subtype.ext_iff]
      exact congr($(c.ι_t_ι_eq_ι_l_b_ι).app _ ⟨y, _⟩)
    · exact congr($(c.ι_l).app _ ⟨y, _⟩))⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3c3f3cde6555c13d871454a132d1868a92db04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
