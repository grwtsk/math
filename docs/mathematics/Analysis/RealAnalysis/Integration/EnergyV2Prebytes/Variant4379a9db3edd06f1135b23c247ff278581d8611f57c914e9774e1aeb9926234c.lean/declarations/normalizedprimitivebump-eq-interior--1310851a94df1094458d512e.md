# normalizedPrimitiveBump_eq_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb82ea2-1874-b47b-f409-56f78e1986cf",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_eq_interior",
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
  "slug": "normalizedprimitivebump-eq-interior--1310851a94df1094458d512e",
  "source": {
    "blob": "be627993996254edac00b77f434e7f7cd3613607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1310851a94df1094458d512e4dd13ee52a9eea857a998674feb728770f60c893",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb82ea2-1874-b47b-f409-56f78e1986cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_eq_interior {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∈ Icc (-A) A) :
    normalizedPrimitiveBump A x = bumpInterior A x / Real.sqrt (sourceNormalization A) := by
  rw [normalizedPrimitiveBump, scaledBump_eq_indicator A hA, indicator_of_mem hx]

/-- The normalized derivative's interior adapter preserves the same interval guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be627993996254edac00b77f434e7f7cd3613607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
