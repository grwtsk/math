# integral_EL_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ec4dec-ea68-b07a-5823-b5d444a893a2",
  "kind": "theorem",
  "lexical_name": "integral_EL_mul",
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
  "slug": "integral-el-mul--e0bf7681ca929a69f0cab332",
  "source": {
    "blob": "b11805266fa0912a0a3fc34dcca5b5413e43294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0bf7681ca929a69f0cab332f4ab3b5a4ed0b4c862ef1776c632c3f9483f4603",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ec4dec-ea68-b07a-5823-b5d444a893a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_EL_mul (τ : ℝ) {L : ℝ} (hL : 0 < L) :
    ∫ u : ℝ, EL L u * cexp (-I * τ * u)
      = ((2 * ((((Real.exp L : ℝ) : ℂ) ^ ((1 / 2 : ℂ) + I * τ) - 1) / ((1 / 2 : ℂ) + I * τ)).re : ℝ) : ℂ) := by
  set s : ℂ := 1 / 2 + I * τ with hs
  have hs0 : s ≠ 0 := half_add_I_mul_ne_zero τ
  have hsc : conj s = 1 / 2 - I * τ := by
    rw [hs, map_add, map_mul, Complex.conj_I, Complex.conj_ofReal, map_div₀, map_one, map_ofNat]
    ring
  have hsc0 : conj s ≠ 0 := by rw [hsc]; exact half_sub_I_mul_ne_zero τ
  -- to a set integral, then an interval integral, then split at 0
  have hind : (fun u : ℝ => EL L u * cexp (-I * τ * u))
      = (Icc (-L) L).indicator (fun u => (Real.exp (|u| / 2) : ℂ) * cexp (-I * τ * u)) := by
    ext u; simp only [EL, Set.indicator_mul_left]
  rw [hind, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -L ≤ L)]
  have hcont : Continuous fun u : ℝ => (Real.exp (|u| / 2) : ℂ) * cexp (-I * τ * u) := by fun_prop
  rw [← intervalIntegral.integral_add_adjacent_intervals (b := 0)
    (hcont.intervalIntegrable _ _) (hcont.intervalIntegrable _ _)]
  have e1 : EqOn (fun u : ℝ => (Real.exp (|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u => cexp (-s * u)) (uIcc (-L) 0) := by
    intro u hu
    rw [uIcc_of_le (by linarith)] at hu
    simp only [abs_of_nonpos hu.2, Complex.ofReal_exp, ← Complex.exp_add, hs]
    congr 1; push_cast; ring
  have e2 : EqOn (fun u : ℝ => (Real.exp (|u| / 2) : ℂ) * cexp (-I * τ * u))
      (fun u => cexp (conj s * u)) (uIcc 0 L) := by
    intro u hu
    rw [uIcc_of_le hL.le] at hu
    simp only [abs_of_nonneg hu.1, Complex.ofReal_exp, ← Complex.exp_add, hsc]
    congr 1; push_cast; ring
  rw [intervalIntegral.integral_congr e1, intervalIntegral.integral_congr e2,
    integral_exp_mul_complex (neg_ne_zero.mpr hs0), integral_exp_mul_complex hsc0]
  -- evaluate: z + conj z with z = (X^s - 1)/s
  have hz : (cexp (-s * (0 : ℝ)) - cexp (-s * ((-L : ℝ) : ℂ))) / -s
      = (((Real.exp L : ℝ) : ℂ) ^ s - 1) / s := by
    rw [exp_cpow]
    simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, Complex.ofReal_neg, mul_neg, neg_mul,
      neg_neg]
    rw [mul_comm s L]
    field_simp
    ring
  have hzc : (cexp (conj s * (L : ℝ)) - cexp (conj s * ((0 : ℝ) : ℂ))) / conj s
      = conj ((((Real.exp L : ℝ) : ℂ) ^ s - 1) / s) := by
    rw [exp_cpow, map_div₀, map_sub, map_one, ← Complex.exp_conj, map_mul, Complex.conj_ofReal]
    simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
    rw [mul_comm (conj s) L]
  rw [hz, hzc, Complex.add_conj]

/-- *Pole term*: for k continuous with `supp k ⊆ [−L, L]` and h integrable on ℝ,
`h(i/2) + h(−i/2) = ∫ h Π_X`, `X = e^L`
(uses `∫_ℝ e^{−|u|/2}e^{−iτu}du = (1/4+τ²)^{-1}` and `∫_{−L}^{L} e^{|u|/2}e^{−iτu}du = 2Re((X^s−1)/s)`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variant9f7b181eb497184397d98f92681c4218c8ae9b7bf9f896b01a025949077639db.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11805266fa0912a0a3fc34dcca5b5413e43294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
