# DirichletCharacter.eulerProduct_log_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9604937-f3cb-5313-0e16-d0d03606b7bb",
  "kind": "theorem",
  "lexical_name": "DirichletCharacter.eulerProduct_log_eq_LSeries",
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
  "slug": "dirichletcharacter-eulerproduct-log-eq-lseries--25678839cf508353a4e730f5",
  "source": {
    "blob": "5e736399417772e88ffed62b99b22deab944529a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25678839cf508353a4e730f5c381980ccfe2d5eba8501d7ccb05ee06fb468a97",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9604937-f3cb-5313-0e16-d0d03606b7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DirichletCharacter.eulerProduct_log_eq_LSeries (hs : 1 < s.re) :
    ∑' p : Primes, -log (1 - χ p * p ^ (-s)) = LSeries (fun n ↦ χ n * Λ n / Real.log n) s := by
  have hpow_le (p : Primes) : ‖χ p * (p : ℂ) ^ (-s)‖ < 1 := by
    grw [norm_mul, norm_le_one, norm_natCast_cpow_of_pos (mod_cast p.prop.pos), neg_re, one_mul]
    apply rpow_lt_one_of_one_lt_of_neg (mod_cast p.prop.one_lt) (by linarith)
  rw [tsum_congr (fun p ↦ (hasSum_taylorSeries_neg_log' (hpow_le p)).tsum_eq.symm),
    LSeries_def₀ (by simp)]
  let f : ℕ → ℂ := fun n ↦ χ n * Λ n / Real.log n * ((n : ℂ) ^ (-s))
  calc
    _ = ∑' (p : Primes) (k : ℕ), (χ (p ^ (k + 1)) * ((p ^ (k + 1) : ℕ) : ℂ) ^ (-s)) *
          Λ (p ^ (k + 1)) / Real.log (p ^ (k + 1)) := by
      refine tsum_congr fun p ↦ tsum_congr fun k ↦ ?_
      have : Complex.log p ≠ 0 := mod_cast p.prop.log_ne_zero
      simp [mul_pow, ← cpow_nat_mul, ← natCast_cpow_natCast_mul, vonMangoldt_apply_pow,
        vonMangoldt_apply_prime p.2, field]
    _ = ∑' n : {n : ℕ // IsPrimePow n}, f n := by
      rw [← tsum_primes_pow_eq]
      · exact tsum_congr fun p ↦ tsum_congr fun k ↦ (by unfold f; simp; ring)
      · apply comp_injective _ Subtype.coe_injective (f := f)
        apply of_norm_bounded_eventually_nat (g := (↑· ^ (-s.re)))
        · simp [hs]
        · filter_upwards [eventually_gt_atTop 1] with n hn
          simp only [f, norm_mul, norm_div, norm_real, norm_eq_abs]
          grw [norm_le_one, vonMangoldt_le_log]
          have := log_pos (x := n) (mod_cast hn)
          field_simp
          rw [← ofReal_natCast n, norm_cpow_eq_rpow_re_of_nonneg (by simp) (by simp; grind)]
          simp
    _ = _ := by
      simp only [div_eq_mul_inv _ (_ ^ _), ← cpow_neg]
      suffices (Function.support f) ⊆ {n | IsPrimePow n} from
        tsum_subtype_eq_of_support_subset this
      intro n hn
      contrapose! hn
      simp [f, vonMangoldt_eq_zero_iff.mpr hn]

/-- For `1 < s.re`, the Dirichlet L-function is the exponential of the `L`-series of
`n ↦ χ n * Λ n / Real.log n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant75c52a0d57b74020de3cfb9fe25bac53a24bfbe8fcb57f04e0dac12dce85c627.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e736399417772e88ffed62b99b22deab944529a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
