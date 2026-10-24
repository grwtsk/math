# LevyProkhorov.dist_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd2ca85a-5447-820f-5c4f-5c35cfa5bc45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdbe8c83-2c39-8f90-09f9-23ec8a2924fa",
  "kind": "lemma",
  "lexical_name": "LevyProkhorov.dist_def",
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
  "slug": "levyprokhorov-dist-def--ce36bd21013afe639700107f",
  "source": {
    "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce36bd21013afe639700107f101a4a6009a2a4679bb4519d22652407dee7e266",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdbe8c83-2c39-8f90-09f9-23ec8a2924fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LevyProkhorov.dist_def (μ ν : LevyProkhorov (ProbabilityMeasure Ω)) :
    dist μ ν = levyProkhorovDist μ.toMeasure ν.toMeasure := rfl

/-- If `Ω` is a Borel space, then the Lévy-Prokhorov distance `levyProkhorovDist` makes
`ProbabilityMeasure Ω` a metric space. The instance is recorded on the type synonym
`LevyProkhorov (ProbabilityMeasure Ω) := ProbabilityMeasure Ω`.

Note: For this metric to give the topology of convergence in distribution, one must
furthermore assume that `Ω` is separable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a3cec9b3322e6a6337e53352aee7d75562b9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
