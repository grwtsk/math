# Dependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba6ce1e961d9eeed9df066068428f5547386f5ca6ed15932c914c82cfdb51ebe",
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
  "slug": "dependency--b30ae12eb7d781fc43dee876",
  "source": {
    "blob": "dd2b4960b3db8919e41c8de9e4561ca77bc3ef1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b30ae12eb7d781fc43dee876a42642b96a46303dbc24c9de6cab53c031946e0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba6ce1e961d9eeed9df066068428f5547386f5ca6ed15932c914c82cfdb51ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–445.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant2b4b6fc2765e2e67127f0cc202d707b76e87c5f7a4534051f597c42b489e2d6f.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2b4960b3db8919e41c8de9e4561ca77bc3ef1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
