# fejer_sum_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30cd1cee-b7bb-23db-c227-8d09feedff28",
  "kind": "theorem",
  "lexical_name": "fejer_sum_eq_integral",
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
  "slug": "fejer-sum-eq-integral--4126fb51f2e170d9dfca41f8",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 345,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4126fb51f2e170d9dfca41f80004f8b1f0c095ddfbbb314667c025bd8ad20dbe",
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

Occurrence: `result:30cd1cee-b7bb-23db-c227-8d09feedff28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_sum_eq_integral {f : ℝ → ℝ} (hf : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (h_per : Function.Periodic f (2 * Real.pi)) (n : ℕ) (x : ℝ) :
    fejer_sum f n x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, f t * fejer_kernel n (x - t) := by
      -- By Fubini's theorem, we can interchange the order of summation and integration.
      have h_fubini : ∫ t in (-Real.pi)..Real.pi, f t * (∑ j ∈ Finset.range (n + 1), dirichlet_kernel j (x - t)) = ∑ j ∈ Finset.range (n + 1), ∫ t in (-Real.pi)..Real.pi, f t * dirichlet_kernel j (x - t) := by
        simp +decide only [Finset.mul_sum _ _ _];
        rw [ intervalIntegral.integral_finset_sum ];
        intro i hi;
        apply_rules [ IntervalIntegrable.mul_continuousOn ];
        refine' Continuous.continuousOn _;
        exact Continuous.add continuous_const <| continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity;
      -- Substitute the definitions of fejer_sum and fejer_kernel into the goal.
      simp [fejer_sum, fejer_kernel];
      field_simp;
      rw [ intervalIntegral.integral_div, h_fubini, mul_comm ];
      rw [ mul_div_cancel₀ _ ( by positivity ), Finset.sum_congr rfl fun i hi => fourier_partial_sum_eq_integral hf h_per i x ] ; norm_num [ mul_assoc, mul_comm, mul_left_comm, Finset.mul_sum _ _ _ ]

/-
Closed form of the Dirichlet kernel D_n(t).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
