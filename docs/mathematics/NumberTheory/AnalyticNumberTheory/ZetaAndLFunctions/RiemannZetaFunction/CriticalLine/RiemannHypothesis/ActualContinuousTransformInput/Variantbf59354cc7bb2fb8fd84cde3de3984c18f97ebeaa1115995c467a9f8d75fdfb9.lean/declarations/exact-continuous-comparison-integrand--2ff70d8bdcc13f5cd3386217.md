# exact_continuous_comparison_integrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0f903b5-2b3d-479b-9123-8f206504fe3a",
  "kind": "theorem",
  "lexical_name": "exact_continuous_comparison_integrand",
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
  "slug": "exact-continuous-comparison-integrand--2ff70d8bdcc13f5cd3386217",
  "source": {
    "blob": "51c2d45428463fa0def7d68fb4de13efa677e80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff70d8bdcc13f5cd33862172212a0438d8ae42f152c8e9b6c5d5fde5e7144b1",
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

Occurrence: `result:d0f903b5-2b3d-479b-9123-8f206504fe3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_continuous_comparison_integrand (A a ε u : ℝ) :
    C A u * Real.exp (3 * u / 16) * continuousInput A a ε (Real.exp u) =
      (C A u ^ 2 / (|C A u| + ε)) * Real.exp ((a + 3 / 16) * u) := by
  rw [continuousInput, Real.log_exp, ← Real.exp_mul]
  have he : Real.exp (3 * u / 16) * Real.exp (u * a) =
      Real.exp ((a + 3 / 16) * u) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (C A u ^ 2 / (|C A u| + ε)) *
        (Real.exp (3 * u / 16) * Real.exp (u * a)) := by ring
    _ = _ := by rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variantbf59354cc7bb2fb8fd84cde3de3984c18f97ebeaa1115995c467a9f8d75fdfb9.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c2d45428463fa0def7d68fb4de13efa677e80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
