# center.smulCommClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dade07a3f6917dcc7203e5cf1dae43bbdaf1f421cdc734951cfeb1c42faa867",
  "kind": "instance",
  "lexical_name": "center.smulCommClass_right",
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
  "slug": "center-smulcommclass-right--8f0f93e3eab38c1f3e5a60ed",
  "source": {
    "blob": "3ab1aae8665eb9138ece4f2abcf2bae8e1079211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f0f93e3eab38c1f3e5a60ed234f7533b8fd0ea810359f5bb0d39cb70f69dbcc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dade07a3f6917dcc7203e5cf1dae43bbdaf1f421cdc734951cfeb1c42faa867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance center.smulCommClass_right : SMulCommClass M (center M) M :=
  SMulCommClass.symm _ _ _
#align submonoid.center.smul_comm_class_right Submonoid.center.smulCommClass_right

/-! Note that `smulCommClass (center M) (center M) M` is already implied by
`Submonoid.smulCommClass_right` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab1aae8665eb9138ece4f2abcf2bae8e1079211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
