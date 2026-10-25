# precheckIdent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39b45599ad4592929136dc6507650cee9b509feffeb15678a3d39c98e2bab294",
  "kind": "def",
  "lexical_name": "precheckIdent",
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
  "slug": "precheckident--f1dfd1d2c9ac8053da654008",
  "source": {
    "blob": "0ae20abd959efcb78b1449ed643500823dbfdf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1dfd1d2c9ac8053da654008edf2b90f1e1436ef0d02d86f16e58761c4c1762d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39b45599ad4592929136dc6507650cee9b509feffeb15678a3d39c98e2bab294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[builtin_quot_precheck ident] def precheckIdent : Precheck := fun stx =>
  match stx with
  | Syntax.ident _    _      val preresolved => do
    if !preresolved.isEmpty then
      return
    /- The precheck currently ignores field notation.
       For example: the following notation is accepted although `foo` is not a valid field name for a `Nat` value.
       ```
       def x := 0
       notation "x++" => x.foo
       ```
    -/
    if let _::_ ← realizeGlobalNameWithInfos stx val then
      return
    if (← read).quotLCtx.contains val then
      return
    let rs ← try resolveName stx val [] [] catch _ => pure []
    for (e, _, _) in rs do
      match e with
      | Expr.fvar _      .. =>
        if quotPrecheck.allowSectionVars.get (← getOptions) && (← isSectionVariable e) then
          return
      | _ => pure ()
    throwError m!"Unknown identifier `{val}` at quotation precheck"
      ++ .note "You can use `set_option quotPrecheck false` to disable this check."
  | _ => throwUnsupportedSyntax

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Varianta5024af07142420b76475d6336c9ad4804985245ae817c45514d72660e65e2da.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae20abd959efcb78b1449ed643500823dbfdf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
