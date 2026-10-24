# composedVariation_endpoint_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d740d1f1eef9515fee65bab4f201cff40db1876c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 986,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6d4de41-d4a8-1ea9-d850-38f188679071",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f3e25d1-7794-6587-ef34-4bee674c60f6",
  "kind": "theorem",
  "lexical_name": "composedVariation_endpoint_le",
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
  "slug": "composedvariation-endpoint-le--d1871140bf2efeb593a74999",
  "source": {
    "blob": "d740d1f1eef9515fee65bab4f201cff40db1876c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1053,
    "line": 986,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1871140bf2efeb593a74999174ace20be30e26d3945d03f97ebce2b23c08f74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3e25d1-7794-6587-ef34-4bee674c60f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–1053.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composedVariation_endpoint_le (E : ℝ → ℝ) (h K K' : ℝ) (G : ℕ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hK : 0 ≤ K)
    (hv : 1 ≤ G → |E (h * (G : ℝ) ^ 2)| ≤ K / Real.sqrt (h * (G : ℝ) ^ 2))
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    composedVariation E h G ≤ (K + 4 * K') / Real.sqrt h := by
  have hK' : 0 ≤ K' := by
    have h : 0 ≤ K' / (4 * Real.sqrt 4) :=
      (abs_nonneg _).trans (hb 4 (by norm_num))
    simpa only [zero_mul] using (le_div_iff₀ (by positivity : 0 < (4 : ℝ) * Real.sqrt 4)).mp h
  have hh0 : 0 < h := zero_lt_one.trans_le hh
  have hs0 : 0 < Real.sqrt h := Real.sqrt_pos.mpr hh0
  by_cases hG : G = 0
  · subst G
    rw [composedVariation_zero]
    positivity
  have hG1 : 1 ≤ G := by omega
  have hGr : (1 : ℝ) ≤ G := by exact_mod_cast hG1
  have hG0 : (0 : ℝ) < G := zero_lt_one.trans_le hGr
  have hend : Real.sqrt (G : ℝ) * |E (h * (G : ℝ) ^ 2)| ≤ K / Real.sqrt h := by
    have hval := hv hG1
    rw [Real.sqrt_mul hh0.le, Real.sqrt_sq hG0.le] at hval
    calc
      _ ≤ Real.sqrt (G : ℝ) * (K / (Real.sqrt h * (G : ℝ))) :=
        mul_le_mul_of_nonneg_left hval (Real.sqrt_nonneg _)
      _ ≤ (G : ℝ) * (K / (Real.sqrt h * (G : ℝ))) :=
        mul_le_mul_of_nonneg_right (Real.sqrt_le_self_iff.mpr (Or.inr hGr))
          (by positivity)
      _ = K / Real.sqrt h := by field_simp
  have hB : 0 ≤ 2 * K' / Real.sqrt h := by positivity
  have hterm (j : ℕ) (hj : j ∈ Finset.Icc 1 (G - 1)) :
      Real.sqrt (j : ℝ) * |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)| ≤
        (2 * K' / Real.sqrt h) *
          (Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) := by
    have hj1 : (1 : ℝ) ≤ j := by exact_mod_cast (Finset.mem_Icc.mp hj).1
    have hs := mul_le_mul_of_nonneg_left
      (composed_abs_sub_le E h K' (j : ℝ) ((j : ℝ) + 1) hh hj1 (by linarith) hc hd hb)
      (Real.sqrt_nonneg (j : ℝ))
    simpa only [Nat.cast_add, Nat.cast_one, mul_left_comm] using hs
  have hsum : (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      |E (h * (j : ℝ) ^ 2) - E (h * ((j + 1 : ℕ) : ℝ) ^ 2)|) ≤
      4 * K' / Real.sqrt h := by
    calc
      _ ≤ ∑ j ∈ Finset.Icc 1 (G - 1), (2 * K' / Real.sqrt h) *
          (Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) :=
        sum_le_sum hterm
      _ = (2 * K' / Real.sqrt h) *
          ∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
            (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) := (mul_sum _ _ _).symm
      _ ≤ (2 * K' / Real.sqrt h) * 2 :=
        mul_le_mul_of_nonneg_left (sqrt_reciprocal_variation_le G) hB
      _ = _ := by ring
  unfold composedVariation
  calc
    _ ≤ K / Real.sqrt h + 4 * K' / Real.sqrt h := add_le_add hend hsum
    _ = _ := by ring

end KernelVariationTransportScratch

namespace RealThetaDerivativeScratch

open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceSampling CorrelationSecondMoment KernelVariationTransportScratch

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d740d1f1eef9515fee65bab4f201cff40db1876c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
