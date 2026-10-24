# isZero_Ext_succ_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f077ac33ec2a3c663dedf45f73aa4d83c3be3897",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d44be46-c38b-30a5-85de-c06fccf24d94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ea9051c-201e-554d-d7e3-2db6ef101868",
  "kind": "lemma",
  "lexical_name": "isZero_Ext_succ_of_projective",
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
  "slug": "iszero-ext-succ-of-projective--85cc0bdca79b09eff02479b8",
  "source": {
    "blob": "f077ac33ec2a3c663dedf45f73aa4d83c3be3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85cc0bdca79b09eff02479b89129aa2abbd6476638990cdf7d7c22deb03b45fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea9051c-201e-554d-d7e3-2db6ef101868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_Ext_succ_of_projective (X Y : C) [Projective X] (n : ℕ) :
    IsZero (((Ext R C (n + 1)).obj (Opposite.op X)).obj Y) := by
  refine IsZero.of_iso ?_ ((ProjectiveResolution.self X).isoExt (n + 1) Y)
  rw [← HomologicalComplex.exactAt_iff_isZero_homology, HomologicalComplex.exactAt_iff]
  refine ShortComplex.exact_of_isZero_X₂ _ ?_
  dsimp
  rw [IsZero.iff_id_eq_zero]
  ext (x : _ ⟶ _)
  obtain rfl : x = 0 := (HomologicalComplex.isZero_single_obj_X
    (ComplexShape.down ℕ) 0 X (n + 1) (by simp)).eq_of_src _ _
  rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Variant7a5cbda52d849442e66ff430b635841d61b1f6419783566c213ebbc9399e69df.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f077ac33ec2a3c663dedf45f73aa4d83c3be3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
