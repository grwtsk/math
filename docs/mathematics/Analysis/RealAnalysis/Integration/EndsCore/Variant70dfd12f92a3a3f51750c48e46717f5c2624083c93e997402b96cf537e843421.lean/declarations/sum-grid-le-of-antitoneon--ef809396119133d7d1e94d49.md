# sum_grid_le_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f57b13dc-c53a-b872-d850-6aaf430eef76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80683fa8-7f06-a38d-270a-1c27d001705e",
  "kind": "theorem",
  "lexical_name": "sum_grid_le_of_antitoneOn",
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
  "slug": "sum-grid-le-of-antitoneon--ef809396119133d7d1e94d49",
  "source": {
    "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 415,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef809396119133d7d1e94d4979b68417553e1c3d6257c2fad1a48fc368e7bcf7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80683fa8-7f06-a38d-270a-1c27d001705e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_grid_le_of_antitoneOn {f : ℝ → ℝ} (hf : AntitoneOn f (Set.Ici 0))
    (h0 : ∀ x, 0 ≤ x → 0 ≤ f x) {Δ h : ℝ} (hΔ : 0 ≤ Δ) (hh : 0 < h)
    (hint : IntegrableOn f (Set.Ioi Δ)) (n : ℕ) :
    ∑ j ∈ Finset.range n, f (Δ + j * h) ≤ f Δ + h⁻¹ * ∫ r in Set.Ioi Δ, f r := by
  have hI0 : 0 ≤ ∫ r in Set.Ioi Δ, f r :=
    setIntegral_nonneg measurableSet_Ioi fun x hx => h0 x (hΔ.trans (le_of_lt hx))
  cases n with
  | zero =>
    simp only [Finset.range_zero, Finset.sum_empty]
    exact add_nonneg (h0 Δ hΔ) (mul_nonneg (inv_nonneg.mpr hh.le) hI0)
  | succ m =>
    rw [Finset.sum_range_succ']
    simp only [Nat.cast_zero, zero_mul, add_zero, Nat.cast_add, Nat.cast_one]
    rw [add_comm]
    gcongr
    -- cells a j := Δ + j h
    set a : ℕ → ℝ := fun j => Δ + j * h with ha
    have ha_mono : ∀ j : ℕ, a j ≤ a (j + 1) := fun j => by
      simp only [ha, Nat.cast_add, Nat.cast_one]; nlinarith
    have hΔa : ∀ j : ℕ, Δ ≤ a j := fun j => by simp only [ha]; nlinarith [Nat.cast_nonneg (α := ℝ) j]
    have hcellInt : ∀ j : ℕ, IntervalIntegrable f volume (a j) (a (j + 1)) := fun j => by
      rw [intervalIntegrable_iff_integrableOn_Ioc_of_le (ha_mono j)]
      exact hint.mono_set fun x hx => lt_of_le_of_lt (hΔa j) hx.1
    -- per cell: h · f(a (j+1)) ≤ ∫_{a j}^{a (j+1)} f
    have hcell : ∀ j : ℕ, f (Δ + (j + 1) * h) ≤ h⁻¹ * ∫ x in (a j)..(a (j + 1)), f x := by
      intro j
      rw [le_inv_mul_iff₀ hh]
      have hconst : ∫ x in (a j)..(a (j + 1)), f (a (j + 1)) = h * f (Δ + (j + 1) * h) := by
        rw [intervalIntegral.integral_const, smul_eq_mul]
        simp only [ha, Nat.cast_add, Nat.cast_one]; ring
      rw [← hconst]
      refine intervalIntegral.integral_mono_on (ha_mono j) intervalIntegrable_const (hcellInt j)
        fun x hx => ?_
      have hx0 : 0 ≤ x := hΔ.trans ((hΔa j).trans hx.1)
      have hx1 : x ≤ a (j + 1) := hx.2
      have key := hf (show x ∈ Set.Ici (0:ℝ) from hx0) (show a (j + 1) ∈ Set.Ici (0:ℝ) from hx0.trans hx1) hx1
      simpa [ha, Nat.cast_add, Nat.cast_one] using key
    calc ∑ j ∈ Finset.range m, f (Δ + (↑j + 1) * h)
        ≤ ∑ j ∈ Finset.range m, h⁻¹ * ∫ x in (a j)..(a (j + 1)), f x :=
          Finset.sum_le_sum fun j _ => hcell j
      _ = h⁻¹ * ∫ x in (a 0)..(a m), f x := by
          rw [← Finset.mul_sum, intervalIntegral.sum_integral_adjacent_intervals fun j _ => hcellInt j]
      _ ≤ h⁻¹ * ∫ r in Set.Ioi Δ, f r := by
          gcongr
          have h0m : a 0 ≤ a m := by
            simp only [ha, Nat.cast_zero, zero_mul, add_zero]; nlinarith [Nat.cast_nonneg (α := ℝ) m]
          rw [intervalIntegral.integral_of_le h0m]
          exact setIntegral_mono_set hint
            (ae_restrict_of_forall_mem measurableSet_Ioi fun x hx => h0 x (hΔ.trans (le_of_lt hx)))
            (LE.le.eventuallyLE fun x hx => lt_of_le_of_lt (hΔa 0) hx.1)

/-- grid sum vs integral (ψ antitone): Σ_{j<n} ψ(Δ + j h) ≤ ψ(Δ) + h⁻¹ ∫_{(Δ,∞)} ψ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
