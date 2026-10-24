# allTargetWrappers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c99803242b194a5484cc8bb3b010947e9be88685fa944e8615823ba6da80b7a",
  "kind": "def",
  "lexical_name": "allTargetWrappers",
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
  "slug": "alltargetwrappers--1c7cdb39449f2df78d647df0",
  "source": {
    "blob": "b7dbbccade15554bcce1a1909cf3f4c1742250de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c7cdb39449f2df78d647df07a828f85e9494664409a880739f60c686946e6a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c99803242b194a5484cc8bb3b010947e9be88685fa944e8615823ba6da80b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allTargetWrappers : List TargetWrapper := [
  rhWrapper,
  modularityWrapper,
  primeGapsWrapper,
  navierStokesWrapper,
  kakeyaWrapper,
  analyticContinuationWrapper,
  sieveTheoryWrapper,
  automorphicFormsWrapper,
  finiteDataAsymptoticsWrapper
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f42617369632e6c65616e/Variantdfb3bb54fe6b3ce578fa7b5476f55c8144f68db497cc8cd2c82de08cbbe8bc40.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7dbbccade15554bcce1a1909cf3f4c1742250de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
