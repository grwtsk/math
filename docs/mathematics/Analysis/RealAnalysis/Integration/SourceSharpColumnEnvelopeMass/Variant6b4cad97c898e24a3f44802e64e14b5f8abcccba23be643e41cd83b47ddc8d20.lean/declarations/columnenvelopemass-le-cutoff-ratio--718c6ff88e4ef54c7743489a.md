# columnEnvelopeMass_le_cutoff_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d50c40e-8bf6-ccfc-964f-4871e435539f",
  "kind": "theorem",
  "lexical_name": "columnEnvelopeMass_le_cutoff_ratio",
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
  "slug": "columnenvelopemass-le-cutoff-ratio--718c6ff88e4ef54c7743489a",
  "source": {
    "blob": "c17813024fe4d65dbc87a5224f4ee66010d832a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSharpColumnEnvelopeMass/Variant6b4cad97c898e24a3f44802e64e14b5f8abcccba23be643e41cd83b47ddc8d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:718c6ff88e4ef54c7743489ac9334f8cf4c36c5f9f8f245a36f0fc3ed0ab362f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSharpColumnEnvelopeMass/Variant6b4cad97c898e24a3f44802e64e14b5f8abcccba23be643e41cd83b47ddc8d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d50c40e-8bf6-ccfc-964f-4871e435539f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem columnEnvelopeMass_le_cutoff_ratio (A : ℝ) (hA : 1 ≤ A) :
    columnEnvelopeMass A ≤
      2 * (vaughanCutoff A : ℝ) / Real.sqrt ((vaughanCutoff A : ℝ) + 1) := by
  classical
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let s := Finset.Ico (U + 1) K
  let f : ℝ → ℝ := fun u => 1 / (u * Real.sqrt u)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hcell (k : ℕ) (hk : k ∈ s) : 0 < (k : ℝ) := by
    have hn := (Finset.mem_Ico.mp hk).1
    exact_mod_cast (by omega : 0 < k)
  have hi (k : ℕ) (hk : k ∈ s) :
      IntervalIntegrable f volume (k : ℝ) ((k : ℝ) + 1) :=
    inverse_sqrt_cell_integrable _ _ (hcell k hk) (by linarith)
  have hb (k : ℕ) (hk : k ∈ s) :
      |∑ n ∈ Finset.Ioc U k, centeredBeta U n| ≤ (U : ℝ) := by
    apply (centeredBeta_interval_abs_le _ _ _ hU le_rfl
      (by have := (Finset.mem_Ico.mp hk).1; omega)).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro d _
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      _ = (U : ℝ) := by simp
  by_cases hK : U + 1 ≤ K
  · have hpos : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
    have hsum : (∑ k ∈ s, ∫ u in (k : ℝ)..((k : ℝ) + 1), f u) =
        ∫ u in ((U + 1 : ℕ) : ℝ)..(K : ℝ), f u := by
      simpa only [s, Nat.cast_add, Nat.cast_one] using
        intervalIntegral.sum_integral_adjacent_intervals_Ico
          (a := fun k : ℕ => (k : ℝ)) hK
          (fun k hk => by
            have hks : k ∈ s := by simpa only [s, Finset.mem_Ico, Set.mem_Ico] using hk
            simpa only [Nat.cast_add, Nat.cast_one] using hi k hks)
    have hmass : columnEnvelopeMass A ≤ (U : ℝ) *
        (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) := by
      calc
        _ ≤ ∑ k ∈ s, (U : ℝ) *
            (∫ u in (k : ℝ)..((k : ℝ) + 1), f u) := by
          apply Finset.sum_le_sum
          intro k hk
          apply mul_le_mul_of_nonneg_right (hb k hk)
          apply intervalIntegral.integral_nonneg (by linarith)
          intro u hu
          have hu0 : 0 < u := (hcell k hk).trans_le hu.1
          positivity
        _ = _ := by
          rw [← Finset.mul_sum, hsum,
            inverse_sqrt_integral _ _ hpos (by exact_mod_cast hK)]
    have hdrop : (U : ℝ) *
        (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) ≤
        2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := by
      have hn : 0 ≤ (U : ℝ) * (2 / Real.sqrt (K : ℝ)) := by positivity
      have he : (U : ℝ) *
          (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) =
          2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) -
            (U : ℝ) * (2 / Real.sqrt (K : ℝ)) := by ring
      rw [he]
      linarith
    calc
      _ ≤ 2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := hmass.trans hdrop
      _ = _ := by
        dsimp only [U]
        rw [Nat.cast_add, Nat.cast_one]
        ring
  · have hs : s = ∅ := Finset.Ico_eq_empty_of_le (by omega)
    change (∑ k ∈ s, |∑ n ∈ Finset.Ioc U k, centeredBeta U n| *
      (∫ u in (k : ℝ)..((k : ℝ) + 1), f u)) ≤
        2 * (U : ℝ) / Real.sqrt ((U : ℝ) + 1)
    rw [hs, Finset.sum_empty]
    positivity

end
end FormalResearch.RiemannHypothesis.SourceSharpColumnEnvelopeMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSharpColumnEnvelopeMass/Variant6b4cad97c898e24a3f44802e64e14b5f8abcccba23be643e41cd83b47ddc8d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSharpColumnEnvelopeMass/Variant6b4cad97c898e24a3f44802e64e14b5f8abcccba23be643e41cd83b47ddc8d20.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c17813024fe4d65dbc87a5224f4ee66010d832a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
