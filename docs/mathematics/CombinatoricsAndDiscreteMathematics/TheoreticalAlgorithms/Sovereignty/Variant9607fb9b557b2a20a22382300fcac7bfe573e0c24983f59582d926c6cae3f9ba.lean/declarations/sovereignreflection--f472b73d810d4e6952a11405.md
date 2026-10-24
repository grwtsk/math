# SovereignReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10dbc36ad6bbd7ba902cc072e17c39c4382ec6fb0553f876fbfdd070f0d7cab1",
  "kind": "structure",
  "lexical_name": "SovereignReflection",
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
  "slug": "sovereignreflection--f472b73d810d4e6952a11405",
  "source": {
    "blob": "bcb5ea19df1daeface2807238b6bae023fd3d5e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sovereignty/Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f472b73d810d4e6952a11405b6eaf74090033fa472eb00984355838aa85e7307",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sovereignty/Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10dbc36ad6bbd7ba902cc072e17c39c4382ec6fb0553f876fbfdd070f0d7cab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SovereignReflection where
  candidate : Candidate
  realization : TargetNativeRealization
  outcome : Outcome
  generatedAncestry : Ingestion.GeneratedAncestry
  target_project_exact :
    realization.targetProjectId =
      candidate.targetSnapshot.identity.projectId
  outcome_candidate_exact :
    outcome.candidateId = candidate.candidateId
  generated_target_exact :
    generatedAncestry.outputAddress.sourceObject.project =
      realization.targetProjectId
  reflectionDigest : Digest

/-- Every reflected artifact is expressed at the target project. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sovereignty/Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sovereignty/Variant9607fb9b557b2a20a22382300fcac7bfe573e0c24983f59582d926c6cae3f9ba.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb5ea19df1daeface2807238b6bae023fd3d5e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
