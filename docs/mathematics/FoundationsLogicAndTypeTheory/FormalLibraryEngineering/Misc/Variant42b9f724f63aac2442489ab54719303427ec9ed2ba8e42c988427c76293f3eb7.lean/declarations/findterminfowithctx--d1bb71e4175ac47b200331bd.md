# findTermInfoWithCtx?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7ef23bfb1b08fc0282d409bca0bdfb48887cd7cc09fdffd6a0af2c3b868c9b1",
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
  "slug": "findterminfowithctx--d1bb71e4175ac47b200331bd",
  "source": {
    "blob": "8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1bb71e4175ac47b200331bd5706fd625af0deaa017c1860997e4d47b143e72a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7ef23bfb1b08fc0282d409bca0bdfb48887cd7cc09fdffd6a0af2c3b868c9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–331.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
