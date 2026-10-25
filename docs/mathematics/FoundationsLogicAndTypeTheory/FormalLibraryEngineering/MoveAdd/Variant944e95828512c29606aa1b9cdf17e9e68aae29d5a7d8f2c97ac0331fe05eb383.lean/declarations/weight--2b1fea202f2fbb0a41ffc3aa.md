# weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5462d47a3cf7e43e1899daf0e5fc84c0a053d7e65fb1a9649b5c5ecbfae64e4",
  "kind": "def",
  "lexical_name": "weight",
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
  "slug": "weight--2b1fea202f2fbb0a41ffc3aa",
  "source": {
    "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b1fea202f2fbb0a41ffc3aa6831edf824feb88ccb243c2a17329e08ab226f45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5462d47a3cf7e43e1899daf0e5fc84c0a053d7e65fb1a9649b5c5ecbfae64e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weight (L : List (α × Bool)) (a : α) : ℤ :=
  let l := L.length
  match L.find? (Prod.fst · == a) with
    | some (_, b) => if b then - l + (L.idxOf (a, b) : ℤ) else (L.idxOf (a, b) + 1 : ℤ)
    | none => 0

/-- `reorderUsing toReorder instructions` produces a reordering of `toReorder : List α`,
following the requirements imposed by `instructions : List (α × Bool)`.

These are the requirements:
* elements of `toReorder` that appear with `true` in `instructions` appear at the
  *beginning* of the reordered list, in the order in which they appear in `instructions`;
* similarly, elements of `toReorder` that appear with `false` in `instructions` appear at the
  *end* of the reordered list, in the order in which they appear in `instructions`;
* finally, elements of `toReorder` that do not appear in `instructions` appear "in the middle"
  with the order that they had in `toReorder`.

For example,
* `reorderUsing [0, 1, 2] [(0, false)] = [1, 2, 0]`,
* `reorderUsing [0, 1, 2] [(1, true)] = [1, 0, 2]`,
* `reorderUsing [0, 1, 2] [(1, true), (0, false)] = [1, 2, 0]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
