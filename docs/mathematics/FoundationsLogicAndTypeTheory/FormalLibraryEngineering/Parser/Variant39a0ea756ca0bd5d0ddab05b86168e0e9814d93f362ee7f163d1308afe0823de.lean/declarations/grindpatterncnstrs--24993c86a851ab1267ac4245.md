# grindPatternCnstrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e835493d1a98c7c32adb83b5792831d10197201847a5d964a87945f598d5c3",
  "kind": "def",
  "lexical_name": "grindPatternCnstrs",
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
  "slug": "grindpatterncnstrs--24993c86a851ab1267ac4245",
  "source": {
    "blob": "a3657438ed7a6bde1a9f88108ba1eae4e7ea5f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant39a0ea756ca0bd5d0ddab05b86168e0e9814d93f362ee7f163d1308afe0823de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24993c86a851ab1267ac42451ef5e85e06e962ae0e154dae6431b52cf0081d84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant39a0ea756ca0bd5d0ddab05b86168e0e9814d93f362ee7f163d1308afe0823de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e835493d1a98c7c32adb83b5792831d10197201847a5d964a87945f598d5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def grindPatternCnstrs : Parser := leading_parser "where " >> many1Indent (ppLine >> grindPatternCnstr)

/-!
Builtin parsers for `grind` related commands
-/

/--
The `grind_pattern` command can be used to manually select a pattern for theorem instantiation.
Enabling the option `trace.grind.ematch.instance` causes `grind` to print a trace message for each
theorem instance it generates, which can be helpful when determining patterns.

When multiple patterns are specified together, all of them must match in the current context before
`grind` attempts to instantiate the theorem. This is referred to as a *multi-pattern*.
This is useful for theorems such as transitivity rules, where multiple premises must be simultaneously
present for the rule to apply.

In the following example, `R` is a transitive binary relation over `Int`.
```
opaque R : Int → Int → Prop
axiom Rtrans {x y z : Int} : R x y → R y z → R x z
```
To use the fact that `R` is transitive, `grind` must already be able to satisfy both premises.
This is represented using a multi-pattern:
```
grind_pattern Rtrans => R x y, R y z

example {a b c d} : R a b → R b c → R c d → R a d := by
  grind
```
The multi-pattern `R x y`, `R y z` instructs `grind` to instantiate `Rtrans` only when both `R x y`
and `R y z` are available in the context. In the example, `grind` applies `Rtrans` to derive `R a c`
from `R a b` and `R b c`, and can then repeat the same reasoning to deduce `R a d` from `R a c` and
`R c d`.

You can add constraints to restrict theorem instantiation. For example:
```
grind_pattern extract_extract => (as.extract i j).extract k l where
  as =/= #[]
```
The constraint instructs `grind` to instantiate the theorem only if `as` is **not** definitionally equal
to `#[]`.

## Constraints

- `x =/= term`: The term bound to `x` (one of the theorem parameters) is **not** definitionally equal to `term`.
  The term may contain holes (i.e., `_`).

- `x =?= term`: The term bound to `x` is definitionally equal to `term`.
  The term may contain holes (i.e., `_`).

- `size x < n`: The term bound to `x` has size less than `n`. Implicit arguments
and binder types are ignored when computing the size.

- `depth x < n`: The term bound to `x` has depth less than `n`.

- `is_ground x`: The term bound to `x` does not contain local variables or meta-variables.

- `is_value x`: The term bound to `x` is a value. That is, it is a constructor fully applied to value arguments,
a literal (`Nat`, `Int`, `String`, etc.), or a lambda `fun x => t`.

- `is_strict_value x`: Similar to `is_value`, but without lambdas.

- `not_value x`: The term bound to `x` is a **not** value (see `is_value`).

- `not_strict_value x`: Similar to `not_value`, but without lambdas.

- `gen < n`: The theorem instance has generation less than `n`. Recall that each term is assigned a
generation, and terms produced by theorem instantiation have a generation that is one greater than
the maximal generation of all the terms used to instantiate the theorem. This constraint complements
the `gen` option available in `grind`.

- `max_insts < n`: A new instance is generated only if less than `n` instances have been generated so far.

- `guard e`: The instantiation is delayed until `grind` learns that `e` is `true` in this state.

- `check e`: Similar to `guard e`, but `grind` checks whether `e` is implied by its current state by
assuming `¬ e` and trying to deduce an inconsistency.

## Example

Consider the following example where `f` is a monotonic function
```
opaque f : Nat → Nat
axiom fMono : x ≤ y → f x ≤ f y
```
and you want to instruct `grind` to instantiate `fMono` for every pair of terms `f x` and `f y` when
`x ≤ y` and `x` is **not** definitionally equal to `y`. You can use
```
grind_pattern fMono => f x, f y where
  guard x ≤ y
  x =/= y
```
Then, in the following example, only three instances are generated.
```
/--
trace: [grind.ematch.instance] fMono: a ≤ f a → f a ≤ f (f a)
[grind.ematch.instance] fMono: f a ≤ f (f a) → f (f a) ≤ f (f (f a))
[grind.ematch.instance] fMono: a ≤ f (f a) → f a ≤ f (f (f a))
-/
#guard_msgs in
example : f b = f c → a ≤ f a → f (f a) ≤ f (f (f a)) := by
  set_option trace.grind.ematch.instance true in
  grind
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant39a0ea756ca0bd5d0ddab05b86168e0e9814d93f362ee7f163d1308afe0823de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant39a0ea756ca0bd5d0ddab05b86168e0e9814d93f362ee7f163d1308afe0823de.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3657438ed7a6bde1a9f88108ba1eae4e7ea5f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
