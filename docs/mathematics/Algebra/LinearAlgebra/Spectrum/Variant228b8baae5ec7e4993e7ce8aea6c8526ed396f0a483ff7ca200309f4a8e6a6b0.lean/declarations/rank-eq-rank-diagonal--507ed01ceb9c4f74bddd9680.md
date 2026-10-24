# rank_eq_rank_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9d44b833de758419e3a71f83f0575b4b17abfd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2dc287-fa0e-5458-6008-f3512f9cd095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3a1883f-7ae5-3c54-8702-a42052dd656b",
  "kind": "lemma",
  "lexical_name": "rank_eq_rank_diagonal",
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
  "slug": "rank-eq-rank-diagonal--507ed01ceb9c4f74bddd9680",
  "source": {
    "blob": "b9d44b833de758419e3a71f83f0575b4b17abfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:507ed01ceb9c4f74bddd968020e55bc506f78d02a70f9cc261f2cf839067d0f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3a1883f-7ae5-3c54-8702-a42052dd656b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_eq_rank_diagonal : A.rank = (Matrix.diagonal hA.eigenvalues).rank := by
  conv_lhs => rw [hA.spectral_theorem']
  have hE := isUnit_det_of_invertible (hA.eigenvectorMatrix)
  have hiE := isUnit_det_of_invertible (hA.eigenvectorMatrixInv)
  simp only [rank_mul_eq_right_of_isUnit_det hA.eigenvectorMatrix _ hE,
    rank_mul_eq_left_of_isUnit_det hA.eigenvectorMatrixInv _ hiE,
    rank_diagonal, Function.comp_apply, ne_eq, algebraMap.lift_map_eq_zero_iff]

/-- rank of a hermitian matrix is the number of nonzero eigenvalues of the hermitian matrix -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9d44b833de758419e3a71f83f0575b4b17abfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
