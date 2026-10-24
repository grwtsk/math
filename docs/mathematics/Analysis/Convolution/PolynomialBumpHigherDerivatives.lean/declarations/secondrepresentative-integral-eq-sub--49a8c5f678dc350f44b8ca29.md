# secondRepresentative_integral_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2612a7a0-cb3f-804d-c6ed-886c8c7687f9",
  "kind": "theorem",
  "lexical_name": "secondRepresentative_integral_eq_sub",
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
  "slug": "secondrepresentative-integral-eq-sub--49a8c5f678dc350f44b8ca29",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 457,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a8c5f678dc350f44b8ca2983e493f8e4f3bbe0a2810460807bf333efc672e6",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2612a7a0-cb3f-804d-c6ed-886c8c7687f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondRepresentative_integral_eq_sub {A : ℝ} (hA : 0 < A) (a b : ℝ) :
    (∫ x in a..b, secondRepresentative A x) =
      deriv (normalizedTest explicitSecondDerivative A) b -
        deriv (normalizedTest explicitSecondDerivative A) a := by
  rw [← (actual_first_derivative_absolutelyContinuous hA a b).integral_deriv_eq_sub]
  apply intervalIntegral.integral_congr_ae
  filter_upwards [actual_second_derivative_ae_eq hA] with x hx _
  exact hx.symm

/-- Integration by parts identifies the weak second derivative against every C¹ test function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
