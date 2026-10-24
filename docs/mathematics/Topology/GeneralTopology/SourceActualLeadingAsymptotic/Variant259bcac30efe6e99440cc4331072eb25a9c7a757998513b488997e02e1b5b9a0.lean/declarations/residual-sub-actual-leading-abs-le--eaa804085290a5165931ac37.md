# residual_sub_actual_leading_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fdb322e-cf97-a309-fe81-48443fb7a9a2",
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
  "slug": "residual-sub-actual-leading-abs-le--eaa804085290a5165931ac37",
  "source": {
    "blob": "016de2f777aec174d60a833219449416c0923feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa804085290a5165931ac37991cac988c4e3d7ad600ddaf4b560c07bcc8cd9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdb322e-cf97-a309-fe81-48443fb7a9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–82.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variant259bcac30efe6e99440cc4331072eb25a9c7a757998513b488997e02e1b5b9a0.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016de2f777aec174d60a833219449416c0923feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
