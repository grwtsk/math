# residual_sub_actual_leading_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55581309-19c4-ce6a-7002-d39073455cbe",
  "kind": "theorem",
  "lexical_name": "residual_sub_actual_leading_abs_le",
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
  "slug": "residual-sub-actual-leading-abs-le--3f827dc7f61b5ab2340683ea",
  "source": {
    "blob": "9a60397f724c785ea57bcdfd7c160a996f8289a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f827dc7f61b5ab2340683ea0dab1b2c73b74627fbf8c2ac30431f7713f26257",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55581309-19c4-ce6a-7002-d39073455cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_actual_leading_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - actualLeadingRenormalizedTail A| ≤
      actualLeadingResidualEnvelope A := by
  have hc := residual_sub_pairing_sub_zeta_abs_le hA
  have hs := (renormalized_tail_sub_actual_leading_abs_le hA).trans
    (fullKappaShortBudget_le_logarithmic_envelope hA)
  have hh := actualEarly_add_scale_zeta_abs_le hA
  have hp := complete_pairing_eq_renormalized_tail_add_actual_head A
    (by linarith : 1 ≤ A)
  have ht := (abs_add_le
    ((mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A))
    (SourceStrictComplementaryLocalization.complementaryEarlyBaseline A + A +
      (riemannZeta (1 / 2 : ℂ)).re)).trans
      (add_le_add_right (abs_add_le _ _) _)
  have he : ((mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)) +
      (SourceStrictComplementaryLocalization.complementaryEarlyBaseline A + A +
        (riemannZeta (1 / 2 : ℂ)).re) =
      mertensResidual A - actualLeadingRenormalizedTail A := by rw [hp]; ring
  rw [he] at ht
  unfold actualLeadingResidualEnvelope
  linarith

/-- All quantitative reconstruction errors vanish along real atTop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a60397f724c785ea57bcdfd7c160a996f8289a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
