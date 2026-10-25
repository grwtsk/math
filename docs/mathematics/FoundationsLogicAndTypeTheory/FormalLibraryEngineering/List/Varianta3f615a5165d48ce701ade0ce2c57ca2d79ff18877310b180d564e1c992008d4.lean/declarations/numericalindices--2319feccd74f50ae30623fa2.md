# numericalIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0dc5e4fb1e67ef5f1756c3d394229e940433e128a8716b14c56dc42bb4260bc",
  "kind": "def",
  "lexical_name": "numericalIndices",
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
  "slug": "numericalindices--2319feccd74f50ae30623fa2",
  "source": {
    "blob": "1e99ef66b45469e3140f913649479e2c6c6fe27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2319feccd74f50ae30623fa24231863f32b45f550e973e8f23f83ba8decdf626",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0dc5e4fb1e67ef5f1756c3d394229e940433e128a8716b14c56dc42bb4260bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numericalIndices (t : InfoTree) : List (Syntax × Name) :=
  (t.deepestNodes fun _ info _ => do
    let stx := info.stx
    if let .ofTermInfo info := info then
      let idxs := match_expr info.expr with
      | GetElem.getElem _ _ _ _ _ _ i _ => [i]
      | GetElem?.getElem? _ _ _ _ _ _ i => [i]
      | List.take _ i _ => [i]
      | List.drop _ i _ => [i]
      | List.set _ _ i _ => [i]
      | List.insertIdx _ _ i _ => [i]
      | List.eraseIdx _ _ i => [i]
      | List.modify _ _ i _ => [i]
      | List.zipIdx _ _ i => [i]
      | Array.extract _ _ i j => [i, j]
      | Array.take _ _ i => [i]
      | Array.drop _ _ i => [i]
      | Array.shrink _ _ i => [i]
      | Array.set _ _ i _ _ => [i]
      | Array.uset _ _ i _ _ => [i]
      | Array.setIfInBounds _ _ i _ => [i]
      | Array.insertIdx _ _ i _ _ => [i]
      | Array.insertIdxIfInBounds _ _ i _ => [i]
      | Array.insertIdx! _ _ i _ => [i]
      | Array.eraseIdx _ _ i _ => [i]
      | Array.eraseIdxIfInBounds _ _ i _ => [i]
      | Array.eraseIdx! _ _ i => [i]
      | Array.modify _ _ i _ => [i]
      | Array.zipIdx _ _ i => [i]
      | Array.swap _ _ i j _ => [i, j]
      | Vector.extract _ _ _ i j => [i, j]
      | Vector.take _ _ _ i => [i]
      | Vector.drop _ _ _ i => [i]
      | Vector.shrink _ _ _ i => [i]
      | Vector.set _ _ _ i _ _ => [i]
      | Vector.setIfInBounds _ _ _ i _ => [i]
      | Vector.insertIdx _ _ _ i _ _ => [i]
      | Vector.eraseIdx _ _ _ i _ => [i]
      | Vector.insertIdx! _ _ _ i _ => [i]
      | Vector.eraseIdx! _ _ _ i => [i]
      | Vector.zipIdx _ _ _ i => [i]
      | Vector.swap _ _ _ i j _ => [i, j]
      | _ => []
      match idxs with
      | [] => none
      | _ => idxs.filterMap fun i =>
        match i with
        | .fvar i =>
          match info.lctx.find? i with
          | some ldecl => some (stx, ldecl.userName)
          | none => none
        | _ => none
    else
      none).flatten

/--
Return the syntax for all expressions in which an `fvarId` appears as a "numerical width", along with the user name of that `fvarId`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e99ef66b45469e3140f913649479e2c6c6fe27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
