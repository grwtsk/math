# StratifiedFrontierIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40aea31c09a401aea423d8b67acbe174a568e68dd5a2dafa60f872f0ce63e7fc",
  "kind": "structure",
  "lexical_name": "StratifiedFrontierIndex",
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
  "slug": "stratifiedfrontierindex--9589ed2edda66de15a90af07",
  "source": {
    "blob": "cf53f0c7b304a1651688b7dfd570636edcb485e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9589ed2edda66de15a90af073c58f3385b50458ca922cedcd73b91ac944741ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40aea31c09a401aea423d8b67acbe174a568e68dd5a2dafa60f872f0ce63e7fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StratifiedFrontierIndex
    (limits : LimitSemantics)
    (Frontier : Type uFrontier) where
  stratum : OrdinalStratum limits
  local : LocalRankCertificate Frontier

namespace StratifiedFrontierIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf53f0c7b304a1651688b7dfd570636edcb485e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
