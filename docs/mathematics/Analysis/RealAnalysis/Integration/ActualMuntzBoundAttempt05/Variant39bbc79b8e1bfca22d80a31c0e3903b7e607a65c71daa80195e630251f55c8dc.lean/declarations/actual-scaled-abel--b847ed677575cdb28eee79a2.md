# actual_scaled_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac9f4606-43cd-fc4d-2a07-d4f72d712051",
  "kind": "theorem",
  "lexical_name": "actual_scaled_Abel",
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
  "slug": "actual-scaled-abel--b847ed677575cdb28eee79a2",
  "source": {
    "blob": "3aaf8ceaf415c885cc24304a0751bf7729a6e9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b847ed677575cdb28eee79a2066c620c4ff80561a96a2d564b949b69a3c8771f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac9f4606-43cd-fc4d-2a07-d4f72d712051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_Abel {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = -(∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *((⌊t⌋₊ : ℝ)+1)) := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hid : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hs := sum_mul_eq_sub_integral_mul (fun _ : ℕ => (1 : ℝ))
    (div_nonneg (Real.exp_pos A).le hx.le)
    (fun t _ => (hg.differentiable (by norm_num) t)) hid
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  have hleft : (∑ n ∈ Finset.Icc 0 ⌊Real.exp A/x⌋₊, g n * (1 : ℝ)) = actualMuntz A x := by
    simp only [mul_one]
    rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_allSamples (by linarith) hx,
      allSamples_eq_closed_inventory (by linarith) hx]
    unfold g upperInventory
    apply Finset.sum_congr rfl
    intro n _
    rw [mul_comm]
  rw [hleft,hz,zero_mul,zero_sub] at hs
  simpa only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,
    mul_one,Nat.cast_add,Nat.cast_one,g] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aaf8ceaf415c885cc24304a0751bf7729a6e9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
