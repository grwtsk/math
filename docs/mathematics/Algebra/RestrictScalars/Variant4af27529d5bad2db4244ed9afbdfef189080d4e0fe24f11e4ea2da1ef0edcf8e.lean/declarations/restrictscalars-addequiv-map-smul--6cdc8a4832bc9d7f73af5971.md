# RestrictScalars.addEquiv_map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b0b34ef-ea29-3325-9f05-45b82546d092",
  "kind": "theorem",
  "lexical_name": "RestrictScalars.addEquiv_map_smul",
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
  "slug": "restrictscalars-addequiv-map-smul--6cdc8a4832bc9d7f73af5971",
  "source": {
    "blob": "d3e4f65429feedbdd551f5a64eb9be32bbeb0634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 162,
    "path": "GRWTSK/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cdc8a4832bc9d7f73af59716dc9d444d1baafd937d9b4a5b43d4e93e324241f",
  "verification": {
    "reference": "docs/verification/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b0b34ef-ea29-3325-9f05-45b82546d092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RestrictScalars.addEquiv_map_smul (c : R) (x : RestrictScalars R S M) :
    RestrictScalars.addEquiv R S M (c • x) = algebraMap R S c • RestrictScalars.addEquiv R S M x :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RestrictScalars/Variant4af27529d5bad2db4244ed9afbdfef189080d4e0fe24f11e4ea2da1ef0edcf8e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e4f65429feedbdd551f5a64eb9be32bbeb0634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
