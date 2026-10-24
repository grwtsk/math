# coe_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91a8959a-47f8-1c4a-95cb-d49f6d6a92dd",
  "kind": "theorem",
  "lexical_name": "coe_center",
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
  "slug": "coe-center--b1279483bbf2f5e0fb13bc8b",
  "source": {
    "blob": "3ab1aae8665eb9138ece4f2abcf2bae8e1079211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1279483bbf2f5e0fb13bc8be24edaa03fff5b0bd96cf6600012205764aaab79",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a8959a-47f8-1c4a-95cb-d49f6d6a92dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_center : ↑(center M) = Set.center M :=
  rfl
#align submonoid.coe_center Submonoid.coe_center
#align add_submonoid.coe_center AddSubmonoid.coe_center

@[to_additive (attr := simp) AddSubmonoid.center_toAddSubsemigroup]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab1aae8665eb9138ece4f2abcf2bae8e1079211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
