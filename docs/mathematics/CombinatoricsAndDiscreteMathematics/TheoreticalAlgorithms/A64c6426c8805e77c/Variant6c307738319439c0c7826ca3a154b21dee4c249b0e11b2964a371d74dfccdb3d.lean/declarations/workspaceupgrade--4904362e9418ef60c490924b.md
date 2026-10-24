# WorkspaceUpgrade

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae04e3827f1bcc97a9fc8501d9ef4dc536ec8ec87c4ffc0f92fc64adada750a5",
  "kind": "structure",
  "lexical_name": "WorkspaceUpgrade",
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
  "slug": "workspaceupgrade--4904362e9418ef60c490924b",
  "source": {
    "blob": "1c8c476e0800124b11d8510eabb45afef807c83e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A64c6426c8805e77c/Variant6c307738319439c0c7826ca3a154b21dee4c249b0e11b2964a371d74dfccdb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4904362e9418ef60c490924bc371dbca59c6cb750b29e0752b44a1946856a9cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A64c6426c8805e77c/Variant6c307738319439c0c7826ca3a154b21dee4c249b0e11b2964a371d74dfccdb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae04e3827f1bcc97a9fc8501d9ef4dc536ec8ec87c4ffc0f92fc64adada750a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WorkspaceUpgrade where
  id : StableId
  workspaceId : WorkspaceId
  fromRevision : Nat
  toRevision : Nat
  kind : UpgradeClass
  changedProjects : Set ProjectId

namespace IncrementalBuild

variable {Project : Type*}

end IncrementalBuild

namespace WorkspaceUpgrade

end WorkspaceUpgrade

end Mathematics.System
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A64c6426c8805e77c/Variant6c307738319439c0c7826ca3a154b21dee4c249b0e11b2964a371d74dfccdb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A64c6426c8805e77c/Variant6c307738319439c0c7826ca3a154b21dee4c249b0e11b2964a371d74dfccdb3d.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c8c476e0800124b11d8510eabb45afef807c83e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
