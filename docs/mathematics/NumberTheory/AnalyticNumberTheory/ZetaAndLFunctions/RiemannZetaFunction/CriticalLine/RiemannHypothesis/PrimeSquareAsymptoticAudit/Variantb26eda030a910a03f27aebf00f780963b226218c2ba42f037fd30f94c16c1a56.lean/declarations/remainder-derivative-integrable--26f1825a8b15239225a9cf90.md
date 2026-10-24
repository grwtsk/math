# remainder_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23ba7436261fd021c59b459d31ee83ea8e9e2e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8af4d22-80c1-feab-3f42-f8955e7ac7fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db975a1f-ade4-b353-0dfc-8cde8af12031",
  "kind": "theorem",
  "lexical_name": "remainder_derivative_integrable",
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
  "slug": "remainder-derivative-integrable--26f1825a8b15239225a9cf90",
  "source": {
    "blob": "e23ba7436261fd021c59b459d31ee83ea8e9e2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f1825a8b15239225a9cf905d0dd039514be26c3f93f987dc9d267528456da6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db975a1f-ade4-b353-0dfc-8cde8af12031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) (Ioi 0) := by
  have hC : ContDiff ℝ 1 (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) :=
    (sourceCorrelation_contDiff A (by linarith)).comp (contDiff_const.mul contDiff_id)
  have hm : AEStronglyMeasurable (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u)
      (volume.restrict (Ioi 0)) :=
    (thetaRemainder_measurable.mul hC.continuous_deriv_one.measurable).aestronglyMeasurable
  apply (thetaRemainder_first_moment_integrable.const_mul (260 / (3 * A ^ 2))).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  simpa only [Real.norm_eq_abs] using remainder_derivative_norm_bound A u hA hu.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23ba7436261fd021c59b459d31ee83ea8e9e2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
