# mkSimpTheoremKeys

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:002dc510d2966d2c3c00bfdedbf646949fc33cffadb0e57ea1233573d43ac891",
  "kind": "def",
  "lexical_name": "mkSimpTheoremKeys",
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
  "slug": "mksimptheoremkeys--6fa30c757ac00478335a92eb",
  "source": {
    "blob": "6cf6e9e19687239e0524540d7f004f81f941f560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fa30c757ac00478335a92eb4782b5eae4a77332ba642d119de9f377d52841d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:002dc510d2966d2c3c00bfdedbf646949fc33cffadb0e57ea1233573d43ac891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkSimpTheoremKeys (type : Expr) (noIndexAtArgs : Bool) (checkLhs : Bool := false) : MetaM (Array SimpTheoremKey × Bool) := do
  withNewMCtxDepth do
    let (_, _, type) ← forallMetaTelescopeReducing type
    let type ← whnfR type
    match type.eq? with
    | some (_, lhs, rhs) =>
      let keys ← DiscrTree.mkPath lhs noIndexAtArgs
      if checkLhs then
        if warning.simp.varHead.get (← getOptions) && keys[0]? == some .star then
          logWarning m!"Left-hand side of simp theorem has a variable as head symbol. \
            This means the theorem will be tried on every simp step, which can be expensive. \
            This may be acceptable for `local` or `scoped` simp lemmas.\n\
            Use `set_option warning.simp.varHead false` to disable this warning."
        if warning.simp.otherHead.get (← getOptions) && keys[0]? == some .other then
          logWarning m!"Left-hand side of simp theorem is headed by a `.other` key in the \
            discrimination tree (e.g. because it is a lambda expression). \
            This theorem will be tried against all expressions that also have a `.other` key as head, \
            which can cause slowdowns. \
            This may be acceptable for `local` or `scoped` simp lemmas.\n\
            Use `set_option warning.simp.otherHead false` to disable this warning."
      pure (keys, ← isPerm lhs rhs)
    | none => throwError "Unexpected kind of simp theorem{indentExpr type}"

register_builtin_option simp.rfl.checkTransparency: Bool := {
  defValue := false
  descr    := "if true, Lean generates a warning if the left and right-hand sides of the `[simp]` equation are not definitionally equal at the restricted transparency level used by `simp` "
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant96ad6ce6bc8a65c65fa6e0a966490d0f973824441674beb937a664f80d8e8b12.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf6e9e19687239e0524540d7f004f81f941f560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
