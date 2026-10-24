# abs_iteratedDeriv_theta_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12125f5e-e98a-7637-b280-e0ae3c9ebc32",
  "kind": "lemma",
  "lexical_name": "abs_iteratedDeriv_theta_le",
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
  "slug": "abs-iteratedderiv-theta-le--fe7fc852e2c1cf99d28e1c01",
  "source": {
    "blob": "b42c6d3993eb756afcffbde22bacb5f0e057649a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 289,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7fc852e2c1cf99d28e1c0172d8359688034618b1852c68998e8ef03189e6d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12125f5e-e98a-7637-b280-e0ae3c9ebc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_iteratedDeriv_theta_le (k : ℕ) (x : ℝ) :
    |iteratedDeriv k theta x| ≤ (36 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) := by
  have hf : ContDiff ℝ k expNegInvGlue := expNegInvGlue.contDiff
  have hg : ContDiff ℝ k (fun t => expNegInvGlue (1 - t)) :=
    expNegInvGlue.contDiff.comp (contDiff_const.sub contDiff_id)
  have h := norm_iteratedFDeriv_mul_le hf hg x (n := k) le_rfl
  rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv] at h
  simp only [norm_iteratedFDeriv_eq_norm_iteratedDeriv, Real.norm_eq_abs] at h
  change |iteratedDeriv k theta x| ≤ _ at h
  refine h.trans ?_
  calc ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * |iteratedDeriv i expNegInvGlue x|
        * |iteratedDeriv (k - i) (fun t => expNegInvGlue (1 - t)) x|
      ≤ ∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ) * ((18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k)) := by
        refine Finset.sum_le_sum fun i hi => ?_
        have hik : i ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
        rw [mul_assoc]
        refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
        calc |iteratedDeriv i expNegInvGlue x| * |iteratedDeriv (k - i) (fun t => expNegInvGlue (1 - t)) x|
            ≤ gb i * gb (k - i) := mul_le_mul (abs_iteratedDeriv_g_le i x) (abs_iteratedDeriv_gflip_le _ x)
                (abs_nonneg _) (by unfold gb; positivity)
          _ ≤ _ := gb_mul_gb_le hik
    _ = (∑ i ∈ Finset.range (k + 1), (k.choose i : ℝ)) * ((18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k)) := by
        rw [Finset.sum_mul]
    _ = (2:ℝ) ^ k * ((18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k)) := by
        congr 1; exact_mod_cast Nat.sum_range_choose k
    _ = (36 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) := by
        rw [← mul_assoc, ← mul_pow]; congr 2; ring

/-! ### Θ = primitive of θ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42c6d3993eb756afcffbde22bacb5f0e057649a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
