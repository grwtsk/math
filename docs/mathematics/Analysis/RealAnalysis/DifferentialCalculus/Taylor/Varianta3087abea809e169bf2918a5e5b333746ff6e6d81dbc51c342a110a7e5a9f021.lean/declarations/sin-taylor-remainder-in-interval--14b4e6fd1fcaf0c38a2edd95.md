# sin_taylor_remainder_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb8dc59c-1586-456f-a9cc-ac0d27c6dcc9",
  "kind": "theorem",
  "lexical_name": "sin_taylor_remainder_in_interval",
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
  "slug": "sin-taylor-remainder-in-interval--14b4e6fd1fcaf0c38a2edd95",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 898,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b4e6fd1fcaf0c38a2edd955d60346822c2cbf5c0ad4916ecaabe4fecd27715",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8dc59c-1586-456f-a9cc-ac0d27c6dcc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_taylor_remainder_in_interval {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    Real.sin x - ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.sin 0 / i.factorial) * x ^ i
    ∈ sinRemainderBoundComputable I n := by
  -- Extract domain info
  have ⟨hr_nonneg, habs_x, hdom, h0a, h0b, hab⟩ := domain_from_mem hx
  set r := maxAbs I
  set R := (r ^ (n + 1) / ratFactorial (n + 1))

  -- Apply Taylor theorem with M = 1
  have hsin_smooth : ContDiff ℝ (n + 1) Real.sin := Real.contDiff_sin.of_le le_top
  have hderiv_bound : ∀ y ∈ Set.Icc ((-r : ℚ) : ℝ) (r : ℚ),
      ‖iteratedDeriv (n + 1) Real.sin y‖ ≤ 1 := by
    intro y _; exact (sin_cos_deriv_bound (n + 1) y).1
  have hTaylor := taylor_remainder_bound hab h0a h0b hsin_smooth hderiv_bound
    (by norm_num : (0 : ℝ) ≤ 1) x hdom

  -- Compute remainder bound
  have hx_pow_bound : |x| ^ (n + 1) ≤ (r : ℝ) ^ (n + 1) :=
    pow_le_pow_left₀ (abs_nonneg x) habs_x _
  have hfact_pos : (0 : ℝ) < (n + 1).factorial := Nat.cast_pos.mpr (Nat.factorial_pos _)
  have hrem_bound : 1 * |x - 0| ^ (n + 1) / (n + 1).factorial ≤ (R : ℝ) := by
    simp only [sub_zero, one_mul]
    calc |x| ^ (n + 1) / (n + 1).factorial
        ≤ (r : ℝ) ^ (n + 1) / (n + 1).factorial :=
          div_le_div_of_nonneg_right hx_pow_bound hfact_pos.le
      _ = (R : ℝ) := by simp only [R, ratFactorial, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast]

  -- Convert to interval membership
  simp only [sinRemainderBoundComputable, mem_def, ratFactorial]
  have h := hTaylor
  simp only [sub_zero, one_mul] at h hrem_bound
  rw [Real.norm_eq_abs] at h
  have hbound : |Real.sin x - ∑ i ∈ Finset.range (n + 1),
      (iteratedDeriv i Real.sin 0 / i.factorial) * x ^ i| ≤ (R : ℝ) :=
    le_trans h hrem_bound
  have habs := abs_le.mp hbound
  simp only [R, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast, Rat.cast_neg] at habs ⊢
  exact habs

/-- Unified Taylor remainder bound for cos: given x ∈ I with r = maxAbs I,
    the Taylor remainder |cos x - poly(x)| ≤ r^(n+1) / (n+1)!.
    Uses the fact that |cos^(k)(x)| ≤ 1 for all k, x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
