# abs_Aminus_diag_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0818f69-00f7-9167-8186-f384e714b3c9",
  "kind": "lemma",
  "lexical_name": "abs_Aminus_diag_sub_le",
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
  "slug": "abs-aminus-diag-sub-le--b1d4d31acef2f83ce33e417c",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 352,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d4d31acef2f83ce33e417cbc7ee61832c5907c6f87a355890e64dc028926f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0818f69-00f7-9167-8186-f384e714b3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_Aminus_diag_sub_le (hT : 0 ≤ T) (hΦ : Continuous Φ)
    (hΦ2 : Integrable fun x => Φ x ^ 2) (hΦabs : Integrable fun x => Φ x ^ 2 * |x|) (y : ℝ) :
    |Aminus Φ T y y - T * ∫ x, Φ x ^ 2 * Real.cos (x * y)| ≤ ∫ x, Φ x ^ 2 * |x| := by
  unfold Aminus
  simp_rw [JmK_diag]
  set f : ℝ → ℝ := fun x => Φ x ^ 2 * ((T - |x|) * Real.cos (x * y)) with hf
  have hA : Integrable ((Icc (-T) T).indicator f) :=
    (integrable_indicator_iff measurableSet_Icc).mpr
      ((by fun_prop : Continuous f).integrableOn_Icc)
  have hB : Integrable fun x => T * (Φ x ^ 2 * Real.cos (x * y)) := by
    refine (hΦ2.mul_bdd (c := 1) (by fun_prop) ?_).const_mul T
    exact Filter.Eventually.of_forall fun x => by
      simpa using Real.abs_cos_le_one (x * y)
  rw [← integral_indicator measurableSet_Icc, ← integral_const_mul, ← integral_sub hA hB]
  calc |∫ x, ((Icc (-T) T).indicator f x - T * (Φ x ^ 2 * Real.cos (x * y)))|
      ≤ ∫ x, |(Icc (-T) T).indicator f x - T * (Φ x ^ 2 * Real.cos (x * y))| :=
        abs_integral_le_integral_abs
    _ ≤ ∫ x, Φ x ^ 2 * |x| := by
        apply integral_mono (hA.sub hB).abs hΦabs
        intro x
        change |(Icc (-T) T).indicator f x - T * (Φ x ^ 2 * Real.cos (x * y))| ≤ Φ x ^ 2 * |x|
        have hc := Real.abs_cos_le_one (x * y)
        have hΦ0 : 0 ≤ Φ x ^ 2 := sq_nonneg _
        by_cases hx : x ∈ Icc (-T) T
        · rw [Set.indicator_of_mem hx, hf]
          simp only
          have : |x| ≤ T := abs_le.mpr ⟨by linarith [hx.1], hx.2⟩
          calc |Φ x ^ 2 * ((T - |x|) * Real.cos (x * y)) - T * (Φ x ^ 2 * Real.cos (x * y))|
              = Φ x ^ 2 * |x| * |Real.cos (x * y)| := by
                rw [show Φ x ^ 2 * ((T - |x|) * Real.cos (x * y)) - T * (Φ x ^ 2 * Real.cos (x * y))
                    = -(Φ x ^ 2 * |x| * Real.cos (x * y)) by ring, abs_neg, abs_mul, abs_mul,
                  abs_of_nonneg hΦ0, abs_abs]
            _ ≤ Φ x ^ 2 * |x| * 1 := by gcongr
            _ = Φ x ^ 2 * |x| := mul_one _
        · rw [Set.indicator_of_notMem hx, zero_sub, abs_neg, abs_mul, abs_mul, abs_of_nonneg hT,
            abs_of_nonneg hΦ0]
          have : T < |x| := not_mem_Icc_neg hx
          calc T * (Φ x ^ 2 * |Real.cos (x * y)|) ≤ |x| * (Φ x ^ 2 * 1) := by gcongr
            _ = Φ x ^ 2 * |x| := by ring

/-! ### The sum-frequency terms 𝒪₂ (§5.4) -/

/-- **𝒪₂, per pair** (§5.4: "|∫(nm)^{iτ'}dτ'| ≤ 2/log(nm)"): for y + y' > 0,
|A⁺(y,y')| ≤ (2/(y+y')) ∫_ℝ Φ². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
