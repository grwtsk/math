# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8de01ec06255aa39f607be0ed8fe3f67979e3e2c347e20ce9815baa967203525",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--76ef143cdf2de34b353964ca",
  "source": {
    "blob": "1bafb4df56922fab687e1bea8e5a6c4d8fc5083d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2361,
    "line": 2273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76ef143cdf2de34b353964cae9c69d904c5f3657aac502608d79b8d86153efa6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8de01ec06255aa39f607be0ed8fe3f67979e3e2c347e20ce9815baa967203525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2273–2361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
macro (name := mspecMacro) (priority:=low) "mspec" : tactic =>
  Macro.throwError "to use `mspec`, please include `import Std.Tactic.Do`"

/--
`mvcgen` will break down a Hoare triple proof goal like `⦃P⦄ prog ⦃Q⦄` into verification conditions,
provided that all functions used in `prog` have specifications registered with `@[spec]`.

### Verification Conditions and specifications

A verification condition is an entailment in the stateful logic of `Std.Do.SPred`
in which the original program `prog` no longer occurs.
Verification conditions are introduced by the `mspec` tactic; see the `mspec` tactic for what they
look like.
When there's no applicable `mspec` spec, `mvcgen` will try and rewrite an application
`prog = f a b c` with the simp set registered via `@[spec]`.

### Features

When used like `mvcgen +noLetElim [foo_spec, bar_def, instBEqFloat]`, `mvcgen` will additionally

* add a Hoare triple specification `foo_spec : ... → ⦃P⦄ foo ... ⦃Q⦄` to `spec` set for a
  function `foo` occurring in `prog`,
* unfold a definition `def bar_def ... := ...` in `prog`,
* unfold any method of the `instBEqFloat : BEq Float` instance in `prog`.
* it will no longer substitute away `let`-expressions that occur at most once in `P`, `Q` or `prog`.

### Config options

`+noLetElim` is just one config option of many. Check out `Lean.Elab.Tactic.Do.VCGen.Config` for all
options. Of particular note is `stepLimit = some 42`, which is useful for bisecting bugs in
`mvcgen` and tracing its execution.

### Extended syntax

Often, `mvcgen` will be used like this:
```
mvcgen [...]
case inv1 => exact I1
case inv2 => exact I2
all_goals (mleave; try grind)
```
There is special syntax for this:
```
mvcgen [...] invariants
· I1
· I2
with grind
```
When `I1` and `I2` need to refer to inaccessibles (`mvcgen` will introduce a lot of them for program
variables), you can use case label syntax:
```
mvcgen [...] invariants
| inv1 _ acc _ => I1 acc
| _ => I2
with grind
```
This is more convenient than the equivalent `· by rename_i _ acc _; exact I1 acc`.

### Invariant suggestions

`mvcgen` will suggest invariants for you if you use the `invariants?` keyword.
```
mvcgen [...] invariants?
```
This is useful if you do not recall the exact syntax to construct invariants.
Furthermore, it will suggest a concrete invariant encoding "this holds at the start of the loop and
this must hold at the end of the loop" by looking at the corresponding VCs.
Although the suggested invariant is a good starting point, it is too strong and requires users to
interpolate it such that the inductive step can be proved. Example:
```
def mySum (l : List Nat) : Nat := Id.run do
  let mut acc := 0
  for x in l do
    acc := acc + x
  return acc

/--
info: Try this:
  invariants
    · ⇓⟨xs, letMuts⟩ => ⌜xs.prefix = [] ∧ letMuts = 0 ∨ xs.suffix = [] ∧ letMuts = l.sum⌝
-/
#guard_msgs (info) in
theorem mySum_suggest_invariant (l : List Nat) : mySum l = l.sum := by
  generalize h : mySum l = r
  apply Id.of_wp_run_eq h
  mvcgen invariants?
  all_goals admit
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean#L2273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bafb4df56922fab687e1bea8e5a6c4d8fc5083d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
