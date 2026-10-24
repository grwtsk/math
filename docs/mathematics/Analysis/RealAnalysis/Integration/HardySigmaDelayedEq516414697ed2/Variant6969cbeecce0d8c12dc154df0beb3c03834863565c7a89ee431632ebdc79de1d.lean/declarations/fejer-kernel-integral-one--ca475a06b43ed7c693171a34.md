# fejer_kernel_integral_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fbca745-0514-b35b-111a-a8d4ce121df4",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_integral_one",
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
  "slug": "fejer-kernel-integral-one--ca475a06b43ed7c693171a34",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 414,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca475a06b43ed7c693171a3443adb28726ea8cd50c93b25c0df8fd7eff3a7a5c",
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

Occurrence: `result:2fbca745-0514-b35b-111a-a8d4ce121df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_integral_one (n : ℕ) : (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, fejer_kernel n t = 1 := by
  unfold fejer_kernel;
  -- By Fubini's theorem, we can interchange the order of summation and integration.
  have h_fubini : ∫ t in (-Real.pi)..Real.pi, (∑ j ∈ Finset.range (n + 1), dirichlet_kernel j t) = ∑ j ∈ Finset.range (n + 1), ∫ t in (-Real.pi)..Real.pi, dirichlet_kernel j t := by
    rw [ intervalIntegral.integral_finset_sum ];
    intro i hi; apply_rules [ Continuous.intervalIntegrable ] ; unfold dirichlet_kernel; continuity;
  -- By definition of $D_n(t)$, we know that $\int_{-\pi}^{\pi} D_n(t) \, dt = \pi$.
  have h_dirichlet_integral : ∀ j : ℕ, ∫ t in (-Real.pi)..Real.pi, dirichlet_kernel j t = Real.pi := by
    intro j; unfold dirichlet_kernel; rw [ intervalIntegral.integral_add ] <;> norm_num ; ring;
    · erw [ intervalIntegral.integral_finset_sum ] <;> norm_num;
      · erw [ Finset.sum_eq_zero ] ; intros ; rw [ intervalIntegral.integral_comp_mul_left ] <;> norm_num ; aesop;
      · exact fun _ _ _ => Continuous.intervalIntegrable ( Real.continuous_cos.comp <| by continuity ) _ _;
    · exact Continuous.intervalIntegrable ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) ) _ _;
  simp_all +decide [ div_eq_inv_mul, mul_assoc, mul_comm, mul_left_comm, ne_of_gt Real.pi_pos ];
  exact mul_inv_cancel₀ ( by positivity )

/-
Property (c) part 1: The Fejér kernel is bounded by (n+1)/2.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
