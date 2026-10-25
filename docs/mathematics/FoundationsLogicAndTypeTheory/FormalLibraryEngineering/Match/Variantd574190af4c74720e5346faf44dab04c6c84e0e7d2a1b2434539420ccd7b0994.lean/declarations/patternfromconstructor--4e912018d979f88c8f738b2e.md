# patternFromConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e3aa7978361265047573a8247d3b1e3e60984eff9d5d8a61a2d656243f6430",
  "kind": "def",
  "lexical_name": "patternFromConstructor",
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
  "slug": "patternfromconstructor--4e912018d979f88c8f738b2e",
  "source": {
    "blob": "b770f13b7f60384df0a47bde130a20e41980cce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e912018d979f88c8f738b2e9b20b454016578321db76ca4c2bb62ff98a7e4d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e3aa7978361265047573a8247d3b1e3e60984eff9d5d8a61a2d656243f6430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def patternFromConstructor (ctor : Name) (env : Environment) (suffix : String)
    (explicitArgsOnly : Bool) (ctor_hasImplicitNonparArg : Bool): Option String := do
  let some (.ctorInfo ctorInfo) := env.find? ctor | panic! "bad inductive"
  let some (.inductInfo indInfo) := env.find? ctorInfo.induct | panic! "not an inductive"
  let numParams := indInfo.numParams
  let ctor_short := toString (ctor.updatePrefix .anonymous)
  let explicitCtorArgs := getExplicitArgs ctorInfo.type #[]
  let allCtorArgs := getAllArgs ctorInfo.type #[]

  /- Special cases with nicer Notation. None of these constructors has any implicit arguments
     that aren't parameters, i.e. that aren't already determined by the match discriminant.
     So it doesn't make sense to use them with `@`. That's why we *always* nicely print them
     regardless of the setting `explicitArgsOnly`. -/
  match ctor with
  | (.str (.str .anonymous "Nat") "zero") => "0"
  /- At the moment this evaluates to "n + 1": -/
  | (.str (.str .anonymous "Nat") "succ") => s!"{explicitCtorArgs[0]!}{suffix} + 1" --
  | (.str (.str .anonymous "List") "nil") => "[]"
  /- At the moment this evaluates to "head :: tail": -/
  | (.str (.str .anonymous "List") "cons") =>
    s!"{explicitCtorArgs[0]!}{suffix} :: {explicitCtorArgs[1]!}{suffix}"
  | (.str (.str .anonymous "Option") "some") => s!"some {explicitCtorArgs[0]!}{suffix}"
  | (.str (.str .anonymous "Option") "none") => "none"
  | (.str (.str .anonymous "Bool") "true") => "true"
  | (.str (.str .anonymous "Bool") "false") => "false"
  | _ =>
    /- This is the Default case. It fills the constructor arguments with the variable names `arg`
       which were used in the inductive type specification. When using this action with multiple
       (same-type) arguments these might clash, so we fix it by appending a suffix like `_2` -
       you will probably want to rename these suffixed names yourself.
       If the the user wants the match to contain the implicit arguments as well, we
       additionally put `_` for every `parameter` (a parameter is an argument to the inductive
       type that is fixed over constructors), since these should already be determined by the
       match discriminant. One could elaborate the type of this discriminant and fill the parameters
       from there, but we don't see any value in this. -/
    if explicitArgsOnly || Bool.not ctor_hasImplicitNonparArg then
      let mut str := s!".{ctor_short}"
      for arg in explicitCtorArgs do
        str := str ++ if arg.hasNum || arg.isInternal then " _" else s!" {arg}{suffix}"
      return str
    else
      let mut str := s!".{ctor_short}"
      /- This loop skips the first `numParams` many arguments, since these are the parameters
         and are already determined by the match discriminant and thus unlikely to be
         useful for the match. -/
      for i in [numParams:allCtorArgs.size] do
        let arg := allCtorArgs[i]!
        str := str ++
          if arg.hasNum || arg.isInternal then
            " _"
          else
            if arg ∈ explicitCtorArgs then
              s!" {arg}{suffix}"
            else
              s!" ({arg} := {arg}{suffix})"
      return str


/--
Invoking tactic code action `Generate a list of alternatives for this match.` in the
following:
```lean
def myfun2 (n : Nat) : Nat :=
  match n
```
produces:
```lean
def myfun2 (n : Nat) : Nat :=
  match n with
  | 0 => _
  | n + 1 => _
```
Also has support for multiple discriminants, e.g.
```
def myfun3 (o : Option Bool) (m : Nat) : Nat :=
  match o, m with
```
can be expanded into
```
def myfun3 (o : Option Bool) (m : Nat) : Nat :=
  match o, m with
  | none, 0 => _
  | none, n_2 + 1 => _
  | some val_1, 0 => _
  | some val_1, n_2 + 1 => _
```
If it makes sense to use at least one of the constructors with `@` (i.e. iff it has an
implicit non-parameter argument) then we also show a codeaction that expands every such constructor
with implicit arguments filled in with the syntax `implicitArg := implicitArg`.
E.g. invoking `Generate a list of equations with implicit arguments for this match.` in
the following
```lean
inductive TermWithImplicit (F : Nat → Type u) (α : Type w)
  | var (x : α) : TermWithImplicit F α
  | func {l : Nat} (f : F l) (ts : Fin l → TermWithImplicit F α) : TermWithImplicit F α

def myfun4 (t : TermWithImplicit F α) : Nat := by
  match t with
```
produces
```lean
def myfun4 (t : TermWithImplicit F α) : Nat := by
  match t with
  | .var x => _
  | .func (l := l) f ts => _
```
where the implicit argument `{l : Nat}` is now usable.
Note that the arguments `F` and `α` are not filled since they are `parameters`
(a parameter is an argument to an inductive type that is fixed over constructors), i.e.
they are already determined by the match discriminant `t`. This means they don't provide any
new information for you.
-/
@[command_code_action]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b770f13b7f60384df0a47bde130a20e41980cce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
