# sum_norm_eGen_sq_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aed1443-7902-ff1a-8b2e-cef2437c7710",
  "kind": "theorem",
  "lexical_name": "sum_norm_eGen_sq_div_le",
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
  "slug": "sum-norm-egen-sq-div-le--6c4aef0e7dcc1658c009445f",
  "source": {
    "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c4aef0e7dcc1658c009445f425922ce0faeaed8108f7acadfa14af929cee84b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aed1443-7902-ff1a-8b2e-cef2437c7710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_norm_eGen_sq_div_le (hre : ∀ T, (Lb T).re = l T / 2) {T : ℝ} (hT : T0re ≤ T) (r : ℕ) {x : ℝ} (hx2 : 2 ≤ x)
    (hxl : x ≤ Real.exp (l T)) :
    ∑ N ∈ Ioc 0 ⌊x⌋₊, ‖eGen Lb T r N‖ ^ 2 / N ≤ CF * (4 / l T) ^ (2 * r) * Real.log x ^ 2 := by
  have hl := l_ge_of_T0re_le hT
  have hKe : 0 ≤ 128 * Real.exp 1 * KM := mul_nonneg (by positivity) KM_nonneg
  have hl2 : 2 ≤ l T := by linarith
  have hl0 : 0 < l T := by linarith
  have hnorm : l T / 2 ≤ ‖Lb T‖ := norm_base_ge hre T
  have hLpos : 0 < ‖Lb T‖ := lt_of_lt_of_le (by linarith) hnorm
  set x' := 2 / ‖Lb T‖ with hx'
  have hx'0 : 0 ≤ x' := by positivity
  have hx'le : x' ≤ 4 / l T := by
    rw [hx', div_le_div_iff₀ hLpos hl0]; linarith
  have hxpos : 0 < x := by linarith
  set u := Real.log x with hudef
  have hu0 : 0 ≤ u := Real.log_nonneg (by linarith)
  have hul : u ≤ l T := (Real.log_le_iff_le_exp hxpos).mpr hxl
  have hxexp : ⌊x⌋₊ = ⌊Real.exp u⌋₊ := by rw [hudef, Real.exp_log hxpos]
  -- hypotheses of the Upper machinery at x'
  have hxu : x' * u ≤ 4 := by
    calc x' * u ≤ (4 / l T) * l T := mul_le_mul hx'le hul hu0 (by positivity)
      _ = 4 := by field_simp
  have hxK : 32 * Real.exp 1 * KM * x' ≤ 1 := by
    calc 32 * Real.exp 1 * KM * x' ≤ 32 * Real.exp 1 * KM * (4 / l T) :=
          mul_le_mul_of_nonneg_left hx'le (mul_nonneg (by positivity) KM_nonneg)
      _ = (128 * Real.exp 1 * KM) / l T := by ring
      _ ≤ 1 := by rw [div_le_one hl0]; linarith
  have hF := sum_Fmaj_sq_div_le hx'0 hu0 hxu hxK
  rw [← hxexp] at hF
  -- pointwise
  have hpt : ∀ N ∈ Ioc 0 ⌊x⌋₊, ‖eGen Lb T r N‖ ^ 2 / N ≤ x' ^ (2 * r) * u ^ 2 * (Fmaj x' N ^ 2 / N) := by
    intro N hN
    have hN0 : (0:ℝ) < N := by exact_mod_cast (mem_Ioc.mp hN).1
    have hlogN : Real.log N ≤ u := by
      rw [hxexp] at hN; exact log_le_of_mem_Ioc_floor_exp hN
    have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
    have hFm0 : 0 ≤ Fmaj x' N := Fmaj_nonneg hx'0 N
    have he := norm_eGen_le Lb T r N
    have he0 : 0 ≤ ‖eGen Lb T r N‖ := norm_nonneg _
    have hsq : ‖eGen Lb T r N‖ ^ 2 ≤ (x' ^ r * (u * Fmaj x' N)) ^ 2 := by
      apply pow_le_pow_left₀ he0
      refine he.trans ?_
      exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hlogN hFm0) (pow_nonneg hx'0 _)
    calc ‖eGen Lb T r N‖ ^ 2 / N ≤ (x' ^ r * (u * Fmaj x' N)) ^ 2 / N :=
          div_le_div_of_nonneg_right hsq hN0.le
      _ = x' ^ (2 * r) * u ^ 2 * (Fmaj x' N ^ 2 / N) := by rw [pow_mul]; ring
  calc ∑ N ∈ Ioc 0 ⌊x⌋₊, ‖eGen Lb T r N‖ ^ 2 / N
      ≤ ∑ N ∈ Ioc 0 ⌊x⌋₊, x' ^ (2 * r) * u ^ 2 * (Fmaj x' N ^ 2 / N) := Finset.sum_le_sum hpt
    _ = x' ^ (2 * r) * u ^ 2 * ∑ N ∈ Ioc 0 ⌊x⌋₊, Fmaj x' N ^ 2 / N := by rw [Finset.mul_sum]
    _ ≤ (4 / l T) ^ (2 * r) * u ^ 2 * CF := by gcongr
    _ = CF * (4 / l T) ^ (2 * r) * u ^ 2 := by ring

/-! ### (H3), (H2), (H1) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
