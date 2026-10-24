# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fbdd1bfa8f2cee11438823adc14301d5b21959fe69206f53398c7ea00015266",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d70d4d79fbfb1fdc8a5d0ac0",
  "source": {
    "blob": "ba869f2f7f4d2158af5da2696c0f9d3b8b920b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d70d4d79fbfb1fdc8a5d0ac0cd3d425a873bec085839a354aaa4d751f53ad930",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fbdd1bfa8f2cee11438823adc14301d5b21959fe69206f53398c7ea00015266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance (X : AddGroupCat) : AddZeroClass X.α := X.str.toAddZeroClass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba869f2f7f4d2158af5da2696c0f9d3b8b920b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
