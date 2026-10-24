# exp_taylor_remainder_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 837,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c555e2fb-0c10-c91e-32ce-46061e9ae283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeac4386-478f-0911-062d-19ad73564a5c",
  "kind": "theorem",
  "lexical_name": "exp_taylor_remainder_in_interval",
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
  "slug": "exp-taylor-remainder-in-interval--397b098cb5f3aa50d582770f",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 837,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397b098cb5f3aa50d582770f59d9c9bca943887555944b3eda527f8e1fc612c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeac4386-478f-0911-062d-19ad73564a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_taylor_remainder_in_interval {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    Real.exp x - ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i
    ∈ expRemainderBoundComputable I n := by
  -- Extract domain info
  have ⟨hr_nonneg, habs_x, hdom, h0a, h0b, hab⟩ := domain_from_mem hx
  set r := maxAbs I
  set R := ((3 : ℚ) ^ (Nat.ceil r + 1) * r ^ (n + 1) / ratFactorial (n + 1))

  -- Apply Taylor theorem
  have hexp_smooth : ContDiff ℝ (n + 1) Real.exp := Real.contDiff_exp.of_le le_top
  have hderiv_bound : ∀ y ∈ Set.Icc ((-r : ℚ) : ℝ) (r : ℚ),
      ‖iteratedDeriv (n + 1) Real.exp y‖ ≤ Real.exp r := by
    intro y hy
    rw [iteratedDeriv_eq_iterate, Real.iter_deriv_exp, Real.norm_eq_abs, abs_of_pos (Real.exp_pos y)]
    exact Real.exp_le_exp.mpr hy.2
  have hTaylor := taylor_remainder_bound hab h0a h0b hexp_smooth hderiv_bound
    (Real.exp_pos (r : ℚ)).le x hdom

  -- Compute remainder bound
  have hr_nonneg_rat : 0 ≤ r := le_max_of_le_left (abs_nonneg I.lo)
  have hexp_r_bound : Real.exp (r : ℚ) ≤ (3 : ℝ) ^ (Nat.ceil r + 1) := by
    apply exp_bound_by_pow3 hr_nonneg_rat
    rw [abs_of_nonneg hr_nonneg]
  have hx_pow_bound : |x| ^ (n + 1) ≤ (r : ℝ) ^ (n + 1) :=
    pow_le_pow_left₀ (abs_nonneg x) habs_x _
  have hfact_pos : (0 : ℝ) < (n + 1).factorial := Nat.cast_pos.mpr (Nat.factorial_pos _)
  have hrem_bound : Real.exp (r : ℚ) * |x - 0| ^ (n + 1) / (n + 1).factorial ≤ (R : ℝ) := by
    simp only [sub_zero]
    calc Real.exp (r : ℚ) * |x| ^ (n + 1) / (n + 1).factorial
        ≤ (3 : ℝ) ^ (Nat.ceil r + 1) * (r : ℝ) ^ (n + 1) / (n + 1).factorial := by
          apply div_le_div_of_nonneg_right _ hfact_pos.le
          apply mul_le_mul hexp_r_bound hx_pow_bound (pow_nonneg (abs_nonneg x) _)
          apply pow_nonneg; norm_num
      _ = (R : ℝ) := by
          simp only [R, ratFactorial, Rat.cast_div, Rat.cast_mul, Rat.cast_pow,
            Rat.cast_natCast, Rat.cast_ofNat]

  -- Convert to interval membership
  simp only [expRemainderBoundComputable, mem_def, ratFactorial]
  have h := hTaylor
  simp only [sub_zero] at h hrem_bound
  rw [Real.norm_eq_abs] at h
  have hbound : |Real.exp x - ∑ i ∈ Finset.range (n + 1),
      (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i| ≤ (R : ℝ) :=
    le_trans h hrem_bound
  have habs := abs_le.mp hbound
  simp only [R, Rat.cast_div, Rat.cast_mul, Rat.cast_pow, Rat.cast_natCast, Rat.cast_ofNat,
    Rat.cast_neg] at habs ⊢
  exact habs

/-- Unified Taylor remainder bound for sin: given x ∈ I with r = maxAbs I,
    the Taylor remainder |sin x - poly(x)| ≤ r^(n+1) / (n+1)!.
    Uses the fact that |sin^(k)(x)| ≤ 1 for all k, x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
