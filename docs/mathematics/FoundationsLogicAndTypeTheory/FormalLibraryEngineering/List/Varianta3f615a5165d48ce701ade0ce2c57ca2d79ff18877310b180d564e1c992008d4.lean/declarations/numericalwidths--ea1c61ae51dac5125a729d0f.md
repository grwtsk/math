# numericalWidths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d32034f4bb921a48b257a6814192834c15b39e6b46988192032123acfea0b28",
  "kind": "def",
  "lexical_name": "numericalWidths",
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
  "slug": "numericalwidths--ea1c61ae51dac5125a729d0f",
  "source": {
    "blob": "1e99ef66b45469e3140f913649479e2c6c6fe27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea1c61ae51dac5125a729d0f019a832470a08431515ef1b268e16ad7a8478fd4",
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

Occurrence: `declaration:6d32034f4bb921a48b257a6814192834c15b39e6b46988192032123acfea0b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numericalWidths (t : InfoTree) : List (Syntax × Name) :=
  (t.deepestNodes fun _ info _ => do
    let stx := info.stx
    if let .ofTermInfo info := info then
      let idxs := match_expr info.expr with
      | List.replicate _ n _ => [n]
      | Array.replicate _ n _ => [n]
      | Vector.replicate _ n _ => [n]
      | List.range n => [n]
      | List.range' _ n _ => [n]
      | Array.range n => [n]
      | Array.range' _ n _ => [n]
      | Vector.range n => [n]
      | Vector.range' _ n _ => [n]
      | Vector _ n => [n]
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
Return the syntax for all expressions in which an `fvarId` appears as a "BitVec width", along with the user name of that `fvarId`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/List/Varianta3f615a5165d48ce701ade0ce2c57ca2d79ff18877310b180d564e1c992008d4.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e99ef66b45469e3140f913649479e2c6c6fe27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
