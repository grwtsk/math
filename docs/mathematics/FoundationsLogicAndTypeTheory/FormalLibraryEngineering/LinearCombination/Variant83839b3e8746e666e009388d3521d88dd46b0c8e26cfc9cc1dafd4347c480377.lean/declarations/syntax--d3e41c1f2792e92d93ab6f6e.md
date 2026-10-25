# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5be49e9590ec0d151cde8900660a58826b1a1e56f39a980513901101d657a92d",
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
  "slug": "syntax--d3e41c1f2792e92d93ab6f6e",
  "source": {
    "blob": "d7c3e6d68305467fb6892acfd1f497917c0979c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3e41c1f2792e92d93ab6f6e73dcc24310ada6e0ab1f08dd79589f04a08e9c27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5be49e9590ec0d151cde8900660a58826b1a1e56f39a980513901101d657a92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax expStx := atomic(" (" &"exp" " := ") withoutPosition(num) ")"

/--
`linear_combination'` attempts to simplify the target by creating a linear combination
  of a list of equalities and subtracting it from the target.
  The tactic will create a linear
  combination by adding the equalities together from left to right, so the order
  of the input hypotheses does matter.  If the `norm` field of the
  tactic is set to `skip`, then the tactic will simply set the user up to
  prove their target using the linear combination instead of normalizing the subtraction.

Note: There is also a similar tactic `linear_combination` (no prime); this version is
provided for backward compatibility.  Compared to this tactic, `linear_combination`:
* drops the `←` syntax for reversing an equation, instead offering this operation using the `-`
  syntax
* does not support multiplication of two hypotheses (`h1 * h2`), division by a hypothesis (`3 / h`),
  or inversion of a hypothesis (`h⁻¹`)
* produces noisy output when the user adds or subtracts a constant to a hypothesis (`h + 3`)

Note: The left and right sides of all the equalities should have the same
  type, and the coefficients should also have this type.  There must be
  instances of `Mul` and `AddGroup` for this type.

* The input `e` in `linear_combination' e` is a linear combination of proofs of equalities,
  given as a sum/difference of coefficients multiplied by expressions.
  The coefficients may be arbitrary expressions.
  The expressions can be arbitrary proof terms proving equalities.
  Most commonly they are hypothesis names `h1, h2, ...`.
* `linear_combination' (norm := tac) e` runs the "normalization tactic" `tac`
  on the subgoal(s) after constructing the linear combination.
  * The default normalization tactic is `ring1`, which closes the goal or fails.
  * To get a subgoal in the case that it is not immediately provable, use
    `ring_nf` as the normalization tactic.
  * To avoid normalization entirely, use `skip` as the normalization tactic.
* `linear_combination' (exp := n) e` will take the goal to the `n`th power before subtracting the
  combination `e`. In other words, if the goal is `t1 = t2`, `linear_combination' (exp := n) e`
  will change the goal to `(t1 - t2)^n = 0` before proceeding as above.
  This feature is not supported for `linear_combination2`.
* `linear_combination2 e` is the same as `linear_combination' e` but it produces two
  subgoals instead of one: rather than proving that `(a - b) - (a' - b') = 0` where
  `a' = b'` is the linear combination from `e` and `a = b` is the goal,
  it instead attempts to prove `a = a'` and `b = b'`.
  Because it does not use subtraction, this form is applicable also to semirings.
  * Note that a goal which is provable by `linear_combination' e` may not be provable
    by `linear_combination2 e`; in general you may need to add a coefficient to `e`
    to make both sides match, as in `linear_combination2 e + c`.
  * You can also reverse equalities using `← h`, so for example if `h₁ : a = b`
    then `2 * (← h)` is a proof of `2 * b = 2 * a`.

Example Usage:
```
example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  linear_combination' 1*h1 - 2*h2

example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  linear_combination' h1 - 2*h2

example (x y : ℤ) (h1 : x*y + 2*x = 1) (h2 : x = y) : x*y = -2*y + 1 := by
  linear_combination' (norm := ring_nf) -2*h2
  /- Goal: x * y + x * 2 - 1 = 0 -/

example (x y z : ℝ) (ha : x + 2*y - z = 4) (hb : 2*x + y + z = -2)
    (hc : x + 2*y + z = 2) :
    -3*x - 3*y - 4*z = 2 := by
  linear_combination' ha - hb - 2*hc

example (x y : ℚ) (h1 : x + y = 3) (h2 : 3*x = 7) :
    x*x*y + y*x*y + 6*x = 3*x*y + 14 := by
  linear_combination' x*y*h1 + 2*h2

example (x y : ℤ) (h1 : x = -3) (h2 : y = 10) : 2*x = -6 := by
  linear_combination' (norm := skip) 2*h1
  simp

axiom qc : ℚ
axiom hqc : qc = 2*qc

example (a b : ℚ) (h : ∀ p q : ℚ, p = q) : 3*a + qc = 3*b + 2*qc := by
  linear_combination' 3 * h a b + hqc
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c3e6d68305467fb6892acfd1f497917c0979c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
