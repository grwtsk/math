# PluckerCoordinates24

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:370dd601d8487072f5e7ae4b66c21751b8edc1f6d8fc0a3ae54e66aa811231aa",
  "kind": "structure",
  "lexical_name": "PluckerCoordinates24",
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
  "slug": "pluckercoordinates24--f48b0126307ce3f83b8b6114",
  "source": {
    "blob": "766c98afe4b53e01bfd4667193a72620793e6597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f48b0126307ce3f83b8b6114394588c0ce5086e776855f355418c0db680973a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:370dd601d8487072f5e7ae4b66c21751b8edc1f6d8fc0a3ae54e66aa811231aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PluckerCoordinates24 where
  /-- The coordinate labelled (1,2), before imposing compatibility. -/
  p12 : ℝ
  /-- The coordinate labelled (1,3), before imposing compatibility. -/
  p13 : ℝ
  /-- The coordinate labelled (1,4), before imposing compatibility. -/
  p14 : ℝ
  /-- The coordinate labelled (2,3), before imposing compatibility. -/
  p23 : ℝ
  /-- The coordinate labelled (2,4), before imposing compatibility. -/
  p24 : ℝ
  /-- The coordinate labelled (3,4), before imposing compatibility. -/
  p34 : ℝ

namespace PluckerCoordinates24

/-- The independent quadratic compatibility relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant8757e62bc18d08c48e59f1cbda6343f9f78c420da50bcdba4a69b46931a48c11.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766c98afe4b53e01bfd4667193a72620793e6597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
