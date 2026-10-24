# log_model_integrand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e969b482-d3f9-97ad-cb5e-06350d23659c",
  "kind": "theorem",
  "lexical_name": "log_model_integrand_eq",
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
  "slug": "log-model-integrand-eq--63ff8de0da8d6e61c9833291",
  "source": {
    "blob": "efb407aa86e4bdb06e92012869c14467f12245af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant931c29ac0e5506509cf5d5babdfc5bf0052478ab5c2adb1cb4d68457b38e13c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ff8de0da8d6e61c983329155fac3ad459d616ebc58a757f8dd3a79a8f4e76b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant931c29ac0e5506509cf5d5babdfc5bf0052478ab5c2adb1cb4d68457b38e13c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e969b482-d3f9-97ad-cb5e-06350d23659c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_model_integrand_eq (A k : ℝ) :
    (fun u : ℝ ↦ Int.fract u * logModelDerivative A k u) =
      fun u ↦ 1 / Real.sqrt k *
        (sourceCorrelation explicitSecondDerivative A (Real.log k) * coefficientWeight 0 u +
          (2 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
              sourceCorrelation explicitSecondDerivative A (Real.log k) / 2) *
            coefficientWeight 1 u +
          (-deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / 2) *
            coefficientWeight 2 u) := by
  funext u
  simp only [logModelDerivative, coefficientWeight, pow_zero, pow_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant931c29ac0e5506509cf5d5babdfc5bf0052478ab5c2adb1cb4d68457b38e13c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant931c29ac0e5506509cf5d5babdfc5bf0052478ab5c2adb1cb4d68457b38e13c6.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb407aa86e4bdb06e92012869c14467f12245af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
