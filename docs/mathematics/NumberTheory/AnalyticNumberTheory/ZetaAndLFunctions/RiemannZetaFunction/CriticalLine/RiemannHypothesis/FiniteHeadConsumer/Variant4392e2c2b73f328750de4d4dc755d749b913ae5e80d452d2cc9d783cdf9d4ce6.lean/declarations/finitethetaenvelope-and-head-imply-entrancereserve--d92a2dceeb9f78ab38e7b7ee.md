# finiteThetaEnvelope_and_head_imply_entranceReserve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44de02fc-9f66-cf34-f0d2-9d8a032370e5",
  "kind": "theorem",
  "lexical_name": "finiteThetaEnvelope_and_head_imply_entranceReserve",
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
  "slug": "finitethetaenvelope-and-head-imply-entrancereserve--d92a2dceeb9f78ab38e7b7ee",
  "source": {
    "blob": "c8993f501eaca041b2eccb89e26ad3c445138a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteHeadConsumer/Variant4392e2c2b73f328750de4d4dc755d749b913ae5e80d452d2cc9d783cdf9d4ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92a2dceeb9f78ab38e7b7eec2a0e7faa9cc3b62647c00af034ad6bd31f74306",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteHeadConsumer/Variant4392e2c2b73f328750de4d4dc755d749b913ae5e80d452d2cc9d783cdf9d4ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44de02fc-9f66-cf34-f0d2-9d8a032370e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteThetaEnvelope_and_head_imply_entranceReserve
    (h : FiniteThetaEnvelope) (hhead : ShortPrimeHeadCertificate) :
    ordinaryPrimePrimitive entranceScale ≤ -reserve := by
  have hscale : 54 ≤ entranceScale := by norm_num [entranceScale]
  obtain ⟨K, hK⟩ := Nat.exists_eq_add_of_le hscale
  have hN : 1 ≤ (54 : ℕ) := by omega
  have hwork := actual_signed_work_telescope hN K
  have hsum : (∑ j ∈ Finset.range K,
      cumulativeDiscrepancy ordinaryPrimeCoefficient (54 + j) *
        cellClock (54 + j) (54 + j + 1 : ℕ)) ≤
      ∑ j ∈ Finset.range K, cellClock (54 + j) (54 + j + 1 : ℕ) := by
    apply Finset.sum_le_sum
    intro j hj
    have hjK := Finset.mem_range.mp hj
    have hn : 1 ≤ 54 + j := by omega
    have hp := h (54 + j) (by omega) (by omega)
    have hb : cumulativeDiscrepancy ordinaryPrimeCoefficient (54 + j) ≤ 1 := by
      rw [actual_storage_eq_theta _ hn]
      linarith
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hb
      (cellClock_pos hn).le
  have hwidth : (∑ j ∈ Finset.range K, cellClock (54 + j) (54 + j + 1 : ℕ)) ≤
      2 / Real.sqrt 54 := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (54 + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt 54 = 2 * (1 / Real.sqrt 54) by ring]
    linarith
  have hsqrt : (7 : ℝ) ≤ Real.sqrt 54 := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 54)
    have hp := Real.sqrt_nonneg (54 : ℝ)
    nlinarith
  have hprice : (2 : ℝ) / Real.sqrt 54 ≤ 2 / 7 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsqrt
  rw [← hK] at hwork
  norm_num only [Nat.cast_ofNat] at hwork
  unfold ShortPrimeHeadCertificate at hhead
  unfold reserve
  linarith

/-- The finite inputs discharge only the entrance; the selected Green cap remains explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteHeadConsumer/Variant4392e2c2b73f328750de4d4dc755d749b913ae5e80d452d2cc9d783cdf9d4ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteHeadConsumer/Variant4392e2c2b73f328750de4d4dc755d749b913ae5e80d452d2cc9d783cdf9d4ce6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8993f501eaca041b2eccb89e26ad3c445138a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
