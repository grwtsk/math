# actual_negative_limit_not_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d02e5078-246d-b432-50fe-726860a65a22",
  "kind": "theorem",
  "lexical_name": "actual_negative_limit_not_integrable",
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
  "slug": "actual-negative-limit-not-integrable--ce784e5df89caf5a32267879",
  "source": {
    "blob": "6b450731a860828d8231d8c2db8a53dc0ac0e795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce784e5df89caf5a32267879df22cdfbf23d50070d8178db617320c43cf31201",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d02e5078-246d-b432-50fe-726860a65a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_limit_not_integrable
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) : ¬ Integrable actualNegativeLimit := by
  have hc := actual_prime_intercept_pos hI
  have htail := (actual_primitive_affine_intercept hI).eventually
    (eventually_gt_nhds (by linarith : actualPrimeIntercept/2 < actualPrimeIntercept))
  obtain ⟨R,hR⟩ := eventually_atTop.mp htail
  have hnot : ¬ IntegrableOn actualNegativeLimit (Ioi (0:ℝ)) := by
    apply not_integrableOn_of_positive_tail
      (d:=actualPrimeIntercept/8) (R:=max 0 R) (by positivity) (le_max_left _ _)
    intro u hu
    have hu0 : 0 < u := lt_of_le_of_lt (le_max_left _ _) hu
    have hj := hR u ((le_max_right _ _).trans hu.le)
    have he : 1 ≤ Real.exp (u/2) := Real.one_le_exp_iff.mpr (by linarith)
    rw [actualNegativeLimit,indicator_of_mem hu0]
    have hm := le_max_left
      ((criticalDiscrepancyPrimitive u-actualAffineSlope*u)*(Real.exp (u/2)/4)) (0:ℝ)
    nlinarith
  exact fun hi => hnot hi.integrableOn

/-- The older sufficient negative-part certificate is too strong for this actual source,
under only genuine arithmetic L1. This leaves the original signed target unresolved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt01/Variantcdac241345dd26d2b248bc4e810f28c0f5a4bfa9a0b752a40e7d022db364fcea.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b450731a860828d8231d8c2db8a53dc0ac0e795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
