# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8abbdbca5615d34e88695aef820e23b21a2a87f5d83feb2e8ce2d0ce3e4b417",
  "kind": "structure",
  "lexical_name": "State",
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
  "slug": "state--db17f75d8bcaedf9265d4bdc",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db17f75d8bcaedf9265d4bdce06d54678ce363b7914cbf3392290a05b02a71da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8abbdbca5615d34e88695aef820e23b21a2a87f5d83feb2e8ce2d0ce3e4b417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure State where
  /-- The elaborated application so far, with applied arguments. -/
  f                    : Expr
  /-- The type of `f` once loose bvars are instantiated with `fArgs`, reduced to WHNF if it is a forall
  after `fTypeIsForall` is called. -/
  fType                : Expr
  /-- Elaborated arguments. -/
  fArgs                : Array Expr := #[]
  /-- Remaining positional arguments to be elaborated. -/
  args                 : List Arg
  /-- Remaining named arguments to be elaborated. -/
  namedArgs            : List NamedArg
  expectedType?        : Option Expr
  /--
    When named arguments are provided and explicit arguments occurring before them are missing,
    the elaborator eta-expands the declaration. For example,
    ```
    def f (x y : Nat) := x + y
    #check f (y := 5)
    -- fun x => f x 5
    ```
    `etaArgs` stores the fresh free variables for implementing the eta-expansion.
    Each pair records the name to use for the binding and the fvar for the argument.

    When `..` is used, eta-expansion is disabled, and missing arguments are treated as `_`.
    When there are named arguments that depend on a missing argument, the missing arguments
    are treated as `_` as well.
  -/
  etaArgs              : Array (Name × Expr)   := #[]
  /-- Metavariables that we need to set the error context using the application being built. -/
  toSetErrorCtx        : Array MVarId := #[]
  /-- Metavariables for the instance implicit arguments that have already been processed but not yet synthesized.. -/
  instMVars            : Array MVarId := #[]
  /--
    The following field is used to implement the `propagateExpectedType` heuristic.
    It is set to `true` true when `expectedType` still has to be propagated.
  -/
  propagateExpected    : Bool
  /--
    If the result type may be the `outParam` of some local instance.
    See comment at `Context.resultIsOutParamSupport`
   -/
  resultTypeOutParam?  : Option MVarId := none
  /-- Valid named arguments found while traversing the function's type. -/
  foundNamedArgs : Array Name := #[]

/-- The index of the parameter currently being worked on -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
