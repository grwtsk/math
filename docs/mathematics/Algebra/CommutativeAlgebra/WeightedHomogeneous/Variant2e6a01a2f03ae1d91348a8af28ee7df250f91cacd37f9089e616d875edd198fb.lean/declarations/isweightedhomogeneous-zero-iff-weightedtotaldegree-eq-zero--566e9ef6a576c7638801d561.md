# isWeightedHomogeneous_zero_iff_weightedTotalDegree_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b18f9118-3c68-2a52-ba36-779901069a4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:419edee8-669a-86b7-8c5c-5624481d220b",
  "kind": "theorem",
  "lexical_name": "isWeightedHomogeneous_zero_iff_weightedTotalDegree_eq_zero",
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
  "slug": "isweightedhomogeneous-zero-iff-weightedtotaldegree-eq-zero--566e9ef6a576c7638801d561",
  "source": {
    "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 623,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:566e9ef6a576c7638801d56168c4ac315925fc7f6fedb9d88d626abfa7236b9b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419edee8-669a-86b7-8c5c-5624481d220b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isWeightedHomogeneous_zero_iff_weightedTotalDegree_eq_zero {p : MvPolynomial σ R} :
    IsWeightedHomogeneous w p 0 ↔ p.weightedTotalDegree w = 0 := by
  rw [weightedTotalDegree, ← bot_eq_zero, Finset.sup_eq_bot_iff, bot_eq_zero, IsWeightedHomogeneous]
  apply forall_congr'
  intro m
  rw [mem_support_iff]

/-- If `w` is a nontorsion weight function, then a multivariate polynomial has weighted total
  degree zero if and only if for every `m ∈ p.support` and `x : σ`, `m x = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c4fb410c8eefe73cdfb95ff517de8036ea4277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
