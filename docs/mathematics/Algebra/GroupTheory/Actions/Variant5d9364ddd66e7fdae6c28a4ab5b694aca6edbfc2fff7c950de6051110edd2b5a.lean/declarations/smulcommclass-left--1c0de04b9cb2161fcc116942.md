# smulCommClass_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4afa43151b2cee46300de6f0d57e92d59f42f39fab7921a46adf17b2fcebf793",
  "kind": "instance",
  "lexical_name": "smulCommClass_left",
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
  "slug": "smulcommclass-left--1c0de04b9cb2161fcc116942",
  "source": {
    "blob": "5fd42a872ea99238775835d939b4af0eceeef0cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c0de04b9cb2161fcc1169425d3499f9202f2c2b1e4690963ca48a4781a07677",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4afa43151b2cee46300de6f0d57e92d59f42f39fab7921a46adf17b2fcebf793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass_left [MulAction G β] [SMul α β] [SMulCommClass G α β] (S : Subgroup G) :
    SMulCommClass S α β :=
  S.toSubmonoid.smulCommClass_left
#align subgroup.smul_comm_class_left Subgroup.smulCommClass_left
#align add_subgroup.vadd_comm_class_left AddSubgroup.vaddCommClass_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd42a872ea99238775835d939b4af0eceeef0cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
