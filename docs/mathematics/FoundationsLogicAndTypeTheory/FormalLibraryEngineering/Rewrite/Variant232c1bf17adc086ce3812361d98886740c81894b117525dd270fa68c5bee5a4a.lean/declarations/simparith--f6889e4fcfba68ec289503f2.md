# simpArith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2db56c933ee9ba0fa3754d2e1c79dcf40778be25925c6ca8fd3c82fc78bf4612",
  "kind": "def",
  "lexical_name": "simpArith",
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
  "slug": "simparith--f6889e4fcfba68ec289503f2",
  "source": {
    "blob": "7823621f1509570174669a50ff380557ce014052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6889e4fcfba68ec289503f28650057fd18713858748a2b265269312c5ec8d67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2db56c933ee9ba0fa3754d2e1c79dcf40778be25925c6ca8fd3c82fc78bf4612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpArith (e : Expr) : SimpM Step := do
  unless (← getConfig).arith do
    return .continue
  if Arith.isLinearCnstr e then
    if let some (e', h) ← Arith.Nat.simpCnstr? e then
      return .visit { expr := e', proof? := h }
    if let some (e', h) ← Arith.Int.simpRel? e then
      return .visit { expr := e', proof? := h }
    if let some (e', h) ← Arith.Int.simpEq? e then
      return .visit { expr := e', proof? := h }
    return .continue
  if let some α := Arith.isLinearTerm? e then
    if Arith.parentIsTarget (← getContext).parent? then
      -- We mark `cache := false` to ensure we do not miss simplifications.
      return .continue (some { expr := e, cache := false })
    match_expr α with
    | Nat =>
      let some (e', h) ← Arith.Nat.simpExpr? e | pure ()
      return .visit { expr := e', proof? := h }
    | Int =>
      let some (e', h) ← Arith.Int.simpExpr? e | pure ()
      return .visit { expr := e', proof? := h }
    | _ =>
      return .continue
  if Arith.isDvdCnstr e then
    let some (e', h) ← Arith.Int.simpDvd? e | pure ()
    return .visit { expr := e', proof? := h }
  return .continue

/--
Given a match-application `e` with `MatcherInfo` `info`, return `some result`
if at least of one of the discriminants has been simplified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7823621f1509570174669a50ff380557ce014052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
