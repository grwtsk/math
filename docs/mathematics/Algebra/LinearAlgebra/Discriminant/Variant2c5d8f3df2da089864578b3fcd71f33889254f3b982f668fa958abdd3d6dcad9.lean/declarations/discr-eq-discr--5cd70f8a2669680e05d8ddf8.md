# discr_eq_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bdbed5d24f837fe2867b790c4b5ff7903c39297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95369833-9d6f-25b1-ef52-4ac342ba38b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a2c9cd8-b4a6-4b31-0f8e-6196c5d9faf2",
  "kind": "theorem",
  "lexical_name": "discr_eq_discr",
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
  "slug": "discr-eq-discr--5cd70f8a2669680e05d8ddf8",
  "source": {
    "blob": "1bdbed5d24f837fe2867b790c4b5ff7903c39297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 296,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cd70f8a2669680e05d8ddf87559d3e0b0208d1c81943b52b286ef09f763e38c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a2c9cd8-b4a6-4b31-0f8e-6196c5d9faf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_eq_discr (b : Basis ι ℤ A) (b' : Basis ι ℤ A) :
    Algebra.discr ℤ b = Algebra.discr ℤ b' := by
  convert! Algebra.discr_of_matrix_vecMul b' (b'.toMatrix b)
  · rw [Basis.toMatrix_map_vecMul]
  · suffices IsUnit (b'.toMatrix b).det by
      rw [Int.isUnit_iff, ← sq_eq_one_iff] at this
      rw [this, one_mul]
    rw [← LinearMap.toMatrix_id_eq_basis_toMatrix b b']
    exact LinearEquiv.isUnit_det (LinearEquiv.refl ℤ A) b b'

end Int

end Discr

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bdbed5d24f837fe2867b790c4b5ff7903c39297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
