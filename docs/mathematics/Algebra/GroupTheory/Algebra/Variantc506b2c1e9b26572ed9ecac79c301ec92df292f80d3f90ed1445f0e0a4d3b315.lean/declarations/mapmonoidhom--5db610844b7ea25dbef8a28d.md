# mapMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c8c771d69147ad383390f188b1d8234bedfc6cac7d73af42068dc318357f89",
  "kind": "def",
  "lexical_name": "mapMonoidHom",
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
  "slug": "mapmonoidhom--5db610844b7ea25dbef8a28d",
  "source": {
    "blob": "ac8869b657e57c53cfac3794bfc648c00a7cd3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 389,
    "path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5db610844b7ea25dbef8a28de3b3db0e89d5904d60b10449a0b861564564db0c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c8c771d69147ad383390f188b1d8234bedfc6cac7d73af42068dc318357f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapMonoidHom [MulOneClass Y] [MulOneClass Z] (f : Y →* Z) :
    LocallyConstant X Y →* LocallyConstant X Z where
  toFun := map f
  map_one' := by aesop
  map_mul' := by aesop

/-- `LocallyConstant.map` as a linear map. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Algebra/Variantc506b2c1e9b26572ed9ecac79c301ec92df292f80d3f90ed1445f0e0a4d3b315.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8869b657e57c53cfac3794bfc648c00a7cd3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
