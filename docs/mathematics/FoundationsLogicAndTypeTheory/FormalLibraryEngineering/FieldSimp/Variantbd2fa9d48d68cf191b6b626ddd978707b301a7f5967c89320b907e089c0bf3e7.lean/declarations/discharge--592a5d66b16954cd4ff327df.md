# discharge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5605e2c18ba1e0dc24d6b6d479b058e08b35d59a4f98e7af492f26f12b969262",
  "kind": "def",
  "lexical_name": "discharge",
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
  "slug": "discharge--592a5d66b16954cd4ff327df",
  "source": {
    "blob": "0742f62bd62db744f0dfb7b8b511a0d0bf81b9bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variantbd2fa9d48d68cf191b6b626ddd978707b301a7f5967c89320b907e089c0bf3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:592a5d66b16954cd4ff327df33f096cb434d4a4a53032bc2dc8e91a66d0eee20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variantbd2fa9d48d68cf191b6b626ddd978707b301a7f5967c89320b907e089c0bf3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5605e2c18ba1e0dc24d6b6d479b058e08b35d59a4f98e7af492f26f12b969262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def discharge (prop : Expr) : SimpM (Option Expr) :=
  withTraceNode `Tactic.field_simp (dischargerTraceMessage prop) do
    -- Discharge strategy 1: Use assumptions
    if let some r ← Simp.dischargeUsingAssumption? prop then
      return some r

    -- Discharge strategy 2: Normalize inequalities using NormNum
    let prop : Q(Prop) ← (do pure prop)
    let pf? ← match prop with
    | ~q(($e : $α) ≠ $b) =>
        try
          let res ← Mathlib.Meta.NormNum.derive (α := (q(Prop) : Q(Type))) prop
          match res with
          | .isTrue pf => pure (some pf)
          | _ => pure none
        catch _ =>
          pure none
    | _ => pure none
    if let some pf := pf? then return some pf

    -- Discharge strategy 3: Use positivity
    let pf? ←
      try some <$> Mathlib.Meta.Positivity.solve prop
      catch _ => pure none
    if let some pf := pf? then return some pf

    -- Discharge strategy 4: Use the simplifier
    let ctx ← read
    let usedTheorems := (← get).usedTheorems

    -- Port note: mathlib3's analogous field_simp discharger `field_simp.ne_zero`
    -- does not explicitly call `simp` recursively like this. It's unclear to me
    -- whether this is because
    --   1) Lean 3 simp dischargers automatically call `simp` recursively. (Do they?),
    --   2) mathlib3 norm_num1 is able to handle any needed discharging, or
    --   3) some other reason?
    let ⟨simpResult, usedTheorems'⟩ ←
      simp prop { ctx with dischargeDepth := ctx.dischargeDepth + 1} discharge usedTheorems
    set {(← get) with usedTheorems := usedTheorems'}
    if simpResult.expr.isConstOf ``True then
      try
        return some (← mkOfEqTrue (← simpResult.getProof))
      catch _ =>
        return none
    else
      return none

/--
The goal of `field_simp` is to reduce an expression in a field to an expression of the form `n / d`
where neither `n` nor `d` contains any division symbol, just using the simplifier (with a carefully
crafted simpset named `field_simps`) to reduce the number of division symbols whenever possible by
iterating the following steps:

- write an inverse as a division
- in any product, move the division to the right
- if there are several divisions in a product, group them together at the end and write them as a
  single division
- reduce a sum to a common denominator

If the goal is an equality, this simpset will also clear the denominators, so that the proof
can normally be concluded by an application of `ring` or `ring_exp`.

`field_simp [hx, hy]` is a short form for
`simp (discharger := Tactic.FieldSimp.discharge) [-one_div, -mul_eq_zero, hx, hy, field_simps]`

Note that this naive algorithm will not try to detect common factors in denominators to reduce the
complexity of the resulting expression. Instead, it relies on the ability of `ring` to handle
complicated expressions in the next step.

As always with the simplifier, reduction steps will only be applied if the preconditions of the
lemmas can be checked. This means that proofs that denominators are nonzero should be included. The
fact that a product is nonzero when all factors are, and that a power of a nonzero number is
nonzero, are included in the simpset, but more complicated assertions (especially dealing with sums)
should be given explicitly. If your expression is not completely reduced by the simplifier
invocation, check the denominators of the resulting expression and provide proofs that they are
nonzero to enable further progress.

To check that denominators are nonzero, `field_simp` will look for facts in the context, and
will try to apply `norm_num` to close numerical goals.

The invocation of `field_simp` removes the lemma `one_div` from the simpset, as this lemma
works against the algorithm explained above. It also removes
`mul_eq_zero : x * y = 0 ↔ x = 0 ∨ y = 0`, as `norm_num` can not work on disjunctions to
close goals of the form `24 ≠ 0`, and replaces it with `mul_ne_zero : x ≠ 0 → y ≠ 0 → x * y ≠ 0`
creating two goals instead of a disjunction.

For example,
```lean
example (a b c d x y : ℂ) (hx : x ≠ 0) (hy : y ≠ 0) :
    a + b / x + c / x^2 + d / x^3 = a + x⁻¹ * (y * b / y + (d / x + c) / x) := by
  field_simp
  ring
```

Moreover, the `field_simp` tactic can also take care of inverses of units in
a general (commutative) monoid/ring and partial division `/ₚ`, see `Algebra.Group.Units`
for the definition. Analogue to the case above, the lemma `one_divp` is removed from the simpset
as this works against the algorithm. If you have objects with an `IsUnit x` instance like
`(x : R) (hx : IsUnit x)`, you should lift them with
`lift x to Rˣ using id hx, rw [IsUnit.unit_of_val_units] clear hx`
before using `field_simp`.

See also the `cancel_denoms` tactic, which tries to do a similar simplification for expressions
that have numerals in denominators.
The tactics are not related: `cancel_denoms` will only handle numeric denominators, and will try to
entirely remove (numeric) division from the expression by multiplying by a factor.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variantbd2fa9d48d68cf191b6b626ddd978707b301a7f5967c89320b907e089c0bf3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Variantbd2fa9d48d68cf191b6b626ddd978707b301a7f5967c89320b907e089c0bf3e7.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0742f62bd62db744f0dfb7b8b511a0d0bf81b9bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
