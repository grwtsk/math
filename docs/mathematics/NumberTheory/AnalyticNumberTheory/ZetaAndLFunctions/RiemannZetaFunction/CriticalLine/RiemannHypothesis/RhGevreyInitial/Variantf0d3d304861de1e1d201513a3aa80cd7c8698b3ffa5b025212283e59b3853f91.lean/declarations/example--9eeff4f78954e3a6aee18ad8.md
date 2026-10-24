# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:715f17280ed819d119302672bac774c53f4ea89aa6db887adede60504dedc2a8",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--9eeff4f78954e3a6aee18ad8",
  "source": {
    "blob": "58ef1eeaeebe19bcbf13bc50e4ada358c1fba156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyInitial/Variantf0d3d304861de1e1d201513a3aa80cd7c8698b3ffa5b025212283e59b3853f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9eeff4f78954e3a6aee18ad8d761edc735416516451b09cdff7613cef1182d10",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyInitial/Variantf0d3d304861de1e1d201513a3aa80cd7c8698b3ffa5b025212283e59b3853f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:715f17280ed819d119302672bac774c53f4ea89aa6db887adede60504dedc2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (GevreyNormalization.normalizedOperator GevreyProfile.profile A x) ^ 2) = 1 :=
  GevreyNormalization.profile_normalizedOperator_square_integral hA

#print axioms GevreyEnvelope.diagnostic_exponent_test_point
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_div
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_atTop
#print axioms GevreyProfile.profile_contDiff
#print axioms GevreyProfile.profile_support
#print axioms GevreyProfile.profile_hasCompactSupport
#print axioms GevreyProfile.profile_nonzero
#print axioms GevreyNormalization.integral_second_mul_profile
#print axioms GevreyNormalization.dilationOperator_square_integrable
#print axioms GevreyNormalization.normalization_eq
#print axioms GevreyNormalization.normalization_uniform_lower_bound
#print axioms GevreyNormalization.normalization_pos
#print axioms GevreyNormalization.profile_normalization
#print axioms GevreyNormalization.profile_normalization_uniform_positive_lower_bound
#print axioms GevreyNormalization.profile_normalizedOperator_square_integral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyInitial/Variantf0d3d304861de1e1d201513a3aa80cd7c8698b3ffa5b025212283e59b3853f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyInitial/Variantf0d3d304861de1e1d201513a3aa80cd7c8698b3ffa5b025212283e59b3853f91.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ef1eeaeebe19bcbf13bc50e4ada358c1fba156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
