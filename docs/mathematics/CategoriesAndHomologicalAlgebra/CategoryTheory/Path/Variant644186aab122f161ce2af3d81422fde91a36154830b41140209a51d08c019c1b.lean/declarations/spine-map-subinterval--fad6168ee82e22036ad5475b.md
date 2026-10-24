# spine_map_subinterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9d729d974142d55bf2d0a28bb87e63c283b8927",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b54b56f8-f691-59e3-7cbc-91db6b521eef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9ce7105-806f-a9c7-0105-a5d810f128d7",
  "kind": "lemma",
  "lexical_name": "spine_map_subinterval",
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
  "slug": "spine-map-subinterval--fad6168ee82e22036ad5475b",
  "source": {
    "blob": "b9d729d974142d55bf2d0a28bb87e63c283b8927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fad6168ee82e22036ad5475bcf5b5cbaf38c4e612ae2537804ab77dab740d3b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9ce7105-806f-a9c7-0105-a5d810f128d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_map_subinterval (j l : ℕ) (h : j + l ≤ m) (Δ : X _⦋m⦌ₙ₊₁) :
    X.spine l (by omega) (X.map (tr (subinterval j l h)).op Δ) =
      (X.spine m hₘ Δ).interval j l h := by
  ext i
  · dsimp only [spine_vertex, Path.interval]
    rw [← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
      const_subinterval_eq]
  · dsimp only [spine_arrow, Path.interval]
    rw [← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
      mkOfSucc_subinterval_eq]

end Truncated

/-- A path of length `n` in a simplicial set `X` is defined as a 1-truncated
path in the 1-truncation of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9d729d974142d55bf2d0a28bb87e63c283b8927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
