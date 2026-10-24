# norm_integral_le_of_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dd53469-5cd6-61ed-6610-0b2b7713602e",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_of_norm_le",
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
  "slug": "norm-integral-le-of-norm-le--7e8a10e53ec4844974cdd28e",
  "source": {
    "blob": "6098dac7fbdb5c9e227e6daf427dac61b577eb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 393,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8a10e53ec4844974cdd28e25d4cdcc05f07fc3596b899e3cd9c15d1da4dead",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dd53469-5cd6-61ed-6610-0b2b7713602e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_of_norm_le {g : ℝⁿ → ℝ} (hle : ∀ x ∈ Box.Icc I, ‖f x‖ ≤ g x)
    (μ : Measure ℝⁿ) [IsLocallyFiniteMeasure μ] (hg : Integrable I l g μ.toBoxAdditive.toSMul) :
    ‖(integral I l f μ.toBoxAdditive.toSMul : E)‖ ≤ integral I l g μ.toBoxAdditive.toSMul := by
  by_cases hfi : Integrable.{u, v, v} I l f μ.toBoxAdditive.toSMul
  · refine' le_of_tendsto_of_tendsto' hfi.hasIntegral.norm hg.hasIntegral fun π => _
    refine' norm_sum_le_of_le _ fun J _ => _
    simp only [BoxAdditiveMap.toSMul_apply, norm_smul, smul_eq_mul, Real.norm_eq_abs,
      μ.toBoxAdditive_apply, abs_of_nonneg ENNReal.toReal_nonneg]
    exact mul_le_mul_of_nonneg_left (hle _ <| π.tag_mem_Icc _) ENNReal.toReal_nonneg
  · rw [integral, dif_neg hfi, norm_zero]
    exact integral_nonneg (fun x hx => (norm_nonneg _).trans (hle x hx)) μ
#align box_integral.norm_integral_le_of_norm_le BoxIntegral.norm_integral_le_of_norm_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6098dac7fbdb5c9e227e6daf427dac61b577eb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
