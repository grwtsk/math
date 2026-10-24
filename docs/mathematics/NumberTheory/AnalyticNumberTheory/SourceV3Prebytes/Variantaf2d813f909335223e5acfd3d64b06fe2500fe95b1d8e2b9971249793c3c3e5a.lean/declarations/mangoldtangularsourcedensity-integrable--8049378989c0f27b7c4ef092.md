# mangoldtAngularSourceDensity_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d474222-4b09-97ab-a27e-d18cc73afff6",
  "kind": "theorem",
  "lexical_name": "mangoldtAngularSourceDensity_integrable",
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
  "slug": "mangoldtangularsourcedensity-integrable--8049378989c0f27b7c4ef092",
  "source": {
    "blob": "1cb2f396506778bf40a4631085f6df5b7249c0bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 264,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8049378989c0f27b7c4ef0924336e187fe7469bf7a7fa2e663e584273c2465d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d474222-4b09-97ab-a27e-d18cc73afff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtAngularSourceDensity_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun ω => mangoldtAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) := by
  have hint := mangoldtStandardSourceDensity_integrable hA
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    mangoldtFourierSymbol_eq_angular] at hint
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hint

/-- Positive-angular Parseval has the distinct measure conversion factor `1/(2π)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb2f396506778bf40a4631085f6df5b7249c0bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
