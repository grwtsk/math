# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b0670eeb1c675f250eb58925ee48b4b2cbbe3fc1dd490da26229f8182f9771f",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.change",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--bb2c4b6dccf4696849b9526b",
  "source": {
    "blob": "517be6718779b9d272de21916cdd7048579236fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb2c4b6dccf4696849b9526be06681af4231e72c40dccdca66d68c864163bdcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b0670eeb1c675f250eb58925ee48b4b2cbbe3fc1dd490da26229f8182f9771f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdReplaceTargetEq.Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.Lean.MVarId.change (mvarId : MVarId) (targetNew : Expr) (checkDefEq := true) : MetaM MVarId := mvarId.withContext do
  let target ← mvarId.getType
  if checkDefEq then
    unless (← isDefEq target targetNew) do
      throwTacticEx `change mvarId m!"given type{indentExpr targetNew}\nis not definitionally equal to{indentExpr target}"
  mvarId.replaceTargetDefEq targetNew

/--
Executes the revert/intro pattern, running the continuation `k` after temporarily reverting
the given local variables from the local context of the metavariable `mvarId`,
and then re-introducing the local variables specified by `k`.

- `mvarId` is the goal metavariable to operate on.
- `fvarIds` is an array of `fvarIds` to revert in the order specified.
  An error is thrown if they cannot be reverted in order.
- `clearAuxDeclsInsteadOfRevert` is configuration passed to `Lean.MVarId.revert`.
- `k` is the continuation run once the local variables have been reverted.
  It is provided `mvarId` after the requested variables have been reverted along with the array of reverted variables.
  This array always contains `fvarIds`, but it may contain additional variables that were reverted due to dependencies.
  The continuation returns a value, a new goal, and an _aliasing array_.

Once `k` has completed, one variable is introduced per entry in the aliasing array.
* If the entry is `none`, the variable is just introduced.
* If the entry is `some fv` (where `fv` is a variable from `fvarIds`),
  the variable is introduced and then recorded as an alias of `fv` in the info tree.
  This for example causes the unused variable linter as seeing `fv` and this newly introduced variable as being "the same".

For example, if `k` leaves all the reverted variables in the same order,
having it return `fvars.map .some` as the aliasing array causes those variables to be re-introduced and aliased
to the original local variables.

Returns the value returned by `k` along with the resulting goal after variable introduction.

See `Lean.MVarId.changeLocalDecl` for an example. The motivation is that to work on a local variable,
you need to move it into the goal, alter the goal, and then bring it back into the local context,
all while keeping track of any other local variables that depend on this one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantcec56a990a717f6006d19f404efd9ab4b50bb28666f762b053647d9d2c4e687e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517be6718779b9d272de21916cdd7048579236fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
