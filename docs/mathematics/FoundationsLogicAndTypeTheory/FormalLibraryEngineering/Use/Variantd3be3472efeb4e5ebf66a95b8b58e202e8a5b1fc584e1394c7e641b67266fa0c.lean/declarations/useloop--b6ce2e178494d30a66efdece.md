# useLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cbae7f7bca04efd2f7fe1b841affa2d4f245fb329472bc2a30012b5030b5cfe",
  "kind": "def",
  "lexical_name": "useLoop",
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
  "slug": "useloop--b6ce2e178494d30a66efdece",
  "source": {
    "blob": "8f1ea20e38ddafdcd2c5d7d39191c8211e9d970e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ce2e178494d30a66efdeceba143a71f1864a728aacce47653b9b1875037738",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cbae7f7bca04efd2f7fe1b841affa2d4f245fb329472bc2a30012b5030b5cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def useLoop (eager : Bool) (gs : List MVarId) (args : List Term) (acc insts : List MVarId) :
    TermElabM (List MVarId × List MVarId × List MVarId) := do
  trace[tactic.use] "gs = {gs}\nargs = {args}\nacc = {acc}"
  match gs, args with
  | gs, [] =>
    return (gs, acc, insts)
  | [], arg :: _ =>
    throwErrorAt arg "too many arguments supplied to `use`"
  | g :: gs', arg :: args' => g.withContext do
    if ← g.isAssigned then
      -- Goals might become assigned in inductive types with indices.
      -- Let's check that what's supplied is defeq to what's already there.
      let e ← Term.elabTermEnsuringType arg (← g.getType)
      unless ← isDefEq e (.mvar g) do
        throwErrorAt arg
          "argument is not definitionally equal to inferred value{indentExpr (.mvar g)}"
      return ← useLoop eager gs' args' acc insts
    -- Type ascription is a workaround for `refine` ensuring the type after synthesizing mvars.
    let refineArg ← `(tactic| refine without_cdot($arg : $(← Term.exprToSyntax (← g.getType))))
    if eager then
      -- In eager mode, first try refining with the argument before applying the constructor
      if let some newGoals ← observing? (run g do withoutRecover <| evalTactic refineArg) then
        return ← useLoop eager gs' args' (acc ++ newGoals) insts
    if eager || gs'.isEmpty then
      if let some (expl, impl, insts') ← observing? do
                try applyTheConstructor g
                catch e => trace[tactic.use] "Constructor. {e.toMessageData}"; throw e then
        trace[tactic.use] "expl.length = {expl.length}, impl.length = {impl.length}"
        return ← useLoop eager (expl ++ gs') args (acc ++ impl) (insts ++ insts')
    -- In eager mode, the following will give an error, which hopefully is more informative than
    -- the one provided by `applyTheConstructor`.
    let newGoals ← run g do evalTactic refineArg
    useLoop eager gs' args' (acc ++ newGoals) insts

/-- Run the `useLoop` on the main goal then discharge remaining explicit `Prop` arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1ea20e38ddafdcd2c5d7d39191c8211e9d970e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
