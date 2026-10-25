# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d9ced86879e0c299c92d317cf30df5361ac83f48e32f64369b60a6a0a97077",
  "kind": "syntax",
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
  "slug": "syntax--3fc95f85b646ccb8e15862fc",
  "source": {
    "blob": "5c318bc8a942fe6d18f5209ddb2c1c02d1b26283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fc95f85b646ccb8e15862fcab68aa6751c37aaa4f6c573ca124587ea8a2b87b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d9ced86879e0c299c92d317cf30df5361ac83f48e32f64369b60a6a0a97077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax expStx := atomic(" (" &"exp" " := ") withoutPosition(num) ")"

/--
The `linear_combination` tactic attempts to prove an (in)equality goal by exhibiting it as a
specified linear combination of (in)equality hypotheses, or other (in)equality proof terms, modulo
(A) moving terms between the LHS and RHS of the (in)equalities, and (B) a normalization tactic
which by default is ring-normalization.

Example usage:
```
example {a b : ℚ} (h1 : a = 1) (h2 : b = 3) : (a + b) / 2 = 2 := by
  linear_combination (h1 + h2) / 2

example {a b : ℚ} (h1 : a ≤ 1) (h2 : b ≤ 3) : (a + b) / 2 ≤ 2 := by
  linear_combination (h1 + h2) / 2

example {a b : ℚ} : 2 * a * b ≤ a ^ 2 + b ^ 2 := by
  linear_combination sq_nonneg (a - b)

example {x y z w : ℤ} (h₁ : x * z = y ^ 2) (h₂ : y * w = z ^ 2) :
    z * (x * w - y * z) = 0 := by
  linear_combination w * h₁ + y * h₂

example {x : ℚ} (h : x ≥ 5) : x ^ 2 > 2 * x + 11 := by
  linear_combination (x + 3) * h

example {R : Type*} [CommRing R] {a b : R} (h : a = b) : a ^ 2 = b ^ 2 := by
  linear_combination (a + b) * h

example {A : Type*} [AddCommGroup A]
    {x y z : A} (h1 : x + y = 10 • z) (h2 : x - y = 6 • z) :
    2 • x = 2 • (8 • z) := by
  linear_combination (norm := abel) h1 + h2

example (x y : ℤ) (h1 : x * y + 2 * x = 1) (h2 : x = y) :
    x * y = -2 * y + 1 := by
  linear_combination (norm := ring_nf) -2 * h2
  -- leaves goal `⊢ x * y + x * 2 - 1 = 0`
```

The input `e` in `linear_combination e` is a linear combination of proofs of (in)equalities,
given as a sum/difference of coefficients multiplied by expressions.
The coefficients may be arbitrary expressions (with nonnegativity constraints in the case of
inequalities).
The expressions can be arbitrary proof terms proving (in)equalities;
most commonly they are hypothesis names `h1`, `h2`, ....

The left and right sides of all the (in)equalities should have the same type `α`, and the
coefficients should also have type `α`.  For full functionality `α` should be a commutative ring --
strictly speaking, a commutative semiring with "cancellative" addition (in the semiring case,
negation and subtraction will be handled "formally" as if operating in the enveloping ring). If a
nonstandard normalization is used (for example `abel` or `skip`), the tactic will work over types
`α` with less algebraic structure: for equalities, the minimum is instances of
`[Add α] [IsRightCancelAdd α]` together with instances of whatever operations are used in the tactic
call.

The variant `linear_combination (norm := tac) e` specifies explicitly the "normalization tactic"
`tac` to be run on the subgoal(s) after constructing the linear combination.
* The default normalization tactic is `ring1` (for equalities) or `Mathlib.Tactic.Ring.prove{LE,LT}`
  (for inequalities). These are finishing tactics: they close the goal or fail.
* When working in algebraic categories other than commutative rings -- for example fields, abelian
  groups, modules -- it is sometimes useful to use normalization tactics adapted to those categories
  (`field_simp`, `abel`, `module`).
* To skip normalization entirely, use `skip` as the normalization tactic.
* The `linear_combination` tactic creates a linear combination by adding the provided (in)equalities
  together from left to right, so if `tac` is not invariant under commutation of additive
  expressions, then the order of the input hypotheses can matter.

The variant `linear_combination (exp := n) e` will take the goal to the `n`th power before
subtracting the combination `e`. In other words, if the goal is `t1 = t2`,
`linear_combination (exp := n) e` will change the goal to `(t1 - t2)^n = 0` before proceeding as
above.  This variant is implemented only for linear combinations of equalities (i.e., not for
inequalities).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant3f66af97fae08da0143797b8e8d43118b5d1786dbd402d0c88d631c685397b96.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c318bc8a942fe6d18f5209ddb2c1c02d1b26283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
