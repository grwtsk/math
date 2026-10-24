# subsingleton_of_isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db3b98ffc7db0e282e1f89bfe8488a64bfc5a1c7b6854412ff3fd79e84b32b39",
  "kind": "instance",
  "lexical_name": "subsingleton_of_isMulCommutative",
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
  "slug": "subsingleton-of-ismulcommutative--34eb5face441ac81e988e776",
  "source": {
    "blob": "fb2adb059bdae6993988aaa55ad26ca32ed6cb8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34eb5face441ac81e988e7767d4f3a9369b37f8cde5be2058c19e093f98366a0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db3b98ffc7db0e282e1f89bfe8488a64bfc5a1c7b6854412ff3fd79e84b32b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_of_isMulCommutative
    [hG : IsPerfect G] [h_comm : IsMulCommutative G] : Subsingleton G := by
  by_contra! h_not_subsingleton
  exact not_isMulCommutative G h_comm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsPerfect/Variant17624769dcd5a1567512f96df18b6618804eb9e1e3583a641864ca64151281ae.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2adb059bdae6993988aaa55ad26ca32ed6cb8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
