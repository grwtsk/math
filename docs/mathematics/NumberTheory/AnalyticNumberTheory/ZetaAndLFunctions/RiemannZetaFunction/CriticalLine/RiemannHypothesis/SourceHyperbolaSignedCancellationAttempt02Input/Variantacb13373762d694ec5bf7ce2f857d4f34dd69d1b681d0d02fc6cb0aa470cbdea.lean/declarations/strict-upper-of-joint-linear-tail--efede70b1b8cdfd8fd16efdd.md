# strict_upper_of_joint_linear_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4a89ac3-74a5-c28a-8674-585eda3f29d7",
  "kind": "theorem",
  "lexical_name": "strict_upper_of_joint_linear_tail",
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
  "slug": "strict-upper-of-joint-linear-tail--efede70b1b8cdfd8fd16efdd",
  "source": {
    "blob": "99002fc629fb150225792c2d6e8e4a4fb7a7642e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efede70b1b8cdfd8fd16efddf5b86e8d0d57d374bad8581c665d9634df071972",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4a89ac3-74a5-c28a-8674-585eda3f29d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_upper_of_joint_linear_tail {K R C_F : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A)
    (hledger : ∀ A : ℝ, 1 ≤ A →
      |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    ∀ A : ℝ, R ≤ A →
      strictColumnInterior A ≤
        K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 + C_F + 3 := by
  intro A hRA
  have hA1 : 1 ≤ A := by linarith
  have hr := residual_le_of_joint_linear_tail hR hjoint A hRA
  have hd := actual_residual_decomposition A hA1
  have hf := (abs_le.mp (hledger A hA1)).1
  have ht : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
      K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 + C_F := by
    linarith
  exact (strictColumnInterior_pointwise_upper_transfers_three A _ hA1).1 ht

/-- A hypothetical source-faithful joint upper witness reaches the primary strict frontier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99002fc629fb150225792c2d6e8e4a4fb7a7642e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
