# natTrailingDegree_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93eee8c94500dd3dad8d0ad2deea9582c47bb483",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab0d519d5ee25df8caf767f2dff6f7eabec32103bea85bbcbd2ccdd6e19e8b4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c82e940a-7232-afb1-8422-095220bb98fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ba682df-60f0-d96a-5409-6b4646608478",
  "kind": "theorem",
  "lexical_name": "natTrailingDegree_mul_X_pow",
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
  "slug": "nattrailingdegree-mul-x-pow--c665b0dd63d5b2d0a165de1c",
  "source": {
    "blob": "93eee8c94500dd3dad8d0ad2deea9582c47bb483",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 269,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantab0d519d5ee25df8caf767f2dff6f7eabec32103bea85bbcbd2ccdd6e19e8b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c665b0dd63d5b2d0a165de1c0015b6a11668b9aea6f9b9269aafacc6a30a4ceb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantab0d519d5ee25df8caf767f2dff6f7eabec32103bea85bbcbd2ccdd6e19e8b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ba682df-60f0-d96a-5409-6b4646608478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrailingDegree_mul_X_pow {p : R[X]} (hp : p ≠ 0) (n : ℕ) :
    (p * X ^ n).natTrailingDegree = p.natTrailingDegree + n := by
  apply le_antisymm
  · refine natTrailingDegree_le_of_ne_zero fun h => mt trailingCoeff_eq_zero.mp hp ?_
    rwa [trailingCoeff, ← coeff_mul_X_pow]
  · rw [natTrailingDegree_eq_support_min' fun h => hp (mul_X_pow_eq_zero h), Finset.le_min'_iff]
    intro y hy
    have key : n ≤ y := by
      rw [mem_support_iff, coeff_mul_X_pow'] at hy
      exact by_contra fun h => hy (if_neg h)
    rw [mem_support_iff, coeff_mul_X_pow', if_pos key] at hy
    exact (le_tsub_iff_right key).mp (natTrailingDegree_le_of_ne_zero hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantab0d519d5ee25df8caf767f2dff6f7eabec32103bea85bbcbd2ccdd6e19e8b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantab0d519d5ee25df8caf767f2dff6f7eabec32103bea85bbcbd2ccdd6e19e8b4d.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93eee8c94500dd3dad8d0ad2deea9582c47bb483` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
