# tent_family_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c16e5cd2-68d2-cf95-6a58-585d0feed5a7",
  "kind": "theorem",
  "lexical_name": "tent_family_tail",
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
  "slug": "tent-family-tail--027faf9070c2c3bd9e4eaa16",
  "source": {
    "blob": "fa4c1d6ad206a6586ae0bb5f7f6e09912628e044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 53,
    "path": "GRWTSK/Analysis/Complex/TentKernelTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027faf9070c2c3bd9e4eaa16f2aef34a85ca3093f85178630833b78930bcac18",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16e5cd2-68d2-cf95-6a58-585d0feed5a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_family_tail (x h β T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hβ : 0 ≤ β) (hT : 1 ≤ T) (m : ι → ℕ) (ρ : ι → ℂ)
    (hρ : ∀ i, (ρ i).re ≤ β) (hheight : ∀ i, T < |(ρ i).im|)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤
        t * Real.log t) :
    Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) ∧
      Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) ∧
      ‖∑' i, (m i : ℂ) * tentKernel x h (ρ i)‖ ≤ tentTailBudget x h β T := by
  let C : ℝ := 4 * Real.exp ((β + 1) * Real.log (x + h)) / h
  have hC : 0 ≤ C := div_nonneg
    (mul_nonneg (by norm_num) (Real.exp_pos _).le) hh.le
  have hdom : ∀ i,
      ‖(m i : ℂ) * tentKernel x h (ρ i)‖ ≤ C * ((m i : ℝ) / |(ρ i).im| ^ 2) := by
    intro i
    have hγ : (ρ i).im ≠ 0 := by
      intro hz
      have hgt := hheight i
      rw [hz, abs_zero] at hgt
      linarith
    have hk := norm_tentKernel_le_inverse_height_sq x h β hh ha hβ (ρ i) (hρ i) hγ
    calc
      _ = (m i : ℝ) * ‖tentKernel x h (ρ i)‖ := by simp
      _ ≤ (m i : ℝ) *
          (4 * Real.exp ((β + 1) * Real.log (x + h)) / (h * (ρ i).im ^ 2)) :=
        mul_le_mul_of_nonneg_left hk (Nat.cast_nonneg _)
      _ = _ := by unfold C; rw [sq_abs]; simp only [div_eq_mul_inv, mul_inv_rev]; ring
  have hout := dominated_family_summable_and_bound
    (fun i => |(ρ i).im|) (fun i => (m i : ℝ))
    (fun i => (m i : ℂ) * tentKernel x h (ρ i)) T C hT hC
    (fun i => Nat.cast_nonneg _) hheight hcount hdom
  refine ⟨hout.1, hout.2.1, ?_⟩
  calc
    _ ≤ C * inverseSquareBudget T := hout.2.2
    _ = tentTailBudget x h β T := by
      unfold C inverseSquareBudget tentTailBudget
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring

/-- The finite head and its whole complement give a genuine full tsum. Only
the complement needs the horizontal bound. Extra high records in the finite
head are harmless, but every record of height at most T must be covered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelTail.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4c1d6ad206a6586ae0bb5f7f6e09912628e044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
