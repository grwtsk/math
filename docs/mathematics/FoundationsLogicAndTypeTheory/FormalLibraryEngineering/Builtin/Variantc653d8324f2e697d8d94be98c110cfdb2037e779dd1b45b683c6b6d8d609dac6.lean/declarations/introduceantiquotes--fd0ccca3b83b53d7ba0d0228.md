# introduceAntiquotes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321ef6860a0aa329c0dc0e55d6243a877ffe2867e4dc25fcf9c12c28dcd224c5",
  "kind": "def",
  "lexical_name": "introduceAntiquotes",
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
  "slug": "introduceantiquotes--fd0ccca3b83b53d7ba0d0228",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd0ccca3b83b53d7ba0d02282fc5789290428c016ff5aee70235650ee7d1a131",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321ef6860a0aa329c0dc0e55d6243a877ffe2867e4dc25fcf9c12c28dcd224c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def introduceAntiquotes (stx : Syntax) : DocM Unit :=
  discard <| stx.rewriteBottomUpM fun stx' =>
    match stx' with
    | .node _ (.str k "antiquot") #[_dollar, _, name, _] => do
      let k := if let .str k' "pseudo" := k then k' else k
      let ty ← Meta.mkAppM ``TSyntax #[← Meta.mkListLit (.const ``SyntaxNodeKind []) [toExpr k]]
      let lctx ← do
        let lctx ← getLCtx
        let fv ← mkFreshFVarId
        let lctx := lctx.mkLocalDecl fv name.getId ty
        addTermInfo' name (.fvar fv) (lctx? := some lctx) (isBinder := true) (expectedType? := some ty)
        pure lctx
      modify (fun st => { st with lctx })
      pure stx'
    | _ => pure stx'

/--
A reference to a tactic.

In `` {tactic}`T` ``, `T` can be any of the following:
 * The name of a tactic syntax kind (e.g. `Lean.Parser.Tactic.induction`)
 * The first token of a tactic (e.g. `induction`)
 * Valid tactic syntax, potentially including antiquotations (e.g. `intro $x*`)
-/
@[builtin_doc_role]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
