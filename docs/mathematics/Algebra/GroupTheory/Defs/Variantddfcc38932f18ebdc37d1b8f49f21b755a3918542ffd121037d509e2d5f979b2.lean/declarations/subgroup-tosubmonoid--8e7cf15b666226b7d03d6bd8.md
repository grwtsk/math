# subgroup_toSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:047d91cb-13ad-4c4c-fde6-610094b55c6f",
  "kind": "lemma",
  "lexical_name": "subgroup_toSubmonoid",
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
  "slug": "subgroup-tosubmonoid--8e7cf15b666226b7d03d6bd8",
  "source": {
    "blob": "22689db2dd8a493a144fc0f062e1a095ab9fe0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7cf15b666226b7d03d6bd86a65b5b3195da899c3f7f5bdb8697c1276f62d87",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:047d91cb-13ad-4c4c-fde6-610094b55c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subgroup_toSubmonoid : (α^*M).toSubmonoid = submonoid M α :=
  rfl

end FixedPoints
end Group
end FixedPoints

namespace MulAction
variable {G α β : Type*} [Group G] [MulAction G α] [MulAction G β]

section Orbit

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22689db2dd8a493a144fc0f062e1a095ab9fe0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
