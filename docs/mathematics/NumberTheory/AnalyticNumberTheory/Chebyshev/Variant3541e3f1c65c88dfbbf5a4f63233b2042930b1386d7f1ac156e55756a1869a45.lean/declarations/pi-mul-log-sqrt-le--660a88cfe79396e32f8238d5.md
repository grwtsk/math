# pi_mul_log_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd7c21d-0f3d-fe5e-921d-5b548c687049",
  "kind": "theorem",
  "lexical_name": "pi_mul_log_sqrt_le",
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
  "slug": "pi-mul-log-sqrt-le--660a88cfe79396e32f8238d5",
  "source": {
    "blob": "d5b14c82c28efbe9825a159c81cc676ea84d6ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 274,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:660a88cfe79396e32f8238d511757ab22c36efb7085851a213c91639b2e821cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd7c21d-0f3d-fe5e-921d-5b548c687049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pi_mul_log_sqrt_le {x : ℝ} (hx : 1 ≤ x) : (primeCounting ⌊x⌋₊) * log √x ≤ log 4 * x + √x * log √x
  := calc
  _ = ∑ p ∈ primesLE ⌊x⌋₊, log √x := by simp
  _ ≤ ∑ p ∈ primesLE ⌊x⌋₊, (log p + (if p ≤ √x then log √x else 0)) := by
    apply sum_le_sum; intro p hp
    split_ifs with h
    · simp [log_prime_nonneg (mem_primesLE_prime hp)]
    have : log √x < log p := by
      apply log_lt_log (by positivity) (not_le.mp h)
    nth_grw 1 [this]
    simp
  _ ≤ _ := by
    grw [← theta_le_log4_mul_x (by positivity)]
    rw [sum_add_distrib, theta_eq_theta_coe_floor, theta_eq_sum_log, ←sum_filter]
    simp only [sum_const, nsmul_eq_mul, add_le_add_iff_left]
    gcongr
    · exact log_nonneg (one_le_sqrt.mpr hx)
    calc
      _ ≤ ((Icc 1 ⌊√x⌋₊).card : ℝ) := by
        norm_cast; apply Finset.card_mono
        intro p
        simp only [mem_filter, mem_range, Order.lt_add_one_iff, and_imp]
        intro _ hp h; simp only [mem_Icc]
        exact ⟨ hp.one_le, le_floor h⟩
      _ ≤ _ := by
        simp only [card_Icc, add_tsub_cancel_right]
        apply floor_le
        positivity

/-- A weak but completely explicit bound on $\pi(x)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b14c82c28efbe9825a159c81cc676ea84d6ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
