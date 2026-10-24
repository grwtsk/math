# complete_density_square_completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aa6fef5-7b4a-5a38-e751-7589ba6f9eec",
  "kind": "theorem",
  "lexical_name": "complete_density_square_completion",
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
  "slug": "complete-density-square-completion--d0d1482e5c62042f59395d69",
  "source": {
    "blob": "f87bba98a2517aabccc8292010f04163816c45ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d1482e5c62042f59395d692d9b09b535176cc67d02a1fae34f120304e9a8b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa6fef5-7b4a-5a38-e751-7589ba6f9eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_density_square_completion (x1 y1 x0 y0 : ℝ) :
    -(x1 * y1 + (1 / 4 : ℝ) * (x0 * y0)) =
      (1 / 4 : ℝ) * (x1 - y1) ^ 2 + (1 / 16 : ℝ) * (x0 - y0) ^ 2 -
      ((1 / 4 : ℝ) * (x1 + y1) ^ 2 + (1 / 16 : ℝ) * (x0 + y0) ^ 2) := by
  ring

end
end FormalResearch.RiemannHypothesis.SourceCompleteFiniteSignedEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteFiniteSignedEnergy/Variant62bcff3033e3d6a38393b88c1ab51d5e33099cc96fdacdb467d3c9b9b6d06356.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87bba98a2517aabccc8292010f04163816c45ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
