# prime_power_riesz_sum_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7cd85c6bbd349e1d2350c076fe218ad4c0c11c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30ce1fd1-7806-afd1-7f10-fdef4473f8e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07691901-f29d-de4b-bd0e-6556b1dcb84b",
  "kind": "theorem",
  "lexical_name": "prime_power_riesz_sum_exact",
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
  "slug": "prime-power-riesz-sum-exact--ef9dabf4214c446db6de140e",
  "source": {
    "blob": "c7cd85c6bbd349e1d2350c076fe218ad4c0c11c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9dabf4214c446db6de140e8f7b770b64c677f8ee7b6f2c5f68d76712a461a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07691901-f29d-de4b-bd0e-6556b1dcb84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_power_riesz_sum_exact (A : ℝ) (hA : 1 ≤ A) :
    A ^ 9 * primePowerContribution explicitSecondDerivative A =
      ∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        extendedBoundaryKernel A (Real.log (Real.exp (2 * A) / n)) := by
  change A ^ 9 * (∑ n ∈ primeIndices A, _) = _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < n := by have := ((mem_primeIndices_iff A n).mp hn).1; omega
  rw [← boundary_distance_eq_log_cutoff_ratio A n hnpos,
    extended_boundary_kernel_eq_boundary_kernel A (boundaryDistance A n) hA
      (boundary_distance_pos_of_mem_primeIndices A n hn).le
      (boundary_distance_lt_two_mul_of_mem_primeIndices A n hn).le,
    correlation_at_log_eq_boundary A (by linarith) n]
  field_simp

/-- A hypothetical cutoff-equality atom has zero extension value; the native sum still excludes it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7cd85c6bbd349e1d2350c076fe218ad4c0c11c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
