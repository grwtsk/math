# heatRemainderPolynomial_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c960b5b-7d6a-0150-8ef1-4cafbf5fb338",
  "kind": "theorem",
  "lexical_name": "heatRemainderPolynomial_eq_sum",
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
  "slug": "heatremainderpolynomial-eq-sum--23fa059c53a5ce3fa9237e05",
  "source": {
    "blob": "23166adbe46186a8502fa5bae12566db052f807f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fa059c53a5ce3fa9237e05aff377ef5a6854efcbafdc10b895c0d52cb79ae6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c960b5b-7d6a-0150-8ef1-4cafbf5fb338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatRemainderPolynomial_eq_sum (N : ℕ) (τ x : ℝ) :
    heatRemainderPolynomial N τ x =
      ∑ j ∈ Finset.range (N + 1),
        (-1 : ℝ) ^ j * τ ^ (j + 1) * x ^ (2 * j + 3) / (j + 1).factorial := by
  unfold heatRemainderPolynomial negExpPolynomial
  rw [Finset.sum_range_succ']
  simp only [pow_zero, mul_one, Nat.factorial_zero, Nat.cast_one, div_one]
  rw [show (1 : ℝ) - ((∑ j ∈ Finset.range (N + 1),
      (-1 : ℝ) ^ (j + 1) * (τ * x ^ 2) ^ (j + 1) / (j + 1).factorial) + 1) =
      -(∑ j ∈ Finset.range (N + 1),
        (-1 : ℝ) ^ (j + 1) * (τ * x ^ 2) ^ (j + 1) / (j + 1).factorial) by ring,
    mul_neg, Finset.mul_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro j _
  have hj : 2 * j + 3 = 2 * (j + 1) + 1 := by omega
  rw [pow_succ (-1 : ℝ) j, mul_pow, ← pow_mul, hj, pow_succ x (2 * (j + 1))]
  ring

/-- Negative exponential derivatives have magnitude at most one,
so the sharp tail needs no exponential inflation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23166adbe46186a8502fa5bae12566db052f807f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
