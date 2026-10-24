# strict_upper_of_joint_linear_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2103495b-6767-63c1-a411-3092f88cfb39",
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
  "slug": "strict-upper-of-joint-linear-tail--aab61e611224cd21468613b0",
  "source": {
    "blob": "754c0833cefe61c471772d1f0b58238095875952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aab61e611224cd21468613b085d1e5609e26b496a028e6e14d504d826f8dbc17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2103495b-6767-63c1-a411-3092f88cfb39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–149.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754c0833cefe61c471772d1f0b58238095875952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
