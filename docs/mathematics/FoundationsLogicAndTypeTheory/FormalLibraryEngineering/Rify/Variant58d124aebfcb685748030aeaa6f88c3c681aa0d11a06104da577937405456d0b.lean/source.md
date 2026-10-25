# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Variant58d124aebfcb685748030aeaa6f88c3c681aa0d11a06104da577937405456d0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `208138213bf082690d98647e7e8c5424d8abad35` · SHA-256 `252f3d3595d202adc436a995ba811e054b57a727dfd8ce98a7ecb06c0ba11acf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRifyContext.Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkRifyContext.Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Rify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Mario Carneiro, Robert Y. Lewis, Patrick Massot
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Data.Rat.Cast.Order
public import Mathlib.Tactic.Qify -- shake: keep (for `@[qify_simps]`)
public import Mathlib.Tactic.Zify

/-!
# `rify` tactic

The `rify` tactic is used to shift propositions from `ℕ`, `ℤ`, `ℚ` or `ℝ≥0` to `ℝ`.

Although less useful than its cousins `zify` and `qify`, it can be useful when your
goal or context already involves real numbers.

In the example below, assumption `hn` is about natural numbers, `hk` is about integers
and involves casting a natural number to `ℤ`, and the conclusion is about real numbers.
The proof uses `rify` to lift both assumptions to `ℝ` before calling `linarith`.
```
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Rify

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith
```

TODO: Investigate whether we should generalize this to other fields.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkRifyContext.Variant03682726a2e67c333cf4bdf06a6a2223d563c26308fbb587546b5be93e7adf58

public meta section

namespace Mathlib.Tactic.Rify

open Lean
open Lean.Meta
open Lean.Parser.Tactic
open Lean.Elab.Tactic

/--
`rify` rewrites the main goal by shifting propositions from `ℕ`, `ℤ`, `ℚ` or `ℝ≥0` to `ℝ`.
Although less useful than its cousins `zify` and `qify`, it can be useful when your
goal or context already involves real numbers.

`rify` makes use of the `@[zify_simps]`, `@[qify_simps]` and `@[rify_simps]` attributes to insert
casts into propositions, and the `push_cast` tactic to simplify the `ℝ`-valued expressions.

`rify` is in some sense dual to the `lift` tactic. `lift (r : ℝ) to ℚ` will change the type of a
real number `r` (in the supertype) to `ℚ` (the subtype), given a proof that `r` is rational;
propositions concerning `r` will still be over `ℝ`. `rify` changes propositions about `ℕ`, `ℤ`, `ℚ`
or `ℝ≥0` (the subtype) to propositions about `ℝ` (the supertype), without changing the type of any
variable.

* `rify at l1 l2 ...` rewrites at the given locations.
* `rify [h₁, ..., hₙ]` uses the expressions `h₁`, ..., `hₙ` as extra lemmas for simplification.
  This is especially useful in the presence of nat subtraction or of division: passing arguments of
  type `· ≤ ·` or `· ∣ ·` will allow `push_cast` to do more work.

Examples:
```
/--
import Mathlib

open Real
Here, the assumption `hn` is about natural numbers, `hk` is about integers
and involves casting a natural number to `ℤ`, and the conclusion is about real numbers.
-/
example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk /- Now have hn : 8 ≤ (n : ℝ)   hk : 2 * (k : ℝ) ≤ (n : ℝ) + 2 -/
  linarith

-- Extra hypotheses allow `push_cast` to do more work.
example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : a < b + c := by
  rify [hab] at h ⊢ -- Here `zify` or `qify` would have also worked.
  linarith

example (a b : ℕ) (ha : π ≤ a) : 3 ≤ a + b := by
  rify
  linarith [pi_gt_three]
```
-/
syntax (name := rify) "rify" (simpArgs)? (location)? : tactic

macro_rules
| `(tactic| rify $[[$simpArgs,*]]? $[at $location]?) =>
  let args := simpArgs.map (·.getElems) |>.getD #[]
  `(tactic|
    simp -decide only [zify_simps, qify_simps, rify_simps, push_cast, $args,*]
      $[at $location]?)

/-- The `Simp.Context` generated by `rify` (with no optional arguments or local context). -/
def mkRifyContext : MetaM Simp.Context := do
  let result ← #[`zify_simps, `qify_simps, `rify_simps, `push_cast].mapM fun ext ↦ do
    let some ext ← getSimpExtension? ext | failure
    ext.getTheorems
  Simp.mkContext {failIfUnchanged := false} (simpTheorems := result)

/-- Translate a proof and the proposition into rified form. -/
def rifyProof (proof : Expr) (prop : Expr) : MetaM (Expr × Expr) := do
  let (r, _) ← simp prop (← mkRifyContext)
  Zify.applySimpResultToProp' proof prop r

@[rify_simps] lemma ratCast_eq (a b : ℚ) : a = b ↔ (a : ℝ) = (b : ℝ) := by simp
@[rify_simps] lemma ratCast_le (a b : ℚ) : a ≤ b ↔ (a : ℝ) ≤ (b : ℝ) := by simp
@[rify_simps] lemma ratCast_lt (a b : ℚ) : a < b ↔ (a : ℝ) < (b : ℝ) := by simp
@[rify_simps] lemma ratCast_ne (a b : ℚ) : a ≠ b ↔ (a : ℝ) ≠ (b : ℝ) := by simp

/- The following lemmas are included in `Mathlib.Basic.NNReal.Basic` (so that they
don't need to be imported when using this tactic for `ℕ, ℤ`, or `ℚ`)

`@[rify_simps] lemma toReal_eq (a b : ℝ≥0) : a = b ↔ (a : ℝ) = (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_le (a b : ℝ≥0) : a ≤ b ↔ (a : ℝ) ≤ (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_lt (a b : ℝ≥0) : a < b ↔ (a : ℝ) < (b : ℝ) := by simp`
`@[rify_simps] lemma toReal_ne (a b : ℝ≥0) : a ≠ b ↔ (a : ℝ) ≠ (b : ℝ) := by simp`
-/

@[rify_simps] lemma ofNat_rat_real (a : ℕ) [a.AtLeastTwo] :
    ((ofNat(a) : ℚ) : ℝ) = (ofNat(a) : ℝ) := rfl

end Mathlib.Tactic.Rify
````
