# getElabElimInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb30068c0474fbb2f159ca45c2fcee93da9d1e3790cae38afec5288e2bf463b3",
  "kind": "def",
  "lexical_name": "getElabElimInfo",
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
  "slug": "getelabeliminfo--3c8916f4577a001e1fc0236e",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1130,
    "line": 1060,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c8916f4577a001e1fc0236e0a0a56e0f15952988f336fd8c29962e7ac454e17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb30068c0474fbb2f159ca45c2fcee93da9d1e3790cae38afec5288e2bf463b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getElabElimInfo (elimName : Name) : MetaM ElabElimInfo := do
  getElabElimExprInfo (← mkConstWithFreshMVarLevels elimName)


/--
Instructs the elaborator that applications of this function should be elaborated like an eliminator.

An eliminator is a function that returns an application of a "motive." A motive is a parameter `p`
whose type is of the form `(x₁ : _) → … → (xₙ : _) → Sort _`, i.e., a function that takes in some
number of arguments (referred to as "major premises") and returns a type. The arguments `x₁`
through `xₙ` of the motive can be arbitrary expressions. When elaborating an eliminator application,
Lean first solves for `p` by matching `p x₁ … xₙ` against the expected type, then replacing `xₙ`
through `x₁` (in that order) with variables to obtain the body of `p`. The elaborator will throw an
error if this process fails (i.e., the resulting motive is not type-correct) or if the expected type
cannot be determined.

Eliminator elaboration can be compared to the `induction` tactic: The expected type is used as the
return value of the motive, with occurrences of the major premises replaced with the arguments.
When more arguments are specified than necessary, the remaining arguments are reverted into the
expected type.

The automatically-generated `rec` and `casesOn` functions of inductive types are always elaborated
as eliminators. Any other functions must be tagged with this attribute in order to be elaborated in
this fashion.

Examples:
```lean example
@[elab_as_elim]
def evenOddRec {motive : Nat → Sort u}
    (even : ∀ n, motive (n * 2)) (odd : ∀ n, motive (n * 2 + 1))
    (n : Nat) : motive n := sorry

-- simple usage
example (a : Nat) : (a * a) % 2 = a % 2 :=
  evenOddRec _ _ a
  /-
  1. basic motive is `fun n => (a + 2) % 2 = a % 2`
  2. major premise `a` substituted: `fun n => (n + 2) % 2 = n % 2`
  3. now elaborate the other parameters as usual:
    "even" (first hole): expected type `∀ n, ((n * 2) * (n * 2)) % 2 = (n * 2) % 2`,
    "odd" (second hole): expected type `∀ n, ((n * 2 + 1) * (n * 2 + 1)) % 2 = (n * 2 + 1) % 2`
  -/

-- complex substitution
example (a : Nat) (f : Nat → Nat) : (f a + 1) % 2 ≠ f a :=
  evenOddRec _ _ (f a)
  /-
  Similar to before, except `f a` is substituted: `motive := fun n => (n + 1) % 2 ≠ n`.
  Now the first hole has expected type `∀ n, (n * 2 + 1) % 2 ≠ n * 2`.
  Now the second hole has expected type `∀ n, (n * 2 + 1 + 1) % 2 ≠ n * 2 + 1`.

  Note that while this might appear to work even if the `elab_as_elim` attribute is omitted from
  `evenOddRec`, the inferred motive if one does so (`fun n => (f a + 1) % 2 ≠ n`) is, in fact,
  insufficiently general: the first hole, for example, ends up with expected type
  `∀ (n : Nat), (f a + 1) % 2 ≠ n * 2`, leaving the first `f a` unsubstituted.
  -/

-- more parameters
example (a : Nat) (h : a % 2 = 1) : (a + 1) % 2 = 0 :=
  evenOddRec _ _ a h
  /-
  Before substitution, `a % 2 = 1` is reverted: `motive := fun n => a % 2 = 0 → (a + 1) % 2 = 0`.
  Substitution: `motive := fun n => n % 2 = 1 → (n + 1) % 2 = 0`
  Now the first hole has expected type `∀ n, n * 2 % 2 = 1 → (n * 2) % 2 = 0`.
  Now the second hole has expected type `∀ n, (n * 2 + 1) % 2 = 1 → (n * 2 + 1) % 2 = 0`.
  -/
```

See also `@[induction_eliminator]` and `@[cases_eliminator]` for registering default eliminators.
-/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
