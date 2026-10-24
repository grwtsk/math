# smulCommClass'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d8e2bd0b8703ec0beb18df3796e26c9283e7c75c023f0b4852a1bf84dfbe165",
  "kind": "instance",
  "lexical_name": "smulCommClass'",
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
  "slug": "smulcommclass--62c021616cc554925f0586ec",
  "source": {
    "blob": "26a391aec4ac576e74fdad8818bc457279ab007a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 121,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62c021616cc554925f0586ec796001bd70783c87816c622815fb848902261d91",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d8e2bd0b8703ec0beb18df3796e26c9283e7c75c023f0b4852a1bf84dfbe165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass' [Group G] [Group H] [Monoid M] [MulAction G M] [SMulCommClass G M M]
    [MulAction H M] [SMulCommClass H M M] [IsScalarTower G M M] [IsScalarTower H M M]
    [SMulCommClass G H M] :
    SMulCommClass G H Mˣ where smul_comm g h m := Units.ext <| smul_comm g h (m : M)
#align units.smul_comm_class' Units.smulCommClass'

/-- Transfer `IsScalarTower G H M` to `IsScalarTower G H Mˣ` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantebfdae464b56964c7ca4a1ae70ee81ad4bd4f9d5dc403abefddac67b8413bad3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26a391aec4ac576e74fdad8818bc457279ab007a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
