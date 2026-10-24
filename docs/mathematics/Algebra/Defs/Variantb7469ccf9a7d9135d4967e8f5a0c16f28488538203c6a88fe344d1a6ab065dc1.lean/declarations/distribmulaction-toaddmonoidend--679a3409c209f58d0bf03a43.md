# DistribMulAction.toAddMonoidEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01d468cdd5dd78a969cb8e3874ffc65cff76e25ef210ffd3fbce83293b50c1ed",
  "kind": "def",
  "lexical_name": "DistribMulAction.toAddMonoidEnd",
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
  "slug": "distribmulaction-toaddmonoidend--679a3409c209f58d0bf03a43",
  "source": {
    "blob": "f0574464fd9edf6965ebf6887ae3c3c9ac02b238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 397,
    "path": "GRWTSK/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:679a3409c209f58d0bf03a432a823bf30d3bd4ec8679b087d279e04479b1f2a4",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01d468cdd5dd78a969cb8e3874ffc65cff76e25ef210ffd3fbce83293b50c1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DistribMulAction.toAddMonoidEnd :
    M →* AddMonoid.End A where
  toFun := DistribMulAction.toAddMonoidHom A
  map_one' := AddMonoidHom.ext <| one_smul M
  map_mul' x y := AddMonoidHom.ext <| mul_smul x y

end

section

variable [AddGroup A] [DistribSMul M A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb7469ccf9a7d9135d4967e8f5a0c16f28488538203c6a88fe344d1a6ab065dc1.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0574464fd9edf6965ebf6887ae3c3c9ac02b238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
