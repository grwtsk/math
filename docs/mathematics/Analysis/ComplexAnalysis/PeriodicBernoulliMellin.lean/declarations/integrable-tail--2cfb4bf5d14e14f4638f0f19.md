# integrable_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d1246ad-cbfc-f8d5-b26a-0ea5ad643a4f",
  "kind": "theorem",
  "lexical_name": "integrable_tail",
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
  "slug": "integrable-tail--2cfb4bf5d14e14f4638f0f19",
  "source": {
    "blob": "c5cea76d055497a0fe59c04143030e4025604152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 45,
    "path": "GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cfb4bf5d14e14f4638f0f193c156bcdc364165b1e76c0186b07910a013dcf02",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d1246ad-cbfc-f8d5-b26a-0ea5ad643a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_tail (m : ℕ) {N σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hexp : 1 < σ + m) (hs : σ ≤ s.re) :
    IntegrableOn (integrand m s) (Ioi N) := by
  have hN0 : 0 < N := zero_lt_one.trans_le hN
  have hp : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-s - (m : ℂ))) (Ioi N) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (hN0.trans ht).ne')).continuousWithinAt
  have hm : AEStronglyMeasurable (integrand m s) (volume.restrict (Ioi N)) := by
    exact ((Complex.continuous_ofReal.measurable.comp
      (PeriodicBernoulli.measurable_periodic m)).aestronglyMeasurable.restrict).mul
        (hp.aestronglyMeasurable measurableSet_Ioi)
  have hg : IntegrableOn (fun t : ℝ =>
      (PeriodicBernoulli.majorant m : ℝ) * t ^ (-(σ + m))) (Ioi N) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -(σ + (m : ℝ)) < -1) hN0).const_mul _
  apply hg.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact norm_integrand_le m (hN.trans ht.le) hs

/-- Uniform in the entire declared half-plane, not checked on a finite grid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cea76d055497a0fe59c04143030e4025604152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
