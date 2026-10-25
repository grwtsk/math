# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSimp.Variantbd2fa9d48d68cf191b6b626ddd978707b301a7f5967c89320b907e089c0bf3e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0742f62bd62db744f0dfb7b8b511a0d0bf81b9bf` · SHA-256 `71999642ce3edea386e82db67187ed268972109afffb10ec718359f184b93dc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargerTraceMessage.Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DischargerTraceMessage.Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/FieldSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, David Renshaw
-/

import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Simp.Main
import Std.Lean.Parser
import Mathlib.Algebra.Group.Units
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.NormNum.Core
import Qq

/-!
# `field_simp` tactic

Tactic to clear denominators in algebraic expressions, based on `simp` with a specific simpset.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargerTraceMessage.Variant111c86c66706f33a523f9686a26e1b2b6f7ee48d6b72f12b7fe819687cb48ed0

set_option autoImplicit true

namespace Mathlib.Tactic.FieldSimp

open Lean Elab.Tactic Parser.Tactic Lean.Meta
open Qq

initialize registerTraceClass `Tactic.field_simp

/-- Constructs a trace message for the `discharge` function. -/
private def dischargerTraceMessage (prop: Expr) : Except ε (Option Expr) → SimpM MessageData
| .error _ | .ok none => return m!"{crossEmoji} discharge {prop}"
| .ok (some _) => return m!"{checkEmoji} discharge {prop}"

/-- Discharge strategy for the `field_simp` tactic. -/
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
syntax (name := fieldSimp) "field_simp" (config)? (discharger)? (&" only")?
  (simpArgs)? (location)? : tactic

elab_rules : tactic
| `(tactic| field_simp $[$cfg:config]? $[$dis:discharger]? $[only%$only?]?
    $[$sa:simpArgs]? $[$loc:location]?) => withMainContext do
  let cfg ← elabSimpConfig (cfg.getD ⟨.missing⟩) .simp
  let loc := expandOptLocation (mkOptionalNode loc)

  let dis ← match dis with
  | none => pure discharge
  | some d => do
     let ⟨_,d⟩ ← tacticToDischarge d
     pure d

  let thms0 ← if only?.isSome then
    simpOnlyBuiltins.foldlM (·.addConst ·) ({} : SimpTheorems)
  else do
    let thms0 ← getSimpTheorems
    let thms0 ← thms0.erase (.decl ``one_div)
    let thms0 ← thms0.erase (.decl `mul_eq_zero)
    thms0.erase (.decl ``one_divp)

  let some ext ← getSimpExtension? `field_simps | throwError "field_simps not found"
  let thms ← ext.getTheorems

  let ctx : Simp.Context := {
     simpTheorems := #[thms, thms0]
     congrTheorems := (← getSimpCongrTheorems)
     config := cfg
  }
  let mut r ← elabSimpArgs (sa.getD ⟨.missing⟩) ctx (eraseLocal := false) .simp
  if r.starArg then
    r ← do
      let ctx := r.ctx
      let mut simpTheorems := ctx.simpTheorems
      let hs ← getPropHyps
      for h in hs do
        unless simpTheorems.isErased (.fvar h) do
          simpTheorems ← simpTheorems.addTheorem (.fvar h) (← h.getDecl).toExpr
      let ctx := { ctx with simpTheorems }
      pure { ctx }

  _ ← simpLocation r.ctx dis loc
````
