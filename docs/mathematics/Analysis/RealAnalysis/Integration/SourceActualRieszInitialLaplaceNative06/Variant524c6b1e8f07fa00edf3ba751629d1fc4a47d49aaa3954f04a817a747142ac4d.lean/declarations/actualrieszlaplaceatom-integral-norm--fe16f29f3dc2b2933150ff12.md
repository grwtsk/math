# actualRieszLaplaceAtom_integral_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b67664bf-93c8-01a7-ef76-5ffd58d97e59",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtom_integral_norm",
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
  "slug": "actualrieszlaplaceatom-integral-norm--fe16f29f3dc2b2933150ff12",
  "source": {
    "blob": "88445f92cb289bbd0fae0706eb8c9c71f99bae3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 238,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe16f29f3dc2b2933150ff12bbf2da4360918e444818a31148e49c7c9e661343",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67664bf-93c8-01a7-ef76-5ffd58d97e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtom_integral_norm {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    (∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) =
      ‖LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ))
        ((z.re + 1 / 2 : ℝ) : ℂ) n‖ / z.re^2 := by
  by_cases hn : n = 0
  · subst n
    simp [actualRieszLaplaceAtom]
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    have ha : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn)
    have hcoef : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) :=
      div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
    have hnorm (t : ℝ) : ‖actualRieszLaplaceAtom z n t‖ =
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          ‖((max (0 : ℝ) (t - Real.log n) : ℝ) : ℂ) *
            Complex.exp (-z * (t : ℂ))‖ := by
      rw [atom_factor, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg hcoef]
    simp_rw [hnorm]
    rw [integral_const_mul, actualSingleRieszRamp_integral_norm hz ha,
      LSeries.term_def₀ (by simp)]
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
      Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn)]
    have hsqrt : Real.sqrt (n : ℝ) = Real.exp (Real.log n / 2) := by
      symm
      rw [Real.exp_half, Real.exp_log hn0]
    rw [hsqrt, Real.rpow_def_of_pos hn0]
    simp only [neg_re, Complex.ofReal_re]
    rw [div_eq_mul_inv, ← Real.exp_neg, mul_assoc, ← mul_div_assoc, ← Real.exp_add]
    have he : -(Real.log (n : ℝ) / 2) + -z.re * Real.log n =
        Real.log n * -(z.re + 1 / 2) := by ring
    rw [he, mul_div_assoc]

/-- Genuine Dirichlet summability gives the actual sum-integral norm bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88445f92cb289bbd0fae0706eb8c9c71f99bae3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
