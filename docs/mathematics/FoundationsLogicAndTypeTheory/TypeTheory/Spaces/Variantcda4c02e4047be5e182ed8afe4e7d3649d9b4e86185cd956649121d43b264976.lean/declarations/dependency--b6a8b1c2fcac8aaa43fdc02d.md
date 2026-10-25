# Dependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4c204527d191983570cc62500f643ca7bb3be9032d97d9451b365c5a52e36c7",
  "kind": "inductive",
  "lexical_name": "Dependency",
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
  "slug": "dependency--b6a8b1c2fcac8aaa43fdc02d",
  "source": {
    "blob": "e7cea4a099f7bacda11013abf1af10a9d20575c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6a8b1c2fcac8aaa43fdc02d7556348f4da3f33a95716ce300f5b03f045da1a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4c204527d191983570cc62500f643ca7bb3be9032d97d9451b365c5a52e36c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Dependency : N → N → Prop
  | head {n : N} (a : F.Key n) {d : N} (h : F.domain n a = some d) : Dependency d n
  | tail {n d : N} (a : F.Key n) (h : Dependency d (F.target n a)) : Dependency d n

namespace Slot
variable {F}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cea4a099f7bacda11013abf1af10a9d20575c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
