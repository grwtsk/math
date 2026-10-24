# compact_source_amplitude_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cd7cb7d-a809-dd0e-3f19-0bb364c5265b",
  "kind": "theorem",
  "lexical_name": "compact_source_amplitude_rate",
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
  "slug": "compact-source-amplitude-rate--1cb36819dcabf69b85f8695d",
  "source": {
    "blob": "0b9e906742c25d16d64baac6228e51e3f61bc421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 326,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantc19228057dd29f67642b0d5f15d93e963fc2d3c60ad76d0641b7036aa360de7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb36819dcabf69b85f8695daab2ed683752b07d9b7618b386d894063274df59",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantc19228057dd29f67642b0d5f15d93e963fc2d3c60ad76d0641b7036aa360de7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cd7cb7d-a809-dd0e-3f19-0bb364c5265b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_source_amplitude_rate {A delta M : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) (hM : ‖z‖ ≤ M)
    (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      coefficientBound delta M*rateConstant delta/A := by
  have hK := rateConstant_nonneg hdelta
  calc
    _ ≤ ‖leadingCoefficient z‖*rateConstant delta/A :=
      uniform_source_amplitude_rate hA hdelta hz hf
    _ ≤ _ := by
      gcongr
      exact leadingCoefficient_bound hdelta hz hM

/-- Ordinary-square error, before its literal full boundary transform consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantc19228057dd29f67642b0d5f15d93e963fc2d3c60ad76d0641b7036aa360de7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt08/Variantc19228057dd29f67642b0d5f15d93e963fc2d3c60ad76d0641b7036aa360de7f.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e906742c25d16d64baac6228e51e3f61bc421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
