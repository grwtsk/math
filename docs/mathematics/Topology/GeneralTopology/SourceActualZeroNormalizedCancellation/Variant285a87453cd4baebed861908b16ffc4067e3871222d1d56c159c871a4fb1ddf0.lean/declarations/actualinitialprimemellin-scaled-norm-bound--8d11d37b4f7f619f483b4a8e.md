# actualInitialPrimeMellin_scaled_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0822d7f-0533-09d2-ca33-7115fb8eaac2",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_scaled_norm_bound",
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
  "slug": "actualinitialprimemellin-scaled-norm-bound--8d11d37b4f7f619f483b4a8e",
  "source": {
    "blob": "719328c801d622816d197f6dfb21e2d2b364f417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant285a87453cd4baebed861908b16ffc4067e3871222d1d56c159c871a4fb1ddf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d11d37b4f7f619f483b4a8e109c04f512493e939f81bff96d5fe12eb44f79ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant285a87453cd4baebed861908b16ffc4067e3871222d1d56c159c871a4fb1ddf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0822d7f-0533-09d2-ca33-7115fb8eaac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_scaled_norm_bound (s : ℂ) (hs : s ≠ 1 / 2) :
    ∃ K R : ℝ, 0 ≤ K ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualInitialPrimeMellin A s‖ ≤
        K * Real.exp (-(1 - 2 * |s.re - 1 / 2|) * A) := by
  let q : ℝ := ‖s - 1 / 2‖
  have hq : 0 < q := norm_pos_iff.mpr (sub_ne_zero.mpr hs)
  let K : ℝ := (109395 / 4096 : ℝ) * (204288 : ℝ) ^ 2 *
    (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) / q ^ 10
  refine ⟨K,max 1 q⁻¹,by dsimp [K]; positivity,le_max_left _ _,?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hp : 0 < A := by linarith
  have hAq : q⁻¹ ≤ A := (le_max_right _ _).trans hA
  have hf : 1 ≤ A * q := by
    calc
      1 = q⁻¹ * q := (inv_mul_cancel₀ hq.ne').symm
      _ ≤ A * q := mul_le_mul_of_nonneg_right hAq hq.le
  have hn : ‖(A : ℂ) * (s - 1 / 2)‖ = A * q := by
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hp]
    rfl
  have hr : |((A : ℂ) * (s - 1 / 2)).re| = A * |s.re - 1 / 2| := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul,
      sub_zero, Complex.sub_re, Complex.div_ofNat_re]
    rw [abs_mul, abs_of_pos hp]
  have hb := bump_abs_re_norm_le ((A : ℂ) * (s - 1 / 2)) (by rw [hn]; exact hf)
  rw [hn, hr, mul_pow] at hb
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  have hweight : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  have hu : ‖actualInitialPrimeMellin A s‖ ≤
      (A / (4096 / 109395 : ℝ)) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        (204288 * Real.exp (A * |s.re - 1 / 2|) / (A ^ 5 * q ^ 5)) ^ 2 := by
    rw [hweight]
    gcongr
  have he : Real.exp (A * |s.re - 1 / 2|) ^ 2 =
      Real.exp (2 * (A * |s.re - 1 / 2|)) := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  have hscl : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul, hscl]
  apply (mul_le_mul_of_nonneg_left hu (by positivity)).trans_eq
  rw [div_pow, mul_pow, he]
  dsimp only [K]
  have heq : -(1 - 2 * |s.re - 1 / 2|) * A =
      -A + 2 * (A * |s.re - 1 / 2|) := by ring
  rw [heq, Real.exp_add]
  field_simp
  ring

/-- Every fixed point strictly inside the true strip has a vanishing normalized source weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant285a87453cd4baebed861908b16ffc4067e3871222d1d56c159c871a4fb1ddf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroNormalizedCancellation/Variant285a87453cd4baebed861908b16ffc4067e3871222d1d56c159c871a4fb1ddf0.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719328c801d622816d197f6dfb21e2d2b364f417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
