# fejer_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52d9a49c-a89e-bbf9-8819-f36e5aca2acc",
  "kind": "lemma",
  "lexical_name": "fejer_integrand_integrable",
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
  "slug": "fejer-integrand-integrable--b4330adb1ccabfe3946f40c7",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 993,
    "line": 944,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4330adb1ccabfe3946f40c7cd21f03af4eff1021f2b18b8745b3ebfc49d5b21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d9a49c-a89e-bbf9-8819-f36e5aca2acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 944–993.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_integrand_integrable {f : ℝ → ℝ} {n : ℕ} {x : ℝ}
    (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) :
    MeasureTheory.IntegrableOn (fun t => (f (x - t) - f x) * fejer_kernel n t) (Set.Icc (-Real.pi) Real.pi) := by
      -- The function $f$ is integrable on $[-\pi, \pi]$ and periodic, so $t \mapsto f(x-t)$ is integrable on $[-\pi, \pi]$. The Fejér kernel $K_n$ is a trigonometric polynomial, hence continuous and bounded on $[-\pi, \pi]$. Therefore, $(f(x-t) - f(x)) K_n(t)$ is integrable.
      have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x - t)) (Set.Icc (-Real.pi) Real.pi) := by
        have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x - Real.pi) (x + Real.pi)) := by
          have h_integrable : ∀ m : ℤ, MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi)) := by
            intro m
            have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t + m * 2 * Real.pi)) (Set.Icc (-Real.pi) Real.pi) := by
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi) Real.pi) := by
                rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by linarith [ Real.pi_pos ] ) ] at hf_int ; aesop;
              convert h_integrable using 1;
              exact funext fun t => by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per m t;
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
            convert h_integrable.comp_sub_right ( m * 2 * Real.pi ) using 1;
            ext; simp [Set.indicator];
            split_ifs <;> ring_nf at * <;> aesop;
          -- Choose $m$ such that $m * 2 * \pi - \pi \leq x - \pi < m * 2 * \pi + \pi$.
          obtain ⟨m, hm⟩ : ∃ m : ℤ, m * 2 * Real.pi - Real.pi ≤ x - Real.pi ∧ x - Real.pi < m * 2 * Real.pi + Real.pi := by
            exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
          have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (m * 2 * Real.pi - Real.pi) (m * 2 * Real.pi + Real.pi + 2 * Real.pi)) := by
            convert MeasureTheory.IntegrableOn.union ( h_integrable m ) ( h_integrable ( m + 1 ) ) using 1 ; ring;
            grind;
          exact h_integrable.mono_set ( Set.Icc_subset_Icc ( by linarith ) ( by linarith ) );
        rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
        convert h_integrable.comp_sub_left x using 1;
        ext; simp [Set.indicator];
        grind;
      have h_integrable : MeasureTheory.IntegrableOn (fun t => (f (x - t) - f x) * fejer_kernel n t) (Set.Icc (-Real.pi) Real.pi) := by
        have h_bounded : ∃ C, ∀ t ∈ Set.Icc (-Real.pi) Real.pi, |fejer_kernel n t| ≤ C := by
          use (n + 1) / 2;
          field_simp;
          exact fun t ht => by rw [ abs_of_nonneg ( fejer_kernel_nonneg n t ) ] ; exact le_trans ( mul_le_mul_of_nonneg_right ( fejer_kernel_le_linear n t ) zero_le_two ) ( by linarith ) ;
        refine' MeasureTheory.Integrable.mono' _ _ _;
        refine' fun t => |f ( x - t ) - f x| * h_bounded.choose;
        · exact MeasureTheory.Integrable.mul_const ( MeasureTheory.Integrable.abs ( h_integrable.sub ( MeasureTheory.integrable_const _ ) ) ) _;
        · refine' MeasureTheory.AEStronglyMeasurable.mul _ _;
          · exact MeasureTheory.AEStronglyMeasurable.sub h_integrable.aestronglyMeasurable ( MeasureTheory.aestronglyMeasurable_const );
          · refine' Measurable.aestronglyMeasurable _;
            refine' Measurable.mul _ _;
            · exact measurable_const;
            · refine' Finset.measurable_sum _ fun i _ => _;
              exact Measurable.add measurable_const ( Finset.measurable_sum _ fun j hj => Real.continuous_cos.measurable.comp ( measurable_const.mul measurable_id' ) );
        · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using by simpa only [ norm_mul, Real.norm_eq_abs, abs_abs ] using mul_le_mul_of_nonneg_left ( h_bounded.choose_spec t ht ) ( abs_nonneg _ ) ;
      convert h_integrable using 1

/-
The tail set for the Fejér integral.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L944).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
