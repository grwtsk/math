# findTermInfoWithCtx?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:343d506e5fd24ebd88dadd6946ed23e7314c5dd32cd4fdec1ac332b5f667cfe7",
  "kind": "def",
  "lexical_name": "findTermInfoWithCtx?",
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
  "slug": "findterminfowithctx--a71edd4f4685a60572d23c42",
  "source": {
    "blob": "62050408732ce4dbc7901666dd94ccca99bb38cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a71edd4f4685a60572d23c42596d84cb1e2af6d4e5cf0323e18748b90f3e4227",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:343d506e5fd24ebd88dadd6946ed23e7314c5dd32cd4fdec1ac332b5f667cfe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def findTermInfoWithCtx? (t : InfoTree) (stx : Term) (ctx : ContextInfo)
    : Option (TermInfo × ContextInfo) :=
  match t with
  | .context partialCtx t' =>
    -- Merge partial context with outer, fall back to outer if merge fails
    let ctx' := partialCtx.mergeIntoOuter? ctx |>.getD ctx
    findTermInfoWithCtx? t' stx ctx'
  | .node info children =>
    let optResult : Option (TermInfo × ContextInfo) :=
      match info with
      | .ofTermInfo i =>
        if i.stx.getKind == stx.raw.getKind && i.stx.getRange? == stx.raw.getRange? then
          some (i, ctx)
        else none
      | _ => none
    if let some res := optResult then
      return res
    else
      children.findSome? (findTermInfoWithCtx? · stx ctx)
  | .hole _ => none

/--
Invoking tactic code action "Generate an explicit pattern match for 'induction'" in the
following:
```lean
example (x : Nat) : x = x := by
  induction x
```
produces:
```lean
example (x : Nat) : x = x := by
  induction x with
  | zero => sorry
  | succ n ih => sorry
```

It also works for `cases`.
-/
@[tactic_code_action Parser.Tactic.cases Parser.Tactic.induction]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62050408732ce4dbc7901666dd94ccca99bb38cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
