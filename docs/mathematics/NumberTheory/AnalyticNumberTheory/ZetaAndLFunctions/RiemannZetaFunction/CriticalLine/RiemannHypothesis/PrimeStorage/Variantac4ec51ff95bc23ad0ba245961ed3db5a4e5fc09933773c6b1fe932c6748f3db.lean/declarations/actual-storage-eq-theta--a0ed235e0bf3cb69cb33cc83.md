# actual_storage_eq_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1078f275-eed0-aa85-c2c2-81c4693ac290",
  "kind": "theorem",
  "lexical_name": "actual_storage_eq_theta",
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
  "slug": "actual-storage-eq-theta--a0ed235e0bf3cb69cb33cc83",
  "source": {
    "blob": "e743d948b84b4c17d750a68258012ecfe2a5eb68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ed235e0bf3cb69cb33cc834c3fba4ec5db47f6f0e581a80ceaa0d4edc99bff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1078f275-eed0-aa85-c2c2-81c4693ac290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_storage_eq_theta (n : ℕ) (hn : 1 ≤ n) :
    cumulativeDiscrepancy ordinaryPrimeCoefficient n = Chebyshev.theta n - n + 1 := by
  have hs : cumulativeDiscrepancy ordinaryPrimeCoefficient n =
      (∑ k ∈ Finset.Icc 2 n, if k.Prime then Real.log k else 0) -
        (Finset.Icc 2 n).card := by
    unfold cumulativeDiscrepancy
    calc
      _ = ∑ k ∈ Finset.Icc 2 n, ((if k.Prime then Real.log k else 0) - 1) := by
        apply Finset.sum_congr rfl
        intro k hk
        exact ordinaryPrimeCoefficient_at_source_index (Finset.mem_Icc.mp hk).1
      _ = _ := by rw [Finset.sum_sub_distrib]; simp
  have hc : (Finset.Icc 2 n).card = n - 1 := by simp
  rw [hs, ← theta_eq_all_integer_sum, hc, Nat.cast_sub hn, Nat.cast_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeStorage/Variantac4ec51ff95bc23ad0ba245961ed3db5a4e5fc09933773c6b1fe932c6748f3db.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e743d948b84b4c17d750a68258012ecfe2a5eb68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
