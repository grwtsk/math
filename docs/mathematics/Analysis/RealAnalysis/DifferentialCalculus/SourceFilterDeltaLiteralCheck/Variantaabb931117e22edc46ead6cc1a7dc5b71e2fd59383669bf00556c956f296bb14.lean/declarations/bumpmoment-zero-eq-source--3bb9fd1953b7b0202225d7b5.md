# bumpMoment_zero_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2f03bc-b53d-c904-7358-9919ea7679ff",
  "kind": "theorem",
  "lexical_name": "bumpMoment_zero_eq_source",
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
  "slug": "bumpmoment-zero-eq-source--3bb9fd1953b7b0202225d7b5",
  "source": {
    "blob": "f2e2954bdde10034647df7725bd1d60c2690f174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bb9fd1953b7b0202225d7b5c99e2c99e2ce0d3b3536526f94b3846ad7678171",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2f03bc-b53d-c904-7358-9919ea7679ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_zero_eq_source (z : ℂ) : bumpMoment 0 z =
    ∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ)) := by
  have he : (fun x : ℝ => (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Icc (-1 : ℝ) 1).indicator
        (fun x : ℝ => (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
    funext x
    simp only [fixedBump, sourceBump, indicator_apply]
    split_ifs <;> push_cast <;> simp
  rw [he, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  simp only [bumpMoment, pow_zero, one_mul]

/-- At zero the source mass is the exact positive rational `256 / 315`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variantaabb931117e22edc46ead6cc1a7dc5b71e2fd59383669bf00556c956f296bb14.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2e2954bdde10034647df7725bd1d60c2690f174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
