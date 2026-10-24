# RootTheoremConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cf4443a6faa88165236fe85248ad37419d2a75d0e998d09377dc969f482d331",
  "kind": "structure",
  "lexical_name": "RootTheoremConfiguration",
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
  "slug": "roottheoremconfiguration--1301c459fe7fabf513993ee2",
  "source": {
    "blob": "b7826cd0fdcceba5f284fbf0d80dd6212bf11227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant26538d59e4959826c4a47b616eb86ed7b5c722f2984fb6c5724731ae4ce2029a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1301c459fe7fabf513993ee2d3afb84ff1aa837d45fe91b301e455cfa0a448c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant26538d59e4959826c4a47b616eb86ed7b5c722f2984fb6c5724731ae4ce2029a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cf4443a6faa88165236fe85248ad37419d2a75d0e998d09377dc969f482d331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RootTheoremConfiguration where
  identity : ArtifactIdentity
  digest : EvidenceDigest
  schemaVersion : Nat
  registry : AnalyticTheoremRegistry
  stages : List ConfiguredAnalyticStagePin
  schemaVersion_supported : schemaVersion = 1
  stageIdentities_nodup : (stages.map ConfiguredAnalyticStagePin.identity).Nodup
  pinsResolve :
    ∀ stage ∈ stages, ∀ pin ∈ stage.allPins,
      registry.Resolves pin

namespace RootTheoremConfiguration

/-- Enabled stages retain their exact YAML list order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant26538d59e4959826c4a47b616eb86ed7b5c722f2984fb6c5724731ae4ce2029a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant26538d59e4959826c4a47b616eb86ed7b5c722f2984fb6c5724731ae4ce2029a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7826cd0fdcceba5f284fbf0d80dd6212bf11227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
