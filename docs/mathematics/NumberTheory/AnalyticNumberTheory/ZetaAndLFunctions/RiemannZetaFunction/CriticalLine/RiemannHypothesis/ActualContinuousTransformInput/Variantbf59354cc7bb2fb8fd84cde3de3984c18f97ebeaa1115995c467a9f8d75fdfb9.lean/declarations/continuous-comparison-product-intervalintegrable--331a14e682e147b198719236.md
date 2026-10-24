# continuous_comparison_product_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab937074-090b-985b-e500-edfebf46094d",
  "kind": "theorem",
  "lexical_name": "continuous_comparison_product_intervalIntegrable",
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
  "slug": "continuous-comparison-product-intervalintegrable--331a14e682e147b198719236",
  "source": {
    "blob": "51c2d45428463fa0def7d68fb4de13efa677e80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:331a14e682e147b198719236f96a79d8e4492a8f63dfae35d779f9bbb37e68bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab937074-090b-985b-e500-edfebf46094d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_comparison_product_intervalIntegrable {A a ε : ℝ}
    (hA : 1 ≤ A) (hε : 0 < ε) :
    IntervalIntegrable (fun u ↦ C A u * Real.exp (3 * u / 16) *
      continuousInput A a ε (Real.exp u)) volume (-2 * A) (2 * A) := by
  simp_rw [exact_continuous_comparison_integrand]
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  exact (((hc.pow 2).div (hc.abs.add continuous_const)
    (fun u ↦ (add_pos_of_nonneg_of_pos (abs_nonneg (C A u)) hε).ne')).mul
    (Real.continuous_exp.comp (continuous_const.mul continuous_id))).intervalIntegrable _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c2d45428463fa0def7d68fb4de13efa677e80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
