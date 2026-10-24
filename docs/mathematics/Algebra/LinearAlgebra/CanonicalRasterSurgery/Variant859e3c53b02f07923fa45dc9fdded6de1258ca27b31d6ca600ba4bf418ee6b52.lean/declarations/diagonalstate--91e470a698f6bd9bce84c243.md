# diagonalState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92be107a240775ea49d1c49d529f25ff19846d9e1da34e693442006f4b6d54aa",
  "kind": "def",
  "lexical_name": "diagonalState",
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
  "slug": "diagonalstate--91e470a698f6bd9bce84c243",
  "source": {
    "blob": "f1eb0ee631ef5b626307b6c68fc920d4ffb77710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 20,
    "path": "GRWTSK/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91e470a698f6bd9bce84c2437531421342d8631b310ba7ed54e40f6cc952746c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92be107a240775ea49d1c49d529f25ff19846d9e1da34e693442006f4b6d54aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagonalState : RasterState 2 2 := fun cell =>
  cell.row.val = cell.column.val

/-- A five-pixel cross branches with degree four at its center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant859e3c53b02f07923fa45dc9fdded6de1258ca27b31d6ca600ba4bf418ee6b52.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1eb0ee631ef5b626307b6c68fc920d4ffb77710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
