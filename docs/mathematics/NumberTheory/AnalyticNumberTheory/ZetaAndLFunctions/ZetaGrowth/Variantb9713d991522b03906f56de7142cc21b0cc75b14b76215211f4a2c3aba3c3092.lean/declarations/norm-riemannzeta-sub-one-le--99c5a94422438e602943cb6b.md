# norm_riemannZeta_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05fe48b8-a3ec-508d-72a8-bf438f0494e9",
  "kind": "theorem",
  "lexical_name": "norm_riemannZeta_sub_one_le",
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
  "slug": "norm-riemannzeta-sub-one-le--99c5a94422438e602943cb6b",
  "source": {
    "blob": "5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 159,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99c5a94422438e602943cb6ba376b14c6f4b8185f479cf3deec41d9b7c162164",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05fe48b8-a3ec-508d-72a8-bf438f0494e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_riemannZeta_sub_one_le {s : ℂ} (hs : 2 ≤ s.re) :
    ‖riemannZeta s - 1‖ ≤ Real.pi ^ 2 / 6 - 1 := by
  have hs1 : 1 < s.re := by linarith
  -- the shifted Dirichlet series  f n := 1/(n+1)^s,  ζ s = ∑' f n
  set f : ℕ → ℂ := fun n => 1 / ((n : ℂ) + 1) ^ s with hf
  have hsum : Summable f := by
    have h0 := Complex.summable_one_div_nat_cpow.mpr hs1
    have := (summable_nat_add_iff 1).mpr h0
    simpa [f] using this
  have hzeta : riemannZeta s = ∑' n, f n := zeta_eq_tsum_one_div_nat_add_one_cpow hs1
  have hf0 : f 0 = 1 := by simp [f]
  have hsplit : riemannZeta s - 1 = ∑' n, f (n + 1) := by
    rw [hzeta, hsum.tsum_eq_zero_add, hf0]; ring
  -- termwise comparison with 1/(n+2)^2
  have hle : ∀ n : ℕ, ‖f (n + 1)‖ ≤ 1 / ((n : ℝ) + 2) ^ 2 := by
    intro n
    have hpos : 0 < n + 2 := by omega
    have hf1 : f (n + 1) = 1 / ((n + 2 : ℕ) : ℂ) ^ s := by
      simp only [f]
      congr 2
      push_cast
      ring
    rw [hf1, norm_div, norm_one, Complex.norm_natCast_cpow_of_pos hpos]
    have hbase : (1 : ℝ) ≤ ((n + 2 : ℕ) : ℝ) := by exact_mod_cast hpos
    have hpow : ((n + 2 : ℕ) : ℝ) ^ (2 : ℝ) ≤ ((n + 2 : ℕ) : ℝ) ^ s.re :=
      Real.rpow_le_rpow_of_exponent_le hbase hs
    rw [Real.rpow_two] at hpow
    have h2pos : (0 : ℝ) < ((n + 2 : ℕ) : ℝ) ^ 2 := by positivity
    calc 1 / ((n + 2 : ℕ) : ℝ) ^ s.re ≤ 1 / ((n + 2 : ℕ) : ℝ) ^ 2 :=
          one_div_le_one_div_of_le h2pos hpow
      _ = 1 / ((n : ℝ) + 2) ^ 2 := by push_cast; ring
  have htwo : HasSum (fun n : ℕ => 1 / ((n : ℝ) + 2) ^ 2) (Real.pi ^ 2 / 6 - 1) := by
    have h := (hasSum_nat_add_iff' 2).mpr hasSum_zeta_two
    norm_num [Finset.sum_range_succ] at h
    exact h.congr_fun fun n => by ring
  rw [hsplit]
  have hsum' : Summable (fun n => f (n + 1)) := (summable_nat_add_iff 1).mpr hsum
  calc ‖∑' n, f (n + 1)‖ ≤ ∑' n, ‖f (n + 1)‖ := norm_tsum_le_tsum_norm hsum'.norm
    _ ≤ ∑' n : ℕ, 1 / ((n : ℝ) + 2) ^ 2 := hsum'.norm.tsum_le_tsum hle htwo.summable
    _ = Real.pi ^ 2 / 6 - 1 := htwo.tsum_eq

/-- π²/6 − 1 < 1 (π < 3.15 ⇒ π² < 9.93 < 12). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
