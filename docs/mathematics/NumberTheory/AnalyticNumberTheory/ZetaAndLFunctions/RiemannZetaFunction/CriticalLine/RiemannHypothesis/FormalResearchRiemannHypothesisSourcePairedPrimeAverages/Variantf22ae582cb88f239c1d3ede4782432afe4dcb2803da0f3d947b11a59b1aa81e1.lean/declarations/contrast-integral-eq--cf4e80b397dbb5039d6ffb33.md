# contrast_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38551a259e68ad118b8dd9e82f8f4090fc76ce6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4ec30de-5708-9215-ccdb-2ac4920d50d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a96e79cf-70d7-cd8e-5c0e-af65c41e6aa1",
  "kind": "theorem",
  "lexical_name": "contrast_integral_eq",
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
  "slug": "contrast-integral-eq--cf4e80b397dbb5039d6ffb33",
  "source": {
    "blob": "38551a259e68ad118b8dd9e82f8f4090fc76ce6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4e80b397dbb5039d6ffb337227bf0c5fa76f91d5e8aca8d6ade30ff4cc8c8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a96e79cf-70d7-cd8e-5c0e-af65c41e6aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contrast_integral_eq {A : ℝ} (hA : 0 < A) :
    (∫ s in 0..2*A, ∫ t in 0..2*A,
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t) =
      negativeMass A * positiveSlopeWork A - negativeSlopeWork A * positiveMass A := by
  simp_rw [contrast_inner_eq hA]
  have he : (fun s : ℝ => positiveSlope A s *
      (primeLogError s * negativeMass A - negativeSlopeWork A)) =
      (fun s : ℝ => negativeMass A * (primeLogError s * positiveSlope A s) -
        negativeSlopeWork A * positiveSlope A s) := by
    funext s
    ring
  rw [he, intervalIntegral.integral_sub
    ((positiveSlopeWork_intervalIntegrable hA).const_mul (negativeMass A))
    ((positiveSlope_intervalIntegrable hA).const_mul (negativeSlopeWork A)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38551a259e68ad118b8dd9e82f8f4090fc76ce6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
