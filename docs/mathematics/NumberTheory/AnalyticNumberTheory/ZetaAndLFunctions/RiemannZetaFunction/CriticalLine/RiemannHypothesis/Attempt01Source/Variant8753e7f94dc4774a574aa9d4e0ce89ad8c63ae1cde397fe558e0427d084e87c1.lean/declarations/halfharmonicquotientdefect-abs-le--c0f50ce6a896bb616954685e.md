# halfHarmonicQuotientDefect_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed7c1639-f199-f482-c1de-82d465d30a23",
  "kind": "theorem",
  "lexical_name": "halfHarmonicQuotientDefect_abs_le",
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
  "slug": "halfharmonicquotientdefect-abs-le--c0f50ce6a896bb616954685e",
  "source": {
    "blob": "346dd4667ca102db0e97f551ac007d919898c4db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f50ce6a896bb616954685ee9093e6300caf78170bc25f9b5598478ff705803",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed7c1639-f199-f482-c1de-82d465d30a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfHarmonicQuotientDefect_abs_le (L d : ℕ) (hd : 1 ≤ d) (hdL : d ≤ L) :
    |halfHarmonicQuotientDefect L d| ≤ 2 / Real.sqrt (L : ℝ) := by
  let q := L / d
  have hd0 : 0 < d := by omega
  have hq : 1 ≤ q := (Nat.le_div_iff_mul_le hd0).2 (by simpa using hdL)
  have hL : 1 ≤ L := hd.trans hdL
  have hdR : 0 < (d : ℝ) := by exact_mod_cast hd0
  have hqR : 0 < (q : ℝ) := by exact_mod_cast (show 0 < q by omega)
  have hLR : 0 < (L : ℝ) := by exact_mod_cast (show 0 < L by omega)
  have hrem : (L : ℝ) - (d : ℝ) * (q : ℝ) < (d : ℝ) := by
    have he := Nat.mod_add_div L d
    have hm := Nat.mod_lt L hd0
    have heR : ((L % d : ℕ) : ℝ) + (d : ℝ) * (q : ℝ) = (L : ℝ) := by
      exact_mod_cast he
    have hmR : ((L % d : ℕ) : ℝ) < (d : ℝ) := by exact_mod_cast hm
    linarith
  have hpL : (d : ℝ) * (q : ℝ) ≤ (L : ℝ) := by
    have he := Nat.mod_add_div L d
    have heR : ((L % d : ℕ) : ℝ) + (d : ℝ) * (q : ℝ) = (L : ℝ) := by
      exact_mod_cast he
    linarith [Nat.cast_nonneg (L % d)]
  have hL2 : (L : ℝ) ≤ 2 * ((d : ℝ) * (q : ℝ)) := by
    have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
    nlinarith
  let p : ℝ := Real.sqrt (d : ℝ) * Real.sqrt (q : ℝ)
  have hp0 : 0 < p := by dsimp [p]; positivity
  have hp2 : p ^ 2 = (d : ℝ) * (q : ℝ) := by
    dsimp [p]
    rw [mul_pow, Real.sq_sqrt hdR.le, Real.sq_sqrt hqR.le]
  have hs2 : (Real.sqrt (L : ℝ)) ^ 2 = (L : ℝ) := Real.sq_sqrt hLR.le
  have hs0 : 0 < Real.sqrt (L : ℝ) := Real.sqrt_pos.2 hLR
  have hps : p ≤ Real.sqrt (L : ℝ) := by
    dsimp [p]
    rw [← Real.sqrt_mul hdR.le]
    exact Real.sqrt_le_sqrt hpL
  have hgap : Real.sqrt (L : ℝ) - p ≤ (d : ℝ) / Real.sqrt (L : ℝ) := by
    apply (le_div_iff₀ hs0).2
    nlinarith [mul_nonneg hp0.le (sub_nonneg.mpr hps)]
  have hscale : Real.sqrt (L : ℝ) ≤ 2 * p := by nlinarith
  have htail := halfHarmonicFractionalTail_bounds q hq
  have hr0 : 0 ≤ halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) := by positivity
  have hr : halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) ≤
      2 / Real.sqrt (L : ℝ) := by
    calc
      _ ≤ (1 / Real.sqrt (q : ℝ)) / Real.sqrt (d : ℝ) :=
        div_le_div_of_nonneg_right htail.2 (Real.sqrt_nonneg _)
      _ = 1 / p := by dsimp [p]; ring
      _ ≤ _ := (div_le_div_iff₀ hp0 hs0).2 (by simpa using hscale)
  let pole : ℝ := 2 * (Real.sqrt (L : ℝ) - p) / (d : ℝ)
  have hpole0 : 0 ≤ pole := by dsimp [pole]; positivity
  have hpole : pole ≤ 2 / Real.sqrt (L : ℝ) := by
    have hm := mul_le_mul_of_nonneg_left hgap (show 0 ≤ 2 / (d : ℝ) by positivity)
    dsimp [pole]
    have he : (2 / (d : ℝ)) * ((d : ℝ) / Real.sqrt (L : ℝ)) =
        2 / Real.sqrt (L : ℝ) := by field_simp
    rw [he] at hm
    nlinarith
  have he : halfHarmonicQuotientDefect L d =
      halfHarmonicFractionalTail q / Real.sqrt (d : ℝ) - pole := by
    unfold halfHarmonicQuotientDefect
    rw [finiteHalfHarmonic_eq_sqrt_zeta_tail (L / d) hq]
    dsimp [pole, p, q]
    have hs := Real.sq_sqrt hdR.le
    field_simp
    nlinarith
  rw [he, abs_le]
  constructor <;> linarith

/-- Exact finite pole cancellation leaves the original signed Moebius half sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346dd4667ca102db0e97f551ac007d919898c4db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
