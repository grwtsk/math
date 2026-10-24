# param_upperbound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b4e99d-a715-9894-9d53-473771c1eeb8",
  "kind": "lemma",
  "lexical_name": "param_upperbound",
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
  "slug": "param-upperbound--88a842811647b026a08a77bc",
  "source": {
    "blob": "f3edb13cdff78abe1e73b357aee38e8342727f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 358,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a842811647b026a08a77bc7238e52f05324e06e53dd73124e64ebe7b882c1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b4e99d-a715-9894-9d53-473771c1eeb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma param_upperbound {k : ℕ} (hk : k ≠ 0) :
    f n ≤ (m * f m / (f m - 1)) ^ (k : ℝ)⁻¹ * f m ^ logb m n := by
  have h_ineq1 {m n : ℕ} (hm : 1 < m) (hn : 1 < n) :
      f n ≤ (m * f m / (f m - 1)) * f m ^ logb m n := by
    let d := Nat.log m n
    have hfm := one_lt_of_not_bounded notbdd hm
    calc
    f n ≤ ((Nat.digits m n).mapIdx fun i _ ↦ m * f m ^ i).sum := apply_le_sum_digits n hm
    _ = m * ((Nat.digits m n).mapIdx fun i _ ↦ f m ^ i).sum := list_mul_sum (m.digits n) (f m) m
    _ = m * ((f m ^ (d + 1) - 1) / (f m - 1)) := by
      rw [list_geom _ hfm.ne', ← Nat.length_digits m n hm (ne_zero_of_lt hn)]
    _ ≤ m * ((f m ^ (d + 1)) / (f m - 1)) := by
      gcongr; linarith
    _ = ↑m * f ↑m / (f ↑m - 1) * f ↑m ^ d := by ring
    _ ≤ ↑m * f ↑m / (f ↑m - 1) * f ↑m ^ logb ↑m ↑n := by
      gcongr
      rw [← rpow_natCast, rpow_le_rpow_left_iff hfm]
      exact natLog_le_logb n m
  have he := expr_pos hm notbdd
  apply le_of_pow_le_pow_left₀ hk (by positivity)
  nth_rewrite 2 [← rpow_natCast]
  rw [mul_rpow (by positivity) (by positivity), ← rpow_mul he.le, ← rpow_mul (apply_nonneg f ↑m),
    inv_mul_cancel₀ (mod_cast hk), rpow_one, mul_comm (logb ..)]
  calc
    (f n) ^ k = f ↑(n ^ k) := by simp
    _ ≤ (m * f m / (f m - 1)) * f m ^ logb m ↑(n ^ k) := h_ineq1 hm (Nat.one_lt_pow hk hn)
    _ = (m * f m / (f m - 1)) * f m ^ (k * logb m n) := by rw [Nat.cast_pow, logb_pow]

include hm hn notbdd in
/-- Given two natural numbers `n, m` greater than 1 we have `f n ≤ f m ^ logb m n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3edb13cdff78abe1e73b357aee38e8342727f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
