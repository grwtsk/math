# actualResidual_le_iff_negative_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f79efc8-eeb8-5d56-cbb8-13dba46ffc9b",
  "kind": "theorem",
  "lexical_name": "actualResidual_le_iff_negative_fraction",
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
  "slug": "actualresidual-le-iff-negative-fraction--1f998902885ee69297cd02e2",
  "source": {
    "blob": "8dc562236ef240cb7e1332494817d73d84e1f078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf6cd0482c0c4d44f99e68b16823f9635ae71c5c23de3e8760c24af3381a0f614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f998902885ee69297cd02e2e448d4ed22c0aafe0f03ac973c6dcd8f99d1a574",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf6cd0482c0c4d44f99e68b16823f9635ae71c5c23de3e8760c24af3381a0f614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f79efc8-eeb8-5d56-cbb8-13dba46ffc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_le_iff_negative_fraction {A K : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    mertensResidual A ≤ K ↔
      1 / 2 - K / (2 * actualClosedAbsolutePrimeMoment A) ≤
        actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A := by
  have hs := actualClosedAbsolutePrimeMoment_eq_variation_sum A
  have hd := actualMertensResidual_eq_variation_difference hA
  have hn : actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A =
      1 - actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A := by
    field_simp
    linarith
  rw [hn, actualResidual_le_iff_positive_fraction hA hV]
  constructor <;> intro h <;> linarith

/-- One fixed constant bounds the one-sided excess at every real tail scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf6cd0482c0c4d44f99e68b16823f9635ae71c5c23de3e8760c24af3381a0f614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf6cd0482c0c4d44f99e68b16823f9635ae71c5c23de3e8760c24af3381a0f614.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc562236ef240cb7e1332494817d73d84e1f078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
