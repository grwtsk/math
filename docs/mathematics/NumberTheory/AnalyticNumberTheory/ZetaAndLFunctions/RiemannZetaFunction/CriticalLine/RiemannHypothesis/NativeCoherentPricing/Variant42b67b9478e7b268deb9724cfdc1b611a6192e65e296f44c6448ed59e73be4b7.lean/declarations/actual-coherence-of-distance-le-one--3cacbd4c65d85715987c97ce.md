# actual_coherence_of_distance_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:918e6d2b-14a1-3432-2aaf-6f8754fe257e",
  "kind": "theorem",
  "lexical_name": "actual_coherence_of_distance_le_one",
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
  "slug": "actual-coherence-of-distance-le-one--3cacbd4c65d85715987c97ce",
  "source": {
    "blob": "4c2d043078bfe9d39a8fc2e2e88c8ed27bccba5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cacbd4c65d85715987c97cefaf5a14b2432f776e0c6623d8a9f169853eb4c6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918e6d2b-14a1-3432-2aaf-6f8754fe257e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_coherence_of_distance_le_one {A t : ℝ} (hA : 8 ≤ A) (ht : |t| ≤ 1) :
    (319 / 384 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hsqA : 64 ≤ A ^ 2 := by nlinarith
  have hsq : t ^ 2 ≤ 1 := by nlinarith [(abs_le.mp ht).1, (abs_le.mp ht).2]
  have hcoef : 162826 / (7623 * A ^ 2) ≤ (65 / 192 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 7623 * A ^ 2)).mpr
    nlinarith
  have h := sourceCorrelation_linear_taylor_bound hA1 0 t
  simp only [zero_add, actual_correlation_anchor hA1, sourceCorrelation_deriv_zero hAp,
    mul_zero, sub_zero] at h
  have hprice : 162826 / (7623 * A ^ 2) * t ^ 2 / 2 ≤ (65 / 384 : ℝ) := by
    have h := mul_le_mul hcoef hsq (sq_nonneg t) (by norm_num : (0 : ℝ) ≤ 65 / 192)
    linarith
  have hleft := (abs_le.mp (h.trans hprice)).1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c2d043078bfe9d39a8fc2e2e88c8ed27bccba5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
