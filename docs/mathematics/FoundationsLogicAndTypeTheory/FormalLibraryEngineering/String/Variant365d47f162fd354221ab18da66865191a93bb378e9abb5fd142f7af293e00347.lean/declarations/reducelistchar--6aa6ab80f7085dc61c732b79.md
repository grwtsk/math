# reduceListChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e24dbd83ea23f0e428f9a180b0b59a4769e97598c45b5f7f274ffde78dd80376",
  "kind": "def",
  "lexical_name": "reduceListChar",
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
  "slug": "reducelistchar--6aa6ab80f7085dc61c732b79",
  "source": {
    "blob": "7c5831f1b077d1f3f20b4d071cdf4fcb204fc237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant365d47f162fd354221ab18da66865191a93bb378e9abb5fd142f7af293e00347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aa6ab80f7085dc61c732b794191600b04b6cad86e8edc5f5e2de6c5fe796f62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant365d47f162fd354221ab18da66865191a93bb378e9abb5fd142f7af293e00347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e24dbd83ea23f0e428f9a180b0b59a4769e97598c45b5f7f274ffde78dd80376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def reduceListChar (e : Expr) (s : String) : SimpM DStep := do
  if e.isAppOfArity ``List.nil 1 then
    return .done <| toExpr s
  else if e.isAppOfArity ``List.cons 3 then
    let some c ← Char.fromExpr? e.appFn!.appArg! | return .continue
    reduceListChar e.appArg! (s.push c)
  else
    return .continue

builtin_dsimproc [simp, seval] reduceOfList (String.ofList _) := fun e => do
  unless e.isAppOfArity ``String.ofList 1 do return .continue
  reduceListChar e.appArg! ""

builtin_dsimproc [simp, seval] reduceToList (String.toList _) := fun e => do
  unless e.isAppOfArity ``String.toList 1 do return .continue
  let some s ← fromExpr? e.appArg! | return .continue
  return .done <| toExpr s.toList

builtin_dsimproc [simp, seval] reducePush (String.push _ _) := fun e => do
  unless e.isAppOfArity ``String.push 2 do return .continue
  let some n ← fromExpr? e.appFn!.appArg! | return .continue
  let some m ← Char.fromExpr? e.appArg! | return .continue
  return .done <| toExpr (n.push m)

builtin_dsimproc [simp, seval] reduceSingleton (String.singleton _) := fun e => do
  unless e.isAppOfArity ``String.singleton 1 do return .continue
  let some c ← Char.fromExpr? e.appArg! | return .continue
  return .done <| toExpr (String.singleton c)

builtin_dsimproc_decl reduceToSingleton ((_ : String)) := fun e => do
  let some s ← fromExpr? e | return .continue
  let l := s.toList
  let [c] := l | return .continue
  return .done <| mkApp (mkConst ``String.singleton) (toExpr c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant365d47f162fd354221ab18da66865191a93bb378e9abb5fd142f7af293e00347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant365d47f162fd354221ab18da66865191a93bb378e9abb5fd142f7af293e00347.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c5831f1b077d1f3f20b4d071cdf4fcb204fc237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
