# integral_periodic_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58bc71a0-1bb3-03ba-eed9-57ea16323d55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b7b83b2-7188-9129-3896-ea95dfce81d3",
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
  "slug": "integral-periodic-shift--f4d3d704a1b87662fbd8d9bb",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 512,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d3d704a1b87662fbd8d9bbff38294e8fb718cb622046e1ddb4473591ea676f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b7b83b2-7188-9129-3896-ea95dfce81d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–595.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
