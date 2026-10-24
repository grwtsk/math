# pullbackArrows_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:808449a2-d2de-c227-372f-4ecf9eeb4361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:928373f8-976e-b5b8-4c5b-5590e022d5d8",
  "kind": "lemma",
  "lexical_name": "pullbackArrows_mem",
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
  "slug": "pullbackarrows-mem--fa7597f5e58ad62eba23189c",
  "source": {
    "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa7597f5e58ad62eba23189cc0deb34fc2688cde3ab494e73d0c0f6f6cf0c995",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928373f8-976e-b5b8-4c5b-5590e022d5d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackArrows_mem {J : Precoverage C} [IsStableUnderBaseChange J]
    {X Y : C} (f : X ⟶ Y) {R : Presieve Y} (hR : R ∈ J Y) [R.HasPullbacks f] :
    R.pullbackArrows f ∈ J X := by
  obtain ⟨ι, Z, g, rfl⟩ := R.exists_eq_ofArrows
  have (i : ι) : Limits.HasPullback (g i) f := Presieve.hasPullback f (Presieve.ofArrows.mk i)
  rw [← Presieve.ofArrows_pullback]
  exact mem_coverings_of_isPullback _ hR _ _ _ fun i ↦ (IsPullback.of_hasPullback _ _).flip

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006d42d664f1b2fda3af3bc1ea764f08518641d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
