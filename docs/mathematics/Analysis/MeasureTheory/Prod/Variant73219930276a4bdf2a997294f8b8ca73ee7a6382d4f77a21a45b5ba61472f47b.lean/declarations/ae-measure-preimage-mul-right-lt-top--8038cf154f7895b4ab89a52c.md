# ae_measure_preimage_mul_right_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ea4235-ab08-18f4-9ff6-90ea951d5e03",
  "kind": "theorem",
  "lexical_name": "ae_measure_preimage_mul_right_lt_top",
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
  "slug": "ae-measure-preimage-mul-right-lt-top--8038cf154f7895b4ab89a52c",
  "source": {
    "blob": "16a4065bfb41689e592b6a16c2146123b88df3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 284,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8038cf154f7895b4ab89a52cdde4a3b6528a2268f698e8f4f303420fcb6141bb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ea4235-ab08-18f4-9ff6-90ea951d5e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_measure_preimage_mul_right_lt_top [IsMulLeftInvariant ν] (sm : MeasurableSet s)
    (hμs : μ s ≠ ∞) : ∀ᵐ x ∂μ, ν ((fun y => y * x) ⁻¹' s) < ∞ := by
  refine' ae_of_forall_measure_lt_top_ae_restrict' ν.inv _ _
  intro A hA _ h3A
  simp only [ν.inv_apply] at h3A
  apply ae_lt_top (measurable_measure_mul_right ν sm)
  have h1 := measure_mul_lintegral_eq μ ν sm (A⁻¹.indicator 1) (measurable_one.indicator hA.inv)
  rw [lintegral_indicator _ hA.inv] at h1
  simp_rw [Pi.one_apply, set_lintegral_one, ← image_inv, indicator_image inv_injective, image_inv, ←
    indicator_mul_right _ fun x => ν ((fun y => y * x) ⁻¹' s), Function.comp, Pi.one_apply,
    mul_one] at h1
  rw [← lintegral_indicator _ hA, ← h1]
  exact ENNReal.mul_ne_top hμs h3A.ne
#align measure_theory.ae_measure_preimage_mul_right_lt_top MeasureTheory.ae_measure_preimage_mul_right_lt_top
#align measure_theory.ae_measure_preimage_add_right_lt_top MeasureTheory.ae_measure_preimage_add_right_lt_top

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a4065bfb41689e592b6a16c2146123b88df3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
