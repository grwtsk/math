# explainStuckTypeclassProblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:443fc0eb4426bd9473ba977581124ac5bb4c17d9f00f160371177732c697efa2",
  "kind": "def",
  "lexical_name": "explainStuckTypeclassProblem",
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
  "slug": "explainstucktypeclassproblem--70608cc9bf392bf703d46781",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70608cc9bf392bf703d46781f3510eb5593637cc09c46f940b59afcdef027c53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:443fc0eb4426bd9473ba977581124ac5bb4c17d9f00f160371177732c697efa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def explainStuckTypeclassProblem (typeclassProblem : Expr) : TermElabM (Option MessageData) := do

  -- Gather the type arguments and locate the root of the typeclass
  let mut args := []
  let mut ty := typeclassProblem
  while ty.isApp do
    match ty with
    | .app fn arg =>
      ty := fn
      args := arg :: args
    | _ => return .none -- Precluded by loop guard

  -- Find the typeclass's type constructor (e.g. `HAdd`) and look up its classifying type
  let .const name _ := ty
    | return .none -- Typeclass problem has unexpected structure; fall back to default error
  let .some defn := (← getEnv).findConstVal? name
    | return .none
  let mut kind := defn.type

  /-
  Simultaneously traverse the typeclass arguments (e.g. `#[_?, Nat, _?]` if
  our stuck typeclass problem is `HAdd _?, Nat, _?`) and the classifier (e.g.
  `Type → Type → outParam Type → Type`) and come up with the input positions
  that are stuck (e.g. `[0]` if only the first type argument is stuck).
  -/
  let mut ord := 0
  let mut stuckArguments := #[]
  let mut simpleMVars := true
  for arg in args do
    match kind with
    | .forallE _ argType rest _ =>
      kind := rest
      if !(argType.isOutParam || argType.isSemiOutParam) then
        let arg ← instantiateExprMVars arg
        if let .mvar _ := arg then
          stuckArguments := stuckArguments.push ord
        else if (arg.collectMVars {}).result.size > 0 then
          stuckArguments := stuckArguments.push ord
          simpleMVars := false
    | _ => return .none -- Unexpected type structure; fall back to default error
    ord := ord + 1

  let .sort _ := kind
    | return .none -- Unexpected type structure; fall back to default error
  let nStuck := stuckArguments.size
  if nStuck = 0 then
    return .none -- This is not a simple inputs-have-metavariables issue

  -- Formulate error message
  let containMVars :=
    if simpleMVars then
      nStuck.plural "is a metavariable" "are metavariables"
    else
      nStuck.plural "contains metavariables" "contain metavariables"

  let theTypeArguments :=
    if args.length = 1 then
      "the type argument"
    else
      s!"the {(stuckArguments.toList.map (·.succ.toOrdinal)).toOxford} type {nStuck.plural "argument" "arguments"}"

  return .some (.note m!"Lean will not try to resolve this typeclass instance problem because {theTypeArguments} to `{.ofConstName name}` {containMVars}. {nStuck.plural "This argument" "These arguments"} must be fully determined before Lean will try to resolve the typeclass."
    ++ .hint' m!"Adding type annotations and supplying implicit arguments to functions can give Lean more information for typeclass resolution. For example, if you have a variable `x` that you intend to be a `{MessageData.ofConstName ``Nat}`, but Lean reports it as having an unresolved type like `?m`, replacing `x` with `(x : Nat)` can get typeclass resolution un-stuck.")

/--
We use this method to report typeclass (and coercion) resolution problems that are "stuck".
That is, there is nothing else to do, and we don't have enough information to synthesize them using TC resolution.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
