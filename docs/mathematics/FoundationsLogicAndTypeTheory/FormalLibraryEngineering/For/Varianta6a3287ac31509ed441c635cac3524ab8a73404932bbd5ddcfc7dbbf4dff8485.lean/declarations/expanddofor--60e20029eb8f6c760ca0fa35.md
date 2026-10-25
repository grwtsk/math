# expandDoFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5df208d7389f20d8f51244e39903a29e40b1e695c76095adb11d179fda8e473b",
  "kind": "def",
  "lexical_name": "expandDoFor",
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
  "slug": "expanddofor--60e20029eb8f6c760ca0fa35",
  "source": {
    "blob": "c4ff1ee25103e63bbd094a481701d00d1e74a4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Varianta6a3287ac31509ed441c635cac3524ab8a73404932bbd5ddcfc7dbbf4dff8485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60e20029eb8f6c760ca0fa35e5033c25a14ec2997bedd3dd99df1ce04ba909ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Varianta6a3287ac31509ed441c635cac3524ab8a73404932bbd5ddcfc7dbbf4dff8485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5df208d7389f20d8f51244e39903a29e40b1e695c76095adb11d179fda8e473b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[builtin_macro Lean.Parser.Term.doFor] def expandDoFor : Macro := fun stx => do
  match stx with
  | `(doFor| for $[$_ : ]? $_:ident in $_ do $_) =>
    -- This is the target form of the expander, handled by `elabDoFor` below.
    Macro.throwUnsupported
  | `(doFor| for%$tk $decls:doForDecl,* do $body) =>
    let decls := decls.getElems
    let `(doForDecl| $[$h? : ]? $pattern in $xs) := decls[0]! | Macro.throwUnsupported
    let mut doElems := #[]
    let mut body := body
    -- Expand `pattern` into an `Ident` `x`:
    let x ←
      if pattern.raw.isIdent then
        pure ⟨pattern⟩
      else if pattern.raw.isOfKind ``Lean.Parser.Term.hole then
        Term.mkFreshIdent pattern
      else
        -- This case is a last resort, because it introduces a `match` and that will cause eager
        -- defaulting. In practice this means that `mut` vars default to `Nat` too often.
        -- Hence we try to only generate a `match` if we absolutely must.
        let x ← Term.mkFreshIdent pattern
        body ← `(doSeq| match $x:term with | $pattern => $body)
        pure x
    -- Expand the remaining `doForDecl`s:
    for doForDecl in decls[1...*] do
      /-
        Expand
        ```
        for x in xs, y in ys do
          body
        ```
        into
        ```
        let mut s := Std.toStream ys
        for x in xs do
          match Std.Stream.next? s with
          | none => break
          | some (y, s') =>
            s := s'
            body
        ```
      -/
      let `(doForDecl| $[$h? : ]? $y in $ys) := doForDecl | Macro.throwUnsupported
      if let some h := h? then
        Macro.throwErrorAt h "The proof annotation here has not been implemented yet."
      /- Recall that `@` (explicit) disables `coeAtOutParam`.
         We used `@` at `Stream` functions to make sure `resultIsOutParamSupport` is not used. -/
      let toStreamApp ← withRef ys `(@Std.toStream _ _ _ $ys)
      let s := mkIdentFrom ys (← withFreshMacroScope <| MonadQuotation.addMacroScope `__s)
      doElems := doElems.push (← `(doSeqItem| let mut $s := $toStreamApp:term))
      body ← `(doSeq|
        match @Std.Stream.next? _ _ _ $s with
          | none => break
          | some ($y, s') =>
            $s:ident := s'
            do $body)
    doElems := doElems.push (← `(doSeqItem| for%$tk $[$h? : ]? $x:ident in $xs do $body))
    `(doElem| do $doElems*)
  | _ => Macro.throwUnsupported

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Varianta6a3287ac31509ed441c635cac3524ab8a73404932bbd5ddcfc7dbbf4dff8485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/For/Varianta6a3287ac31509ed441c635cac3524ab8a73404932bbd5ddcfc7dbbf4dff8485.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4ff1ee25103e63bbd094a481701d00d1e74a4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
