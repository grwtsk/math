# threshold_is_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39d9e3bcf87be3e456d722f74b1fe28e0c22cf98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e46b2ef0-f156-a607-1130-9d377d415eb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:536c10c5-6e01-2c57-193d-84b4fc6e3bb0",
  "kind": "theorem",
  "lexical_name": "threshold_is_terminal",
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
  "slug": "threshold-is-terminal--e175fc5143cb919aec4427bb",
  "source": {
    "blob": "39d9e3bcf87be3e456d722f74b1fe28e0c22cf98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e175fc5143cb919aec4427bbc7fdfb0d9b1f32216ca73e640c32f5886647d260",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536c10c5-6e01-2c57-193d-84b4fc6e3bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem threshold_is_terminal
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows)
    (reference initialDeviation : V → ℝ) :
    round.diffusion.thresholdResult reference initialDeviation =
      thresholdState
        (reference + round.diffusion.horizonMap initialDeviation) :=
  rfl

end LegalBoundedPrismaticDiffusion

end DAF.Integration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d9e3bcf87be3e456d722f74b1fe28e0c22cf98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
