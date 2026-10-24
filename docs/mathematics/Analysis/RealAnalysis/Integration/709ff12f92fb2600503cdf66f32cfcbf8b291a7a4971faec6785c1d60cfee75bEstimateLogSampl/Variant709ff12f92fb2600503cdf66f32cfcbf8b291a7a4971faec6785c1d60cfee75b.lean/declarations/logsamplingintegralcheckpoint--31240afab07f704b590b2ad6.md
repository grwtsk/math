# LogSamplingIntegralCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fe656ef238c5e2e8c0f654812783de63cf237b7ca33eef84c2623321e91b34f",
  "kind": "def",
  "lexical_name": "LogSamplingIntegralCheckpoint",
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
  "slug": "logsamplingintegralcheckpoint--31240afab07f704b590b2ad6",
  "source": {
    "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31240afab07f704b590b2ad6873cb2b9bca96999ac7b12e4e39341e12f159d48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fe656ef238c5e2e8c0f654812783de63cf237b7ca33eef84c2623321e91b34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LogSamplingIntegralCheckpoint : Prop :=
  (∫ r in Ioi (0 : ℝ), Real.exp (-r / 2)) = 2 ∧
  (∫ r in Ioi (0 : ℝ),
    r * Real.exp (-r / 2)) = 4 ∧
  (∀ x B0 B1 : ℝ,
    (∫ u in Ioi (1 : ℝ),
      logSamplingDerivativeMajorant x B0 B1 u) =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1)) ∧
  (∀ F : ℝ → ℝ, ContDiff ℝ 1 F →
    ∀ x B0 B1 : ℝ,
      0 < x →
      ProfileSupBounds F B0 B1 →
      (∫ u in Ioi (1 : ℝ),
        |logSamplingDerivative F x u|) ≤
        Real.exp (-Real.log x / 2) *
          (4 * B0 + 4 * B1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7b4cd04c51b8e46062599a379f6c6613880cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
