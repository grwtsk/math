# reduceListChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:830711d07a29897901665c98fab3a0b8044b8825619b5d13e472b7eeb53a082e",
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
  "slug": "reducelistchar--47ea1d2e29d49a2f1f050957",
  "source": {
    "blob": "c0339d2645b95497f0576d044d3c0b8a9c7392d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ea1d2e29d49a2f1f0509570054043b2babec933ae4d67bbeea351b2dadaf4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:830711d07a29897901665c98fab3a0b8044b8825619b5d13e472b7eeb53a082e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–60.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant8400b02b466de5273b651a0f92a912ff67fdcff47e9f98292c0670da529c8d6f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0339d2645b95497f0576d044d3c0b8a9c7392d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
