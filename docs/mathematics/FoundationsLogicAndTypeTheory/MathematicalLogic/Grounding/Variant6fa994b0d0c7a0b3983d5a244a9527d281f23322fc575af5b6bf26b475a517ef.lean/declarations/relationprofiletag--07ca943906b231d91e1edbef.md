# relationProfileTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39d5505a73e9d750a35ce0d2308e545aeb1695ec7c722866b30a86b4d724e1dd",
  "kind": "def",
  "lexical_name": "relationProfileTag",
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
  "slug": "relationprofiletag--07ca943906b231d91e1edbef",
  "source": {
    "blob": "c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ca943906b231d91e1edbeff19d1abdfcc09568e59470828e12c874cfccb3cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39d5505a73e9d750a35ce0d2308e545aeb1695ec7c722866b30a86b4d724e1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def relationProfileTag : RhetoricalRelationProfile → Nat
  | .similarity => 0
  | .implicationAffinity => 1
  | .oppositionAffinity => 2
  | .oppositionResidual => 3
  | .coordinateAntipodesExact => 4
  | .analogyTranslationAffinity => 5
  | .analogyTranslationResidual => 6
  | .analogyTranslationExact => 7
  | .analogyTensorAffinity => 8

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grounding/Variant6fa994b0d0c7a0b3983d5a244a9527d281f23322fc575af5b6bf26b475a517ef.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e36f3f6dc6a0bdcd93c776b265705d93aa4e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
