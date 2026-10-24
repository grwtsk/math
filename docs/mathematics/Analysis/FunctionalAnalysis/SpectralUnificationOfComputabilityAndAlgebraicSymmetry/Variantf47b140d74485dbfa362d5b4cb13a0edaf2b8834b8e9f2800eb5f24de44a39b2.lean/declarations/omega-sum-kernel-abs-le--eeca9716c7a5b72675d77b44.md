# omega_sum_kernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b53fc06-c2fb-1d60-f215-3c7f46f0379d",
  "kind": "theorem",
  "lexical_name": "omega_sum_kernel_abs_le",
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
  "slug": "omega-sum-kernel-abs-le--eeca9716c7a5b72675d77b44",
  "source": {
    "blob": "f3bf90751595f1aa42fca0bdd97ae430218090de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 46,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeca9716c7a5b72675d77b44d40911b8e38fff9acff1dd8a6118616c4b17db99",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b53fc06-c2fb-1d60-f215-3c7f46f0379d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omega_sum_kernel_abs_le (T : ℝ) (hT : 1 ≤ T) (m d : ℕ)
    (hm : 1 ≤ m) (hd : 1 ≤ d) :
    |∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
      omegaWeight T m d k / Real.sqrt ((m*d*k : ℕ) : ℝ)| ≤
      (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) *
        ((T^18-1)/6 + 10*(T^17-1)/17) := by
  let F : ℝ → ℝ := fun A ↦ ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
    (1 / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
      scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d
  have hi (k : ℕ) (hk : k ∈ Finset.Icc 1 (sourceKernelCutoff T)) :
      IntervalIntegrable (fun A ↦ (1 / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
        scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) volume 1 T :=
    (scaleWindow_intervalIntegrable T _ m d hT (Real.log_nonneg
      (by exact_mod_cast (Nat.mul_pos (Nat.mul_pos hm hd) (Finset.mem_Icc.mp hk).1)))).const_mul _
  have he : (∫ A in (1:ℝ)..T, F A) =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        omegaWeight T m d k / Real.sqrt ((m*d*k : ℕ) : ℝ) := by
    unfold F
    rw [intervalIntegral.integral_finsetSum hi]
    apply Finset.sum_congr rfl
    intro k hk
    rw [intervalIntegral.integral_const_mul, integral_scaleWindow T m d k hT
      (Nat.mul_pos (Nat.mul_pos hm hd) (Finset.mem_Icc.mp hk).1)]
    ring
  have hden : 0 < Real.sqrt ((m*d : ℕ) : ℝ) := by
    apply Real.sqrt_pos.mpr
    exact_mod_cast (Nat.mul_pos hm hd)
  have hF (A : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T) :
      |F A| ≤ (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16) := by
    have hA0 : 0 < A := by linarith
    by_cases hc : A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)
    · have hf : F A = scaleWeight A * sourcePlainKernel A ((m*d : ℕ) : ℝ) := by
        rw [plainKernel_inventory A T hA hAT _ (Nat.mul_pos hm hd), Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k _
        dsimp [scaleWindow, sourcePlainWeight]
        rw [if_pos hc]
        ring
      rw [hf, abs_mul, abs_of_pos (scaleWeight_pos A hA)]
      calc
        _ ≤ scaleWeight A * ((3+10/A) / Real.sqrt ((m*d : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left (sourcePlainKernel_abs_le A _ hA
            (by exact_mod_cast (Nat.mul_pos hm hd))) (scaleWeight_pos A hA).le
        _ ≤ ((45056/1105)*A^17) * ((3+10/A) / Real.sqrt ((m*d : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_right (scaleWeight_le A hA) (by positivity)
        _ = _ := by field_simp
    · have hf : F A = 0 := by simp [F, scaleWindow, hc]
      rw [hf, abs_zero]
      positivity
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (f := F) (g := fun A ↦ (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16))
    (by filter_upwards with A hA; rw [Real.norm_eq_abs]; exact hF A hA.1.le hA.2)
    ((by fun_prop : Continuous (fun A : ℝ ↦
      (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16))).intervalIntegrable 1 T)
  rw [Real.norm_eq_abs, he, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun A : ℝ ↦ 3*A^17)).intervalIntegrable 1 T)
      ((by fun_prop : Continuous (fun A : ℝ ↦ 10*A^16)).intervalIntegrable 1 T),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    integral_pow, integral_pow] at hb
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow] at hb
  convert hb using 1
  ring

end
end EstimateScaleKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3bf90751595f1aa42fca0bdd97ae430218090de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
