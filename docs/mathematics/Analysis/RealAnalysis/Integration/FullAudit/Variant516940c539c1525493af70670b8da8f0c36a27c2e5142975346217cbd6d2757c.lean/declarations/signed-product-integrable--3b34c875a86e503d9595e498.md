# signed_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ff2e47-ee21-86e8-7dea-1834c24efa19",
  "kind": "theorem",
  "lexical_name": "signed_product_integrable",
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
  "slug": "signed-product-integrable--3b34c875a86e503d9595e498",
  "source": {
    "blob": "b377932567934ade5ff070ca3203d60cec461170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b34c875a86e503d9595e4981636b8f4645a1422bdd93ad5ca5a40bde9e31d36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ff2e47-ee21-86e8-7dea-1834c24efa19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_product_integrable :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
      (halfLineMeasure.prod halfLineMeasure) := by
  have hmeas : StronglyMeasurable
      (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2)) :=
    (fixedKernel_measurable.comp measurable_fst).stronglyMeasurable.mul
      (fixedKernel_measurable.comp (measurable_fst.add measurable_snd)).stronglyMeasurable
  refine (integrable_prod_iff hmeas.aestronglyMeasurable).mpr ⟨?_, ?_⟩
  · filter_upwards [] with u
    exact ((fixedKernel_integrable.comp_add_left u).const_mul (fixedKernel u)).integrableOn
  · refine (fixedKernel_integrable.norm.mul_const (∫ s : ℝ, ‖fixedKernel s‖)).integrableOn.mono'
      hmeas.norm.integral_prod_right'.aestronglyMeasurable ?_
    filter_upwards [] with u
    rw [Real.norm_of_nonneg (integral_nonneg (fun s => norm_nonneg _))]
    simp only [norm_mul, integral_const_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    calc
      _ ≤ ∫ s : ℝ, ‖fixedKernel (u + s)‖ :=
        integral_mono_measure Measure.restrict_le_self (Filter.Eventually.of_forall
          (fun s => norm_nonneg _)) (fixedKernel_integrable.comp_add_left u).norm
      _ = _ := shifted_kernel_norm_integral u

/-- Exponential weighting preserves genuine absolute product integrability for a≥0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b377932567934ade5ff070ca3203d60cec461170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
