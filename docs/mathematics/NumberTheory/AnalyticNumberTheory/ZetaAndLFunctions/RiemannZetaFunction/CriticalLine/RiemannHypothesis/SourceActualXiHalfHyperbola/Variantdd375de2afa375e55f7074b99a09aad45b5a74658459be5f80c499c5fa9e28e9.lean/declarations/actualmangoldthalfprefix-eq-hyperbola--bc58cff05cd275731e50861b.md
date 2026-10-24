# actualMangoldtHalfPrefix_eq_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b544ee82-b620-fc66-0b07-46f1d43b865f",
  "kind": "theorem",
  "lexical_name": "actualMangoldtHalfPrefix_eq_hyperbola",
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
  "slug": "actualmangoldthalfprefix-eq-hyperbola--bc58cff05cd275731e50861b",
  "source": {
    "blob": "6f12c181f49c57d60b93fbc2b09334372f7f1897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc58cff05cd275731e50861b93864ba0b16290aaf7fd6d6358b17030c9973ae5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b544ee82-b620-fc66-0b07-46f1d43b865f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtHalfPrefix_eq_hyperbola (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) =
      actualMoebiusLogHalfHyperbola N := by
  have hh := sum_Ioc_mul_eq_sum_sum actualMoebiusHalfFunction actualLogHalfFunction N
  simp_rw [actualMoebiusHalf_mul_logHalf] at hh
  have hi (M : ℕ) : Finset.Ioc 0 M = Finset.Icc 1 M := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_Icc]
    omega
  simp_rw [hi] at hh
  exact hh

/-- The lower-seven prefix is subtracted in full, preserving the actual prime-seven trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiHalfHyperbola/Variantdd375de2afa375e55f7074b99a09aad45b5a74658459be5f80c499c5fa9e28e9.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f12c181f49c57d60b93fbc2b09334372f7f1897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
