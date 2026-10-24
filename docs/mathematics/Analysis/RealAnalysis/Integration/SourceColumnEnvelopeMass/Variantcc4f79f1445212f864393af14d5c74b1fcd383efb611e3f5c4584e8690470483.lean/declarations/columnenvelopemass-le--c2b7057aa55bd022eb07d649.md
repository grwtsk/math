# columnEnvelopeMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efb69bea-2bcb-3131-a123-c67015650759",
  "kind": "theorem",
  "lexical_name": "columnEnvelopeMass_le",
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
  "slug": "columnenvelopemass-le--c2b7057aa55bd022eb07d649",
  "source": {
    "blob": "326f52c82ec0256ace0e0773e48940f289eecbe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b7057aa55bd022eb07d649d982edde5a58fb17dc917fe049a3011c8f4886dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efb69bea-2bcb-3131-a123-c67015650759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem columnEnvelopeMass_le (A : ℝ) (hA : 1 ≤ A) :
    columnEnvelopeMass A ≤ 2 * A := by
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
          (fun k hk => by simpa only [Nat.cast_add, Nat.cast_one] using hi k hk)
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
          positivity
        _ = _ := by
          rw [← Finset.mul_sum, hsum,
            inverse_sqrt_integral _ _ hpos (by exact_mod_cast hK)]
    have hUr : (U : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
    have hsu : Real.sqrt (U : ℝ) ≤ A := by
      apply Real.sqrt_le_iff.mpr
      exact ⟨by linarith, hUr⟩
    have hrat : (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ) ≤ A := by
      have hmono : Real.sqrt (U : ℝ) ≤ Real.sqrt ((U + 1 : ℕ) : ℝ) := by
        apply Real.sqrt_le_sqrt
        exact_mod_cast Nat.le_succ U
      calc
        _ = Real.sqrt (U : ℝ) *
            (Real.sqrt (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := by
          rw [mul_div_assoc, Real.mul_self_sqrt (Nat.cast_nonneg U)]
        _ ≤ Real.sqrt (U : ℝ) * 1 :=
          mul_le_mul_of_nonneg_left ((div_le_one (Real.sqrt_pos.2 hpos)).2 hmono)
            (Real.sqrt_nonneg _)
        _ ≤ A := by simpa using hsu
    have hdrop : (U : ℝ) *
        (2 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 2 / Real.sqrt (K : ℝ)) ≤
        2 * ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) := by
      have hn : 0 ≤ (U : ℝ) * (2 / Real.sqrt (K : ℝ)) := by positivity
      nlinarith
    exact hmass.trans (hdrop.trans (by linarith))
  · have hs : s = ∅ := Finset.Ico_eq_empty_of_le (by omega)
    simp only [columnEnvelopeMass, hs, Finset.sum_empty]
    linarith

end
end FormalResearch.RiemannHypothesis.SourceColumnEnvelopeMass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantcc4f79f1445212f864393af14d5c74b1fcd383efb611e3f5c4584e8690470483.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326f52c82ec0256ace0e0773e48940f289eecbe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
