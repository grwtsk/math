# monoidWithZeroHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3d581ae18dece4ac3ec1d105454618f6ada7d7dc6bd98cfd36437f19f595ab9",
  "kind": "instance",
  "lexical_name": "monoidWithZeroHomClass",
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
  "slug": "monoidwithzerohomclass--8cce9e9e2f88b35400bde32d",
  "source": {
    "blob": "2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cce9e9e2f88b35400bde32d5947c2baeaa283586b9ca3afcc1a49d6733b2bc2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3d581ae18dece4ac3ec1d105454618f6ada7d7dc6bd98cfd36437f19f595ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoidWithZeroHomClass : MonoidWithZeroHomClass (AbsoluteValue R S) R S :=
  { AbsoluteValue.mulHomClass with
    map_zero := fun f => f.map_zero
    map_one := fun f => f.map_one }

/-- Absolute values from a nontrivial `R` to a linear ordered ring preserve `*`, `0` and `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variante4ac321f5f52510e74f7a0a543f4731ec064baa3d3d313b18572c9a650d42c2c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba63d4cb4ffec7ad5db3c99e3f56403d1109a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
