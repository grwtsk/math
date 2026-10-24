# unit_model_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7031225-185e-3251-bed0-fda8f851bd4e",
  "kind": "theorem",
  "lexical_name": "unit_model_derivative",
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
  "slug": "unit-model-derivative--51f5d65827c8d2cdaa4ea1f6",
  "source": {
    "blob": "5f330288866f0bddf1cdd2aa602d0e3acb9c3c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f5d65827c8d2cdaa4ea1f64818e696d6bfdd1e8938f943b457ab7a78c2c0fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7031225-185e-3251-bed0-fda8f851bd4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_model_derivative {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    plainModelDerivative A 1 u = -(1/2 : ℝ) * u^(-(3 : ℝ)/2) := by
  simp only [plainModelDerivative, Real.sqrt_one, div_one, Real.log_one,
    correlation_deriv_zero hA, actual_correlation_at_zero A hA, mul_zero,
    add_zero]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f330288866f0bddf1cdd2aa602d0e3acb9c3c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
