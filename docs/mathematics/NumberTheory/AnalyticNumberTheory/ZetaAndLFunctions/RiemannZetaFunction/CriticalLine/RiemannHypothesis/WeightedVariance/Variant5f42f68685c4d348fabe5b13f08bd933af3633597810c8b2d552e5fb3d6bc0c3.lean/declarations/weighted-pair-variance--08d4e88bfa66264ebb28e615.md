# weighted_pair_variance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb37ee9b-d3c8-c7a5-8aeb-839eee960e8e",
  "kind": "theorem",
  "lexical_name": "weighted_pair_variance",
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
  "slug": "weighted-pair-variance--08d4e88bfa66264ebb28e615",
  "source": {
    "blob": "434e2c6227a8e918e8a80409e7d02cca0d7e3ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedVariance/Variant5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d4e88bfa66264ebb28e615c67d4ddc0d5f991d4ff8c0ef4f7f92ced9c5eb72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedVariance/Variant5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb37ee9b-d3c8-c7a5-8aeb-839eee960e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_pair_variance {ι : Type*} (s : Finset ι) (w B : ι → ℝ) :
    (∑ i ∈ s, w i) * (∑ i ∈ s, w i * B i ^ 2) - (∑ i ∈ s, w i * B i) ^ 2 =
      (1 / 2) * ∑ i ∈ s, ∑ j ∈ s, w i * w j * (B i - B j) ^ 2 := by
  simp_rw [inner_pair_expand]
  have h₁ : (∑ i ∈ s, w i * B i ^ 2 * (∑ j ∈ s, w j)) =
      (∑ i ∈ s, w i * B i ^ 2) * (∑ j ∈ s, w j) := by rw [Finset.sum_mul]
  have h₂ : (∑ i ∈ s, 2 * w i * B i * (∑ j ∈ s, w j * B j)) =
      2 * (∑ i ∈ s, w i * B i) * (∑ j ∈ s, w j * B j) := by
    simp_rw [show ∀ i : ι, 2 * w i * B i = 2 * (w i * B i) by intro i; ring]
    rw [← Finset.sum_mul, ← Finset.mul_sum]
  have h₃ : (∑ i ∈ s, w i * (∑ j ∈ s, w j * B j ^ 2)) =
      (∑ i ∈ s, w i) * (∑ j ∈ s, w j * B j ^ 2) := by rw [Finset.sum_mul]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, h₁, h₂, h₃]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedVariance/Variant5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedVariance/Variant5f42f68685c4d348fabe5b13f08bd933af3633597810c8b2d552e5fb3d6bc0c3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `434e2c6227a8e918e8a80409e7d02cca0d7e3ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
