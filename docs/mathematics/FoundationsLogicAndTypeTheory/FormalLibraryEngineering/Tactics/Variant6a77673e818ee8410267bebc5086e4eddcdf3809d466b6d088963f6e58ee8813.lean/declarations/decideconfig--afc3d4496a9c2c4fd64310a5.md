# DecideConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d7e031fd0e2db79d8f78a5ac3f941193c9dc04e9f41ac2d3e8c7246ebd1b1df",
  "kind": "structure",
  "lexical_name": "DecideConfig",
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
  "slug": "decideconfig--afc3d4496a9c2c4fd64310a5",
  "source": {
    "blob": "2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1479,
    "line": 1392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc3d4496a9c2c4fd64310a5952b7fbff2ff92627f5bb5a4534d5f5e2a221ee4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d7e031fd0e2db79d8f78a5ac3f941193c9dc04e9f41ac2d3e8c7246ebd1b1df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1392–1479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure DecideConfig where
  /-- If true (default: false), then use only kernel reduction when reducing the `Decidable` instance.
  This is more efficient, since the default mode reduces twice (once in the elaborator and again in the kernel),
  however kernel reduction ignores transparency settings. -/
  kernel : Bool := false
  /-- If true (default: false), then uses the native code compiler to evaluate the `Decidable` instance,
  admitting the result via an axiom. This can be significantly more efficient,
  but it is at the cost of increasing the trusted code base, namely the Lean compiler
  and all definitions with an `@[implemented_by]` attribute.
  The instance is only evaluated once. The `native_decide` tactic is a synonym for `decide +native`. -/
  native : Bool := false
  /-- If true (default: true), then when preprocessing the goal, do zeta reduction to attempt to eliminate free variables. -/
  zetaReduce : Bool := true
  /-- If true (default: false), then when preprocessing, removes irrelevant variables and reverts the local context.
  A variable is *relevant* if it appears in the target, if it appears in a relevant variable,
  or if it is a proposition that refers to a relevant variable. -/
  revert : Bool := false

/--
`decide` attempts to prove the main goal (with target type `p`) by synthesizing an instance of `Decidable p`
and then reducing that instance to evaluate the truth value of `p`.
If it reduces to `isTrue h`, then `h` is a proof of `p` that closes the goal.

The target is not allowed to contain local variables or metavariables.
If there are local variables, you can first try using the `revert` tactic with these local variables to move them into the target,
or you can use the `+revert` option, described below.

Options:
- `decide +revert` begins by reverting local variables that the target depends on,
  after cleaning up the local context of irrelevant variables.
  A variable is *relevant* if it appears in the target, if it appears in a relevant variable,
  or if it is a proposition that refers to a relevant variable.
- `decide +kernel` uses kernel for reduction instead of the elaborator.
  It has two key properties: (1) since it uses the kernel, it ignores transparency and can unfold everything,
  and (2) it reduces the `Decidable` instance only once instead of twice.
- `decide +native` uses the native code compiler (`#eval`) to evaluate the `Decidable` instance,
  admitting the result via an axiom.
  This can be significantly more efficient than using reduction, but it is at the cost of increasing the size
  of the trusted code base.
  Namely, it depends on the correctness of the Lean compiler and all definitions with an `@[implemented_by]` attribute.
  Like with `+kernel`, the `Decidable` instance is evaluated only once.

Limitation: In the default mode or `+kernel` mode, since `decide` uses reduction to evaluate the term,
`Decidable` instances defined by well-founded recursion might not work because evaluating them requires reducing proofs.
Reduction can also get stuck on `Decidable` instances with `Eq.rec` terms.
These can appear in instances defined using tactics (such as `rw` and `simp`).
To avoid this, create such instances using definitions such as `decidable_of_iff` instead.

## Examples

Proving inequalities:
```lean
example : 2 + 2 ≠ 5 := by decide
```

Trying to prove a false proposition:
```lean
example : 1 ≠ 1 := by decide
/-
tactic 'decide' proved that the proposition
  1 ≠ 1
is false
-/
```

Trying to prove a proposition whose `Decidable` instance fails to reduce
```lean
opaque unknownProp : Prop

open scoped Classical in
example : unknownProp := by decide
/-
tactic 'decide' failed for proposition
  unknownProp
since its 'Decidable' instance reduced to
  Classical.choice ⋯
rather than to the 'isTrue' constructor.
-/
```

## Properties and relations

For equality goals for types with decidable equality, usually `rfl` can be used in place of `decide`.
```lean
example : 1 + 1 = 2 := by decide
example : 1 + 1 = 2 := by rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean#L1392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
