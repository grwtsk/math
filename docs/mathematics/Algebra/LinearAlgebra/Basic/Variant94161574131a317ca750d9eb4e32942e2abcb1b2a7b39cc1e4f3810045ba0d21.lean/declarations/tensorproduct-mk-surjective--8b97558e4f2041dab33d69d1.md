# TensorProduct.mk_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77259d7ee7507bbea94c2c31ed99bc2a02014fb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:870c20ac-a252-19d3-42b7-f83d5491daac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e614e69a-edc4-dc3c-eb80-71484f06e737",
  "kind": "theorem",
  "lexical_name": "TensorProduct.mk_surjective",
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
  "slug": "tensorproduct-mk-surjective--8b97558e4f2041dab33d69d1",
  "source": {
    "blob": "77259d7ee7507bbea94c2c31ed99bc2a02014fb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1477,
    "line": 1469,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b97558e4f2041dab33d69d1d04b7c3d36bf839a6cd7ec649117ee315908d393",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e614e69a-edc4-dc3c-eb80-71484f06e737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1469–1477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TensorProduct.mk_surjective (h : Function.Surjective (algebraMap R S)) :
    Function.Surjective (TensorProduct.mk R S M 1) := by
  rw [← LinearMap.range_eq_top, ← top_le_iff, ← span_tmul_eq_top, Submodule.span_le]
  rintro _ ⟨x, y, rfl⟩
  obtain ⟨x, rfl⟩ := h x
  rw [Algebra.algebraMap_eq_smul_one, smul_tmul]
  exact ⟨x • y, rfl⟩

variable (S) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean#L1469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77259d7ee7507bbea94c2c31ed99bc2a02014fb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
