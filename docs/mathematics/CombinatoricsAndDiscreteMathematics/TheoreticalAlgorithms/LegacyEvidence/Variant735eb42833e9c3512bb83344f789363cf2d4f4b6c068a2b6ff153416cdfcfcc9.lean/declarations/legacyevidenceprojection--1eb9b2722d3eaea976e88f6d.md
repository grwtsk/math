# LegacyEvidenceProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d86a7b7719fc1646f76803ff19468fd1d5c6981f89772f3196fcd8057bfa7204",
  "kind": "structure",
  "lexical_name": "LegacyEvidenceProjection",
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
  "slug": "legacyevidenceprojection--1eb9b2722d3eaea976e88f6d",
  "source": {
    "blob": "9bca9ca6cf9bf9bf5336675bbb36f650d8c8c1d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LegacyEvidence/Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eb9b2722d3eaea976e88f6dd347fef5601f997bebd331fca235e0c9e95063fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LegacyEvidence/Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d86a7b7719fc1646f76803ff19468fd1d5c6981f89772f3196fcd8057bfa7204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LegacyEvidenceProjection where
  projectionId : StableId
  pointUniverse : Concept.PointUniverse
  classifications : List LegacyClassification
  pointReferencesResolve :
    ∀ classification ∈ classifications,
      ∀ pointId ∈ classification.pointIds,
        pointId ∈
          pointUniverse.points.map Concept.MathematicalPoint.pointId
  projectionDigest : Digest

/-- Equal inherited labels provide no point-identity theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LegacyEvidence/Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LegacyEvidence/Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bca9ca6cf9bf9bf5336675bbb36f650d8c8c1d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
