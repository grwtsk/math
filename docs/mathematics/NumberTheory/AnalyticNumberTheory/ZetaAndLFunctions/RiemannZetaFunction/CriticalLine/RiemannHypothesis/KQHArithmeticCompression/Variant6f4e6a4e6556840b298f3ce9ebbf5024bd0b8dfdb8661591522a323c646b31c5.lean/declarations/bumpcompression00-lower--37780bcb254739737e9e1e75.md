# bumpCompression00_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7901b58e-11fa-045e-5fd8-2e36c511902a",
  "kind": "theorem",
  "lexical_name": "bumpCompression00_lower",
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
  "slug": "bumpcompression00-lower--37780bcb254739737e9e1e75",
  "source": {
    "blob": "701f72e2cc89bfb676100ad4eb4191d3028fef87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37780bcb254739737e9e1e7598ef67d2c8b200005e43964d3e663028ff9c7126",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7901b58e-11fa-045e-5fd8-2e36c511902a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpCompression00_lower (A : ℝ) (hA : 0 < A) :
    Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 ≤
      bumpCompression00 A := by
  let S := primePowerInventory (3 * A / 2) \ primePowerInventory A
  have hlowhigh : primePowerInventory A ⊆ primePowerInventory (3 * A / 2) :=
    inventory_mono (by linarith)
  have hhighfull : primePowerInventory (3 * A / 2) ⊆ primePowerInventory (2 * A) :=
    inventory_mono (by linarith)
  have hSfull : S ⊆ primePowerInventory (2 * A) :=
    fun n hn => hhighfull (Finset.mem_sdiff.mp hn).1
  have hSbounds (n : ℕ) (hn : n ∈ S) :
      2 ≤ n ∧ A < Real.log n ∧ Real.log n ≤ 3 * A / 2 := by
    obtain ⟨hhi, hlo⟩ := Finset.mem_sdiff.mp hn
    have h2 := (Finset.mem_Icc.mp hhi).1
    have ht := (mangoldtInventory_log_bounds (3 * A / 2) n hhi).2
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    have ha : A < Real.log n := by
      by_contra h
      have hlog : Real.log (n : ℝ) ≤ A := le_of_not_gt h
      have hexp : (n : ℝ) ≤ Real.exp A := (Real.log_le_iff_le_exp hn0).mp hlog
      exact hlo (Finset.mem_Icc.mpr ⟨h2,
        (Nat.le_floor_iff (Real.exp_pos A).le).mpr hexp⟩)
    exact ⟨h2, ha, ht⟩
  have hcoeff (n : ℕ) (hn : n ∈ S) :
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
          (Real.exp (A / 2) / 437580) ≤
        ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) *
          overlapProfile (Real.log n / A) := by
    obtain ⟨h2, hlo, hhi⟩ := hSbounds n hn
    have hn0 : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
    have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
      div_nonneg ArithmeticFunction.vonMangoldt_nonneg hn0
    have hu : 1 ≤ Real.log (n : ℝ) / A := (le_div_iff₀ hA).mpr (by linarith)
    have huv : Real.log (n : ℝ) / A ≤ 3 / 2 :=
      (div_le_iff₀ hA).mpr (by linarith)
    have hp := overlapProfile_ge_middle hu huv
    have he : Real.exp (A / 2) ≤ Real.exp (Real.log n / 2) :=
      Real.exp_le_exp.mpr (by linarith)
    have hm := mul_le_mul he hp (by norm_num : (0 : ℝ) ≤ 1 / 437580)
      (Real.exp_pos _).le
    rw [coefficient_eq_weighted n h2]
    nlinarith [mul_le_mul_of_nonneg_left hm hw]
  have hsum := Finset.sum_le_sum hcoeff
  have hsubset : (∑ n ∈ S, ArithmeticFunction.vonMangoldt n *
      Real.exp (-Real.log n / 2) * overlapProfile (Real.log n / A)) ≤
      bumpCompression00 A := by
    unfold bumpCompression00
    apply Finset.sum_le_sum_of_subset_of_nonneg hSfull
    intro n hn _
    have hb := mangoldtInventory_log_bounds (2 * A) n hn
    have hu : 0 ≤ Real.log (n : ℝ) / A := div_nonneg hb.1 hA.le
    have huv : Real.log (n : ℝ) / A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
    exact mul_nonneg (mul_nonneg ArithmeticFunction.vonMangoldt_nonneg
      (Real.exp_pos _).le) (overlapProfile_nonneg hu huv)
  have hs : (∑ n ∈ S, ArithmeticFunction.vonMangoldt n / (n : ℝ)) =
      mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A := by
    rw [mangoldtLogPrefix_eq_sum, mangoldtLogPrefix_eq_sum]
    exact Finset.sum_sdiff hlowhigh
  have hupper := (abs_le.mp (mangoldtLogError_abs_le A hA.le)).2
  have hlower := (abs_le.mp (mangoldtLogError_abs_le (3 * A / 2) (by positivity))).1
  change mangoldtLogPrefix A - A ≤ primitiveCost at hupper
  change -primitiveCost ≤ mangoldtLogPrefix (3 * A / 2) - 3 * A / 2 at hlower
  have hprefix : A / 2 - 2 * primitiveCost ≤
      mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A := by linarith
  have hmul := mul_le_mul_of_nonneg_right hprefix
    (by positivity : 0 ≤ Real.exp (A / 2) / 437580)
  rw [Finset.sum_mul, hs] at hsum
  calc
    _ = (A / 2 - 2 * primitiveCost) * (Real.exp (A / 2) / 437580) := by ring
    _ ≤ (mangoldtLogPrefix (3 * A / 2) - mangoldtLogPrefix A) *
        (Real.exp (A / 2) / 437580) := hmul
    _ ≤ _ := hsum.trans hsubset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `701f72e2cc89bfb676100ad4eb4191d3028fef87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
