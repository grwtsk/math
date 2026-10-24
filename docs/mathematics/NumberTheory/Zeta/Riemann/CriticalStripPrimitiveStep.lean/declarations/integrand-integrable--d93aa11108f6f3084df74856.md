# integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9556cd62-88d3-e249-0941-998da2e5fd25",
  "kind": "lemma",
  "lexical_name": "integrand_integrable",
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
  "slug": "integrand-integrable--d93aa11108f6f3084df74856",
  "source": {
    "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93aa11108f6f3084df74856e92838d42c94b7ec1d34a1726b2766448aa879fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9556cd62-88d3-e249-0941-998da2e5fd25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrand_integrable (K : BoundedKernel) {T : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hz : 1 < z.re) : IntegrableOn (K.integrand z) (Ioi T) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hp : IntegrableOn (fun t : ℝ => t ^ (-z.re)) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  have hc : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-z)) (Ioi T) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (hT0.trans ht).ne')).continuousWithinAt
  have hm : AEStronglyMeasurable (K.integrand z) (volume.restrict (Ioi T)) :=
    K.measurable.aestronglyMeasurable.mul (hc.aestronglyMeasurable measurableSet_Ioi)
  apply (hp.const_mul K.bound).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht),
    Complex.neg_re]
  exact mul_le_mul_of_nonneg_right (K.norm_le t) (Real.rpow_nonneg (hT0.trans ht).le _)

/-- Both the real-part margin and cutoff are explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
