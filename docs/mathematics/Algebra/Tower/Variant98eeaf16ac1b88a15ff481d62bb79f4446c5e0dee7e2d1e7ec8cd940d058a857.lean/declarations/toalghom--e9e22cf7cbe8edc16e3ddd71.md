# toAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8d951510c8640705f00bb5880a3dcccf3ae04a6cb23c75a92f347f42007041b",
  "kind": "def",
  "lexical_name": "toAlgHom",
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
  "slug": "toalghom--e9e22cf7cbe8edc16e3ddd71",
  "source": {
    "blob": "ccbbf562619b9f237a0807bf6bfc286ca2c4923c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 148,
    "path": "GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9e22cf7cbe8edc16e3ddd713b7158b4417874302c2c4d76c96495ddc0aa138d",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8d951510c8640705f00bb5880a3dcccf3ae04a6cb23c75a92f347f42007041b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAlgHom : S →ₐ[R] A :=
  { algebraMap S A with commutes' := fun _ => (algebraMap_apply _ _ _ _).symm }
#align is_scalar_tower.to_alg_hom IsScalarTower.toAlgHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variant98eeaf16ac1b88a15ff481d62bb79f4446c5e0dee7e2d1e7ec8cd940d058a857.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbbf562619b9f237a0807bf6bfc286ca2c4923c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
