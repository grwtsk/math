# split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6adc5d355c33c408c463c666b6a9443c10f7240c88a27e1a294645460ec566e7",
  "kind": "def",
  "lexical_name": "split",
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
  "slug": "split--fabeed7cdac2bfae67d5807e",
  "source": {
    "blob": "22dd577583faffd5d22288e97e76369f34286493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1144,
    "line": 1118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fabeed7cdac2bfae67d5807e8c395f278e27df1053a86c9c1188c4fc9dcfbe7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6adc5d355c33c408c463c666b6a9443c10f7240c88a27e1a294645460ec566e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def split (x : α) : Ordnode α → Ordnode α × Ordnode α
  | nil => (nil, nil)
  | node _ l y r =>
    match cmpLE x y with
    | Ordering.lt =>
      let (lt, gt) := split x l
      (lt, link gt y r)
    | Ordering.eq => (l, r)
    | Ordering.gt =>
      let (lt, gt) := split x r
      (link l y lt, gt)

/-- O(log n). Split the tree into those smaller than `x` and those greater than it,
plus an element equivalent to `x`, if it exists.

```
split3 2 {1, 2, 4} = ({1}, some 2, {4})
split3 3 {1, 2, 4} = ({1, 2}, none, {4})
split3 4 {1, 2, 4} = ({1, 2}, some 4, ∅)
```

Using a preorder on `ℕ × ℕ` that only compares the first coordinate:

```
split3 (1, 1) {(0, 1), (1, 2)} = ({(0, 1)}, some (1, 2), ∅)
split3 (3, 1) {(0, 1), (1, 2)} = ({(0, 1), (1, 2)}, none, ∅)
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22dd577583faffd5d22288e97e76369f34286493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
