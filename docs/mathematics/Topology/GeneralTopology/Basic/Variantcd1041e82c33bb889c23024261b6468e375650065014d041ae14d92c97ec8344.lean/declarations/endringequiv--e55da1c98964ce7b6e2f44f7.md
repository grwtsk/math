# endRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5abf1a5d009b82a796dcd2592477fc437ea8909efe01d3e0baac9edbcbd95f28",
  "kind": "def",
  "lexical_name": "endRingEquiv",
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
  "slug": "endringequiv--e55da1c98964ce7b6e2f44f7",
  "source": {
    "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 485,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e55da1c98964ce7b6e2f44f7a44d2efdb7cdc666db46218c68014c33a38cbcba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5abf1a5d009b82a796dcd2592477fc437ea8909efe01d3e0baac9edbcbd95f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endRingEquiv (M : TopModuleCat R) :
    End M ≃+* (M →L[R] M) where
  toFun := TopModuleCat.Hom.hom
  invFun := TopModuleCat.ofHom
  map_mul' _ _ := rfl
  map_add' _ _ := rfl

end TopModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32a9367052e84ebe59e0ed1f2da77ed36d16d05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
