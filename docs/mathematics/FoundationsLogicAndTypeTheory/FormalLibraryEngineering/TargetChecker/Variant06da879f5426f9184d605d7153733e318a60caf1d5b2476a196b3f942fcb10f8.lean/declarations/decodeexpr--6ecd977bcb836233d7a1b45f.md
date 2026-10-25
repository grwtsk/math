# decodeExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff992f93e23775ecb873f9516edec2aa22ab1478e6b11910a6ceb388ba9070a1",
  "kind": "def",
  "lexical_name": "decodeExpr",
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
  "slug": "decodeexpr--6ecd977bcb836233d7a1b45f",
  "source": {
    "blob": "d1f6e78d3f1f2bf574b86e4c7e97db66e40c5faa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variant06da879f5426f9184d605d7153733e318a60caf1d5b2476a196b3f942fcb10f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ecd977bcb836233d7a1b45ff15d823254da69a243fcdde497d0112c818c1910",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variant06da879f5426f9184d605d7153733e318a60caf1d5b2476a196b3f942fcb10f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff992f93e23775ecb873f9516edec2aa22ab1478e6b11910a6ceb388ba9070a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decodeExpr (arity : Nat) (j : Json) : Except String Expr := do
  let nodes ← (← j.getObjVal? "nodes").getArr?
  let root ← (← j.getObjVal? "root").getNat?
  unless nodes.size > 0 && nodes.size ≤ 2000000 && root + 1 == nodes.size do
    throw "invalid finite expression root"
  let mut decoded : Array Expr := #[]
  for node in nodes do
    let xs ← node.getArr?
    let arg :=  item xs
    let expression ← match ← (← arg 0).getStr? with
      | "bvar" => exactLength xs 2; pure <| .bvar (← (← arg 1).getNat?)
      | "sort" => exactLength xs 2; pure <| .sort (← decodeLevel arity (← arg 1))
      | "const" => do
        exactLength xs 3
        let levels ← (← (← arg 2).getArr?).toList.mapM (decodeLevel arity)
        pure <| .const (← decodeName (← arg 1)) levels
      | "app" => do
        exactLength xs 3
        pure <| .app (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
      | "lam" => do
        exactLength xs 4
        pure <| .lam `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← decodeBinder (← arg 3))
      | "forallE" => do
        exactLength xs 4
        pure <| .forallE `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← decodeBinder (← arg 3))
      | "letE" => do
        exactLength xs 5
        pure <| .letE `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← prior decoded (← arg 3)) (← (← arg 4).getBool?)
      | "natVal" => do
        exactLength xs 2
        let some n := (← (← arg 1).getStr?).toNat? | throw "invalid natural literal"
        pure <| .lit (.natVal n)
      | "strVal" => exactLength xs 2; pure <| .lit (.strVal (← (← arg 1).getStr?))
      | "proj" => do
        exactLength xs 4
        pure <| .proj (← decodeName (← arg 1)) (← (← arg 2).getNat?) (← prior decoded (← arg 3))
      | _ => throw "unknown expression constructor"
    decoded := decoded.push expression
  let expression := decoded[root]!
  if expression.hasLooseBVars || expression.hasFVar || expression.hasMVar then
    throw "target is not closed"
  return expression

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variant06da879f5426f9184d605d7153733e318a60caf1d5b2476a196b3f942fcb10f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variant06da879f5426f9184d605d7153733e318a60caf1d5b2476a196b3f942fcb10f8.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f6e78d3f1f2bf574b86e4c7e97db66e40c5faa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
