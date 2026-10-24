# rate_one_integrableOn_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c37e95-999d-c43f-3893-e6223a45519a",
  "kind": "theorem",
  "lexical_name": "rate_one_integrableOn_Ioc",
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
  "slug": "rate-one-integrableon-ioc--b1806801e3af248de72bb98e",
  "source": {
    "blob": "e30fd44e4bfafb51dbede2d14c3c7c748dd264e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1806801e3af248de72bb98ee67be489bbe8a371c00fcdc922d86b2347588f4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c37e95-999d-c43f-3893-e6223a45519a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rate_one_integrableOn_Ioc (R : ℝ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioc 1 R) := by
  have h₂ := (negativeSource_integrable_of_one_lt 2 (by norm_num)).mono_set
    (show Ioc 1 R ⊆ Ioi 1 from fun _ h ↦ h.1)
  have hm : AEStronglyMeasurable (fun A : ℝ ↦ Real.exp (-A) * negativeSource A)
      (volume.restrict (Ioc 1 R)) := by
    simpa only [neg_mul, one_mul] using
      (weighted_negativeSource_aestronglyMeasurable 1).mono_measure
        (Measure.restrict_mono (show Ioc 1 R ⊆ Ioi 1 from fun _ h ↦ h.1) le_rfl)
  apply (h₂.const_mul (Real.exp R)).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.1.le))]
  have he : Real.exp (-A) = Real.exp A * Real.exp (-2 * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he, mul_assoc]
  exact mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hA.2)
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.1.le))

/-- A summable eventual majorant suffices, with the finite prefix proved above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e30fd44e4bfafb51dbede2d14c3c7c748dd264e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
