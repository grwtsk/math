# isWeightedHomogeneous_monomial

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
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c86dd33-a094-64f0-c9c0-808e1e304d59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98ec4ef0-c4b2-fe60-68bf-5e7d755dfa8c",
  "kind": "theorem",
  "lexical_name": "isWeightedHomogeneous_monomial",
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
  "slug": "isweightedhomogeneous-monomial--621f517a2624b12db758191d",
  "source": {
    "blob": "37c4fb410c8eefe73cdfb95ff517de8036ea4277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621f517a2624b12db758191d1bcbd9cecd591a1a2032b0c6ab0161b2e1d855fd",
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

Occurrence: `result:98ec4ef0-c4b2-fe60-68bf-5e7d755dfa8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isWeightedHomogeneous_monomial (w : σ → M) (d : σ →₀ ℕ) (r : R) {m : M}
    (hm : weight w d = m) : IsWeightedHomogeneous w (monomial d r) m := by
  classical
  intro c hc
  rw [coeff_monomial] at hc
  split_ifs at hc with h
  · subst c
    exact hm
  · contradiction

/-- A polynomial of weightedTotalDegree `⊥` is weighted homogeneous of degree `⊥`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant2e6a01a2f03ae1d91348a8af28ee7df250f91cacd37f9089e616d875edd198fb.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c4fb410c8eefe73cdfb95ff517de8036ea4277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
