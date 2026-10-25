# updateWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f7d68fb1e8682da6205addc2aa69b44276f3f1aac9f41f683ed2f2ad7738223",
  "kind": "def",
  "lexical_name": "updateWith",
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
  "slug": "updatewith--9f2ce1b9dd2b72c09d830314",
  "source": {
    "blob": "22dd577583faffd5d22288e97e76369f34286493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1024,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f2ce1b9dd2b72c09d830314147071350829cb9cf384d3d51f34360001251c0a",
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

Occurrence: `declaration:5f7d68fb1e8682da6205addc2aa69b44276f3f1aac9f41f683ed2f2ad7738223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1024–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def updateWith (f : α → Option α) (x : α) : Ordnode α → Ordnode α
  | nil => nil
  | _t@(node sz l y r) =>
    match cmpLE x y with
    | Ordering.lt => balanceR (updateWith f x l) y r
    | Ordering.eq =>
      match f y with
      | none => glue l r
      | some a => node sz l a r
    | Ordering.gt => balanceL l y (updateWith f x r)

/-- O(log n). Modify an element in the set with the given function,
doing nothing if the key is not found.
Note that the element returned by `f` must be equivalent to `x`.

```
alter f 0 {1, 2, 3} = {1, 2, 3}     if f none = none
                    = {a, 1, 2, 3}  if f none = some a
alter f 1 {1, 2, 3} = {2, 3}     if f 1 = none
                    = {a, 2, 3}  if f 1 = some a
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantdbc581d9e30d8c99135460f2c4f4dc01abf742a523660905cbdad820a7d87ee5.lean#L1024).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22dd577583faffd5d22288e97e76369f34286493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
