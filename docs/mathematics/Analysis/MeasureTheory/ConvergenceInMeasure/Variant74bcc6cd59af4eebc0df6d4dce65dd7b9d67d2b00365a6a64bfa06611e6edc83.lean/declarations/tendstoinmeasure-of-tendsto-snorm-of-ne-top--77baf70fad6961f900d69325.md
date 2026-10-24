# tendstoInMeasure_of_tendsto_snorm_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:166083db-9e18-12bc-40cf-59a0406ef569",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_of_tendsto_snorm_of_ne_top",
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
  "slug": "tendstoinmeasure-of-tendsto-snorm-of-ne-top--77baf70fad6961f900d69325",
  "source": {
    "blob": "c85abc67f27c72c264914c532c721bf18d582528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 316,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77baf70fad6961f900d69325d8fde947380001f1eadaa34521a547f294b2d1c4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:166083db-9e18-12bc-40cf-59a0406ef569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_of_tendsto_snorm_of_ne_top (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) (hg : AEStronglyMeasurable g μ) {l : Filter ι}
    (hfg : Tendsto (fun n => snorm (f n - g) p μ) l (𝓝 0)) : TendstoInMeasure μ f l g := by
  refine' TendstoInMeasure.congr (fun i => (hf i).ae_eq_mk.symm) hg.ae_eq_mk.symm _
  refine' tendstoInMeasure_of_tendsto_snorm_of_stronglyMeasurable
    hp_ne_zero hp_ne_top (fun i => (hf i).stronglyMeasurable_mk) hg.stronglyMeasurable_mk _
  have : (fun n => snorm ((hf n).mk (f n) - hg.mk g) p μ) = fun n => snorm (f n - g) p μ := by
    ext1 n; refine' snorm_congr_ae (EventuallyEq.sub (hf n).ae_eq_mk.symm hg.ae_eq_mk.symm)
  rw [this]
  exact hfg
#align measure_theory.tendsto_in_measure_of_tendsto_snorm_of_ne_top MeasureTheory.tendstoInMeasure_of_tendsto_snorm_of_ne_top

/-- See also `MeasureTheory.tendstoInMeasure_of_tendsto_snorm` which work for general
Lp-convergence for all `p ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant74bcc6cd59af4eebc0df6d4dce65dd7b9d67d2b00365a6a64bfa06611e6edc83.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85abc67f27c72c264914c532c721bf18d582528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
