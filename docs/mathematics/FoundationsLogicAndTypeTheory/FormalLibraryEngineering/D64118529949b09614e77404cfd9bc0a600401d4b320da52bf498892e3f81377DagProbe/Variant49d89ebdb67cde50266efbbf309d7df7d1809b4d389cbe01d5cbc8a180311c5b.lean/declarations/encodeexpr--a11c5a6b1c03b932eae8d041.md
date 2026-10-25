# encodeExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c0b5a760253a2ea389d3696e952857f05f42c9e3c51b099852333ed618ea916",
  "kind": "def",
  "lexical_name": "encodeExpr",
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
  "slug": "encodeexpr--a11c5a6b1c03b932eae8d041",
  "source": {
    "blob": "80198ec7e6f2d077c3398994334e49a5530d30e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variant49d89ebdb67cde50266efbbf309d7df7d1809b4d389cbe01d5cbc8a180311c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a11c5a6b1c03b932eae8d0414d510b8d11914634f0afd370a9f3bab9e8459ecd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variant49d89ebdb67cde50266efbbf309d7df7d1809b4d389cbe01d5cbc8a180311c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c0b5a760253a2ea389d3696e952857f05f42c9e3c51b099852333ed618ea916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def encodeExpr (e : Expr) : StateM ExprDag Nat := do
  if let some n := (← get).seen[e]? then return n
  if let .mdata _ b := e then return ← encodeExpr b
  let data : Json ← match e with
    | .bvar n => pure <| toJson [toJson "bvar", toJson n]
    | .fvar n => pure <| toJson [toJson "fvar", toJson (reprStr n)]
    | .mvar n => pure <| toJson [toJson "mvar", toJson (reprStr n)]
    | .sort l => pure <| toJson [toJson "sort", toJson (reprStr l)]
    | .const n ls => pure <| toJson [toJson "const", toJson (reprStr n), toJson (ls.map reprStr)]
    | .lit v => pure <| toJson [toJson "lit", toJson (reprStr v)]
    | .app f a => do pure <| toJson [toJson "app", toJson (← encodeExpr f), toJson (← encodeExpr a)]
    | .lam _ t b i => do pure <| toJson [toJson "lam", toJson (← encodeExpr t), toJson (← encodeExpr b), toJson (reprStr i)]
    | .forallE _ t b i => do pure <| toJson [toJson "forall", toJson (← encodeExpr t), toJson (← encodeExpr b), toJson (reprStr i)]
    | .letE _ t v b n => do pure <| toJson [toJson "let", toJson (← encodeExpr t), toJson (← encodeExpr v), toJson (← encodeExpr b), toJson n]
    | .proj t i b => do pure <| toJson [toJson "proj", toJson (reprStr t), toJson i, toJson (← encodeExpr b)]
    | .mdata _ b => do pure <| toJson [toJson "unreachable", toJson (← encodeExpr b)]
  let s ← get
  if let some n := s.canonical[data.compress]? then
    modify fun s => {s with seen := s.seen.insert e n}
    return n
  let n := s.nodes.size
  set ({seen := s.seen.insert e n, canonical := s.canonical.insert data.compress n, nodes := s.nodes.push data} : ExprDag)
  return n
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variant49d89ebdb67cde50266efbbf309d7df7d1809b4d389cbe01d5cbc8a180311c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/D64118529949b09614e77404cfd9bc0a600401d4b320da52bf498892e3f81377DagProbe/Variant49d89ebdb67cde50266efbbf309d7df7d1809b4d389cbe01d5cbc8a180311c5b.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80198ec7e6f2d077c3398994334e49a5530d30e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
