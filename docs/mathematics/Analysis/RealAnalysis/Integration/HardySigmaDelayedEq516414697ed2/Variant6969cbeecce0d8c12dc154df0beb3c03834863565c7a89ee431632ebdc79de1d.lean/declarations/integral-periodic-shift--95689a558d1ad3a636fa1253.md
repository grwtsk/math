# integral_periodic_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e05b2cd0-b374-3ceb-08d7-5e5d1c3779ed",
  "kind": "theorem",
  "lexical_name": "integral_periodic_shift",
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
  "slug": "integral-periodic-shift--95689a558d1ad3a636fa1253",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 520,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95689a558d1ad3a636fa1253222170121002ca5b574765c30b464377d4946e73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e05b2cd0-b374-3ceb-08d7-5e5d1c3779ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_periodic_shift (g : ℝ → ℝ) (hg_per : Function.Periodic g (2 * Real.pi)) (x : ℝ)
    (hg_int : IntervalIntegrable g MeasureTheory.volume (-Real.pi) Real.pi) :
    ∫ u in (x - Real.pi)..(x + Real.pi), g u = ∫ u in (-Real.pi)..Real.pi, g u := by
      -- Since $g$ is periodic with period $2\pi$, the integral over any interval of length $2\pi$ is the same.
      have h_periodic : ∀ a : ℝ, ∫ u in a..a + 2 * Real.pi, g u = ∫ u in (-Real.pi)..Real.pi, g u := by
        intro a;
        have h_periodic : ∀ a b : ℝ, ∫ u in a..b, g u = ∫ u in (a - 2 * Real.pi).. (b - 2 * Real.pi), g u := by
          simp +decide [ ← intervalIntegral.integral_comp_sub_right, hg_per ];
          exact fun a b => by congr; ext u; rw [ hg_per.sub_eq ] ;
        have h_split : ∫ u in a..a + 2 * Real.pi, g u = (∫ u in a..(-Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋), g u) + (∫ u in (-Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋)..(-Real.pi + 2 * Real.pi * (⌊(a + Real.pi) / (2 * Real.pi)⌋ + 1)), g u) + (∫ u in (-Real.pi + 2 * Real.pi * (⌊(a + Real.pi) / (2 * Real.pi)⌋ + 1))..a + 2 * Real.pi, g u) := by
          rw [ intervalIntegral.integral_add_adjacent_intervals, intervalIntegral.integral_add_adjacent_intervals ] <;> apply_rules [ MeasureTheory.IntegrableOn.intervalIntegrable ];
          · have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
              intro n; rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by nlinarith [ Real.pi_pos ] ) ] at hg_int; exact (by
              have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
                intro n
                have h_shift : ∀ x, g x = g (x - 2 * Real.pi * n) := by
                  exact fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hg_per n ( x - 2 * Real.pi * n ) ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert hg_int.comp_sub_right ( 2 * Real.pi * n ) using 1;
                ext; simp [Set.indicator];
                grind;
              convert h_integrable n using 2 <;> ring);
            have h_integrable : MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋) (Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋)) := by
              exact h_integrable _;
            refine' h_integrable.mono_set _;
            intro x hx; constructor <;> cases Set.mem_uIcc.mp hx <;> nlinarith [ Int.floor_le ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Int.lt_floor_add_one ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ;
          · have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
              intro n; rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by nlinarith [ Real.pi_pos ] ) ] at hg_int; exact (by
              have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
                intro n
                have h_shift : ∀ x, g x = g (x - 2 * Real.pi * n) := by
                  exact fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hg_per n ( x - 2 * Real.pi * n ) ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert hg_int.comp_sub_right ( 2 * Real.pi * n ) using 1;
                ext; simp [Set.indicator];
                grind;
              convert h_integrable n using 2 <;> ring);
            refine' MeasureTheory.IntegrableOn.mono_set _ _;
            exact Set.Icc ( -Real.pi + 2 * Real.pi * ( ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋ + 1 ) ) ( Real.pi + 2 * Real.pi * ( ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋ + 1 ) );
            · convert h_integrable ( ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋ + 1 ) using 1 ; push_cast ; ring;
            · rw [ Set.uIcc_of_le ( by nlinarith [ Int.floor_le ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Int.lt_floor_add_one ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ) ] ; exact Set.Icc_subset_Icc_right ( by nlinarith [ Int.floor_le ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Int.lt_floor_add_one ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ) ;
          · have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
              intro n; rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by nlinarith [ Real.pi_pos ] ) ] at hg_int; exact (by
              have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
                intro n
                have h_shift : ∀ x, g x = g (x - 2 * Real.pi * n) := by
                  exact fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hg_per n ( x - 2 * Real.pi * n ) ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert hg_int.comp_sub_right ( 2 * Real.pi * n ) using 1;
                ext; simp [Set.indicator];
                grind;
              convert h_integrable n using 2 <;> ring);
            have h_integrable : MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋) (Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋)) := by
              exact h_integrable _;
            exact h_integrable.mono_set ( fun x hx => by constructor <;> cases Set.mem_uIcc.mp hx <;> nlinarith [ Int.floor_le ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Int.lt_floor_add_one ( ( a + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( a + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] );
          · have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
              intro n; rw [ intervalIntegrable_iff_integrableOn_Icc_of_le ( by nlinarith [ Real.pi_pos ] ) ] at hg_int; exact (by
              have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn g (Set.Icc (-Real.pi + 2 * Real.pi * n) (Real.pi + 2 * Real.pi * n)) := by
                intro n
                have h_shift : ∀ x, g x = g (x - 2 * Real.pi * n) := by
                  exact fun x => by simpa [ mul_comm ] using Function.Periodic.int_mul hg_per n ( x - 2 * Real.pi * n ) ;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert hg_int.comp_sub_right ( 2 * Real.pi * n ) using 1;
                ext; simp [Set.indicator];
                grind;
              convert h_integrable n using 2 <;> ring);
            convert h_integrable ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋ using 1 ; ring;
            rw [ Set.uIcc_of_le ( by nlinarith [ Real.pi_pos ] ) ];
        -- By periodicity, the integral over any interval of length $2\pi$ is the same.
        have h_periodic_integral : ∀ k : ℤ, ∫ u in (-Real.pi + 2 * Real.pi * k)..(-Real.pi + 2 * Real.pi * (k + 1)), g u = ∫ u in (-Real.pi)..Real.pi, g u := by
          intro k; symm; induction' k using Int.induction_on with n ihn n ihn <;> norm_num at *;
          · grind;
          · grind;
          · rw [ ihn, h_periodic ] ; ring;
        have h_periodic_integral : ∫ u in a..(-Real.pi + 2 * Real.pi * ⌊(a + Real.pi) / (2 * Real.pi)⌋), g u = ∫ u in (a + 2 * Real.pi)..(-Real.pi + 2 * Real.pi * (⌊(a + Real.pi) / (2 * Real.pi)⌋ + 1)), g u := by
          grind;
        have h_periodic_integral : ∫ u in (a + 2 * Real.pi)..(-Real.pi + 2 * Real.pi * (⌊(a + Real.pi) / (2 * Real.pi)⌋ + 1)), g u = -∫ u in (-Real.pi + 2 * Real.pi * (⌊(a + Real.pi) / (2 * Real.pi)⌋ + 1))..a + 2 * Real.pi, g u := by
          rw [ intervalIntegral.integral_symm ];
        linarith [ ‹∀ k : ℤ, ∫ u in -Real.pi + 2 * Real.pi * ( k : ℝ )..-Real.pi + 2 * Real.pi * ( k + 1 ), g u = ∫ u in -Real.pi..Real.pi, g u› ⌊ ( a + Real.pi ) / ( 2 * Real.pi ) ⌋ ];
      convert h_periodic ( x - Real.pi ) using 2 ; ring

/-
Alternative integral representation of Fejér sum: sigma_n(x) = (1/pi) * integral_{-pi}^{pi} f(x-t) K_n(t) dt.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
