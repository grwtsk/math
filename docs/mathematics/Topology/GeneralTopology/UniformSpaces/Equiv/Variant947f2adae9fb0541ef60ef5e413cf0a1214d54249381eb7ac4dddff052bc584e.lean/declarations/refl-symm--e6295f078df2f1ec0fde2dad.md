# refl_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e2c2e6-34d0-7d70-964d-be0a7f4ce8cc",
  "kind": "theorem",
  "lexical_name": "refl_symm",
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
  "slug": "refl-symm--e6295f078df2f1ec0fde2dad",
  "source": {
    "blob": "6105cb6031db6737da70092e5a0e79d5204428a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6295f078df2f1ec0fde2dad3dcf03ce926ad72bd6d04dc845ce3007793441c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e2c2e6-34d0-7d70-964d-be0a7f4ce8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refl_symm : (UniformEquiv.refl α).symm = UniformEquiv.refl α :=
  rfl
#align uniform_equiv.refl_symm UniformEquiv.refl_symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6105cb6031db6737da70092e5a0e79d5204428a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
