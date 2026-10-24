# ofMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b90bcc4da96be75e88cac3ec0c9f8bd2bf1cd3c637b8beda1eb9c5d369ad8a5",
  "kind": "def",
  "lexical_name": "ofMulHom",
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
  "slug": "ofmulhom--0b0ca2f34a894d00b57c30ed",
  "source": {
    "blob": "b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 498,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0ca2f34a894d00b57c30eda1fda2b05db1b923f0a5333718daa679fe68eeac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b90bcc4da96be75e88cac3ec0c9f8bd2bf1cd3c637b8beda1eb9c5d369ad8a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMulHom : α →* FreeAbelianGroup α where
  toFun := of
  map_one' := rfl
  map_mul' := of_mul
#align free_abelian_group.of_mul_hom FreeAbelianGroup.ofMulHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
