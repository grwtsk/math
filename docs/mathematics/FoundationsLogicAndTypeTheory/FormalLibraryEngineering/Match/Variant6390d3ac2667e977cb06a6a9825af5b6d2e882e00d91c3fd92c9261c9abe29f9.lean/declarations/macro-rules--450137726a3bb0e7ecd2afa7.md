# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4343ec6fb66e54cabc8f8d67fa4464a996ddde41e2d794d9e228d08935082a8",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--450137726a3bb0e7ecd2afa7",
  "source": {
    "blob": "5f7bb4818f9a2c77def24c69e69e6872ea14682a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 433,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:450137726a3bb0e7ecd2afa76547a00b23101cab71582de244171eea7aaf5b6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4343ec6fb66e54cabc8f8d67fa4464a996ddde41e2d794d9e228d08935082a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(doElem| let $pat:term := $_) => do
    if !hasQMatch pat then Macro.throwUnsupported
    Macro.throwError "let-bindings with ~q(.) require an explicit alternative"

  | `(doElem| let $pat:term := $rhs:term | $alt $(body?)?) => do
    if !hasQMatch pat then Macro.throwUnsupported
    match pat with
      | `(~q($pat)) =>
        -- Route directly to `_qq_match pat := rhs | alt` so the rest of the enclosing do
        -- is spliced into the match body via the `assert! (_qq_match ..); $rest` rule.
        -- This preserves outer `let mut` access and control-flow continuity for the
        -- common `let ~q(..) := .. | alt` form.
        let (pat, lifts) ← floatExprAntiquot 0 pat #[]
        let t ← `(doSeqItem| assert! (_qq_match $pat := $rhs | $alt))
        let mut items := (← liftsToDoItems lifts).push t
        if let some body := body? then
          items := items.push (← `(doSeqItem| do $body:doSeqIndent))
        `(doElem| do $items:doSeqItem*)

      | _ =>
        let body ← match body? with
          | some body => `(do $body:doSeqIndent)
          | none => `(pure PUnit.unit)
        let body ← buildPatternTerm rhs pat body
        `(doElem| do comefrom __alt do $alt:doSeqIndent
                     ($body))

  | `(match $[$gen:generalizingParam]? $[$discrs:term],* with $[| $[$patss],* => $rhss]*) => do
    if !patss.any (·.any (hasQMatch ·)) then Macro.throwUnsupported
    `(do match $[$gen:generalizingParam]? $[$discrs:term],* with $[| $[$patss:term],* => $rhss:term]*)

  | `(doElem| match $[$gen:generalizingParam]? $[$discrs:term],* with $[| $[$patss],* => $rhss]*) => do
    if !patss.any (·.any (hasQMatch ·)) then Macro.throwUnsupported

    -- only `generalizing := true` (the default) is supported
    if let some stx := gen then
      match stx with
      | `(generalizingParam| (generalizing := true)) => pure ()
      | _ => Macro.throwErrorAt stx "not supported in ~q matching"

    let mut items := #[]
    items := items.push (← `(doSeqItem| comefrom __alt do throwError "nonexhaustive match"))
    for pats in patss.reverse, rhs in rhss.reverse do
      let mut body ← `(do $rhs)
      for discr in discrs.reverse, pat in pats.reverse do
        body ← buildPatternTerm discr pat body
      items := items.push (← `(doSeqItem| comefrom __alt do ($body)))
    items := items.push (← `(doSeqItem| __alt))
    `(doElem| (do $items:doSeqItem*))

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6390d3ac2667e977cb06a6a9825af5b6d2e882e00d91c3fd92c9261c9abe29f9.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7bb4818f9a2c77def24c69e69e6872ea14682a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
