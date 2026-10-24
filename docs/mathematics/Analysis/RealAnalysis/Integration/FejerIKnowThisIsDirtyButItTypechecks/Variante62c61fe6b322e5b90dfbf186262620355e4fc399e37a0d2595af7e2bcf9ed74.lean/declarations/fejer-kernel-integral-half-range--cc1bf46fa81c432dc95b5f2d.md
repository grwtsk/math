# fejer_kernel_integral_half_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb52c170-71ae-40d2-045c-24c1a2b57680",
  "kind": "lemma",
  "lexical_name": "fejer_kernel_integral_half_range",
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
  "slug": "fejer-kernel-integral-half-range--cc1bf46fa81c432dc95b5f2d",
  "source": {
    "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1146,
    "line": 1127,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1bf46fa81c432dc95b5f2dca6cb47740ac42112f8c7016dbeedfde52175f3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb52c170-71ae-40d2-045c-24c1a2b57680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1127–1146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_kernel_integral_half_range (n : ℕ) :
    (1 / Real.pi) * ∫ t in (0:ℝ)..Real.pi, fejer_kernel n t = 1 / 2 := by
      -- Since the Fejér kernel is even, we have $\int_{-\pi}^{\pi} K_n(t) dt = 2 \int_{0}^{\pi} K_n(t) dt$.
      have h_even : ∫ t in (-Real.pi)..Real.pi, fejer_kernel n t = 2 * ∫ t in (0)..Real.pi, fejer_kernel n t := by
        -- By definition of even function, we can split the integral into two parts: from -π to 0 and from 0 to π.
        have h_split : ∫ t in (-Real.pi)..Real.pi, fejer_kernel n t = (∫ t in (-Real.pi)..0, fejer_kernel n t) + (∫ t in (0)..Real.pi, fejer_kernel n t) := by
          rw [ intervalIntegral.integral_add_adjacent_intervals ] <;> apply_rules [ Continuous.intervalIntegrable ];
          · unfold fejer_kernel;
            unfold dirichlet_kernel;
            fun_prop (disch := norm_num);
          · unfold fejer_kernel;
            unfold dirichlet_kernel;
            fun_prop (disch := norm_num);
        norm_num [ two_mul, h_split ];
        convert intervalIntegral.integral_comp_neg _ using 2 <;> norm_num [ fejer_kernel_even ];
      have := fejer_kernel_integral_one n; rw [ h_even ] at this; nlinarith [ Real.pi_pos, mul_inv_cancel₀ Real.pi_ne_zero ] ;

/-
Identity for the difference between the Fejér sum at a point and the average of the left and right limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean#L1127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
