# goldbachSquareTotal_double_ge_log_theta_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d2f4207-a8a0-f38d-5090-62e4b6363d20",
  "kind": "theorem",
  "lexical_name": "goldbachSquareTotal_double_ge_log_theta_difference",
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
  "slug": "goldbachsquaretotal-double-ge-log-theta-difference--11782b63a03f29379ec4fb45",
  "source": {
    "blob": "6e86d3afbb8938da5ab60190be12ce61cbe8c672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11782b63a03f29379ec4fb4549f7ee0af1788f864fdde40a0ecebffa818228f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2f4207-a8a0-f38d-5090-62e4b6363d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSquareTotal_double_ge_log_theta_difference
    {n : ℕ} (hn : 2 ≤ n) :
    Real.log (n : ℝ) * (goldbachPrimeLogTotal (2 * n) - goldbachPrimeLogTotal n) ≤
      goldbachPrimeLogSquareTotal (2 * n) := by
  have hsmall : (∑ k ∈ Finset.range (2 * n + 1),
      if k ≤ n then primeLogWeight k else 0) = goldbachPrimeLogTotal n := by
    rw [← Finset.sum_filter]
    have hfilter : (Finset.range (2 * n + 1)).filter (fun k => k ≤ n) =
        Finset.range (n + 1) := by
      ext k
      simp only [Finset.mem_filter, Finset.mem_range]
      omega
    rw [hfilter]
    rfl
  have hpoint : ∀ k ∈ Finset.range (2 * n + 1),
      Real.log (n : ℝ) * primeLogWeight k ≤
        primeLogWeight k ^ 2 +
          Real.log (n : ℝ) * (if k ≤ n then primeLogWeight k else 0) := by
    intro k hk
    by_cases hkn : k ≤ n
    · simp only [if_pos hkn]
      nlinarith [sq_nonneg (primeLogWeight k)]
    · by_cases hp : Nat.Prime k
      · have hnp : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
        have hnk : (n : ℝ) ≤ k := by exact_mod_cast (show n ≤ k by omega)
        have hl : Real.log (n : ℝ) ≤ Real.log (k : ℝ) := Real.log_le_log hnp hnk
        have hw := primeLogWeight_nonneg k
        simp only [primeLogWeight, if_pos hp] at hw ⊢
        simp only [if_neg hkn, mul_zero, add_zero]
        nlinarith [mul_nonneg hw (sub_nonneg.mpr hl)]
      · simp [primeLogWeight, hp]
  have hsum := Finset.sum_le_sum hpoint
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum] at hsum
  rw [hsmall] at hsum
  change Real.log (n : ℝ) * goldbachPrimeLogTotal (2 * n) ≤
    goldbachPrimeLogSquareTotal (2 * n) + Real.log (n : ℝ) * goldbachPrimeLogTotal n at hsum
  linarith

/-- A genuine lower estimate derived from the explicitly supplied theta
rate, not from the unknown Goldbach convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorEnergyBarrier.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e86d3afbb8938da5ab60190be12ce61cbe8c672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
