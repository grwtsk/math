# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd2d2dfa53779352fb61e70286aaee77372692cf` · SHA-256 `defddb14bfe7150b67e12403331a7290d7e37fc4f6fa5e5c22d7cf91be5082a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ediv.Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ediv.Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/DivMod/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Mario Carneiro
-/
module

prelude
public import Init.Data.Int.Basic
import Init.Data.Nat.Div.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ediv.Variant3b831c3aee5aea53a8c40eb6332e5bd8de74b3e552df183da1f70412da978e95

public section

@[expose] section

open Nat

namespace Int

/-! ## Quotient and remainder

There are three main conventions for integer division,
referred here as the E, F, T rounding conventions.
All three pairs satisfy the identity `x % y + (x / y) * y = x` unconditionally,
and satisfy `x / 0 = 0` and `x % 0 = x`.

### Historical notes
In early versions of Lean, the typeclasses provided by `/` and `%`
were defined in terms of `tdiv` and `tmod`, and these were named simply as `div` and `mod`.

However we decided it was better to use `ediv` and `emod` for the default typeclass instances,
as they are consistent with the conventions used in SMT-LIB, and Mathlib,
and often mathematical reasoning is easier with these conventions.
At that time, we did not rename `div` and `mod` to `tdiv` and `tmod` (along with all their lemma).

In September 2024, we decided to do this rename (with deprecations in place),
and later we intend to rename `ediv` and `emod` to `div` and `mod`, as nearly all users will only
ever need to use these functions and their associated lemmas.

In December 2024, we removed `div` and `mod`, but have not yet renamed `ediv` and `emod`.
-/

/-! ### E-rounding division
This pair satisfies `0 ≤ emod x y < natAbs y` for `y ≠ 0`.
-/

/--
Integer division that uses the E-rounding convention. Usually accessed via the `/` operator.
Division by zero is defined to be zero, rather than an error.

In the E-rounding convention (Euclidean division), `Int.emod x y` satisfies `0 ≤ Int.emod x y < Int.natAbs y`
for `y ≠ 0` and `Int.ediv` is the unique function satisfying `Int.emod x y + (Int.ediv x y) * y = x`
for `y ≠ 0`.

This means that `Int.ediv x y` is `⌊x / y⌋` when `y > 0` and `⌈x / y⌉` when `y < 0`.

This function is overridden by the compiler with an efficient implementation. This definition is
the logical model.

Examples:
* `(7 : Int) / (0 : Int) = 0`
* `(0 : Int) / (7 : Int) = 0`
* `(12 : Int) / (6 : Int) = 2`
* `(12 : Int) / (-6 : Int) = -2`
* `(-12 : Int) / (6 : Int) = -2`
* `(-12 : Int) / (-6 : Int) = 2`
* `(12 : Int) / (7 : Int) = 1`
* `(12 : Int) / (-7 : Int) = -1`
* `(-12 : Int) / (7 : Int) = -2`
* `(-12 : Int) / (-7 : Int) = 2`
-/
@[extern "lean_int_ediv", implicit_reducible]
def ediv : (@& Int) → (@& Int) → Int
  | ofNat m, ofNat n => ofNat (m / n)
  | ofNat m, -[n+1]  => -ofNat (m / succ n)
  | -[_+1],  0       => 0
  | -[m+1],  ofNat (succ n) => -[m / succ n +1]
  | -[m+1],  -[n+1]  => ofNat (succ (m / succ n))

/--
Integer modulus that uses the E-rounding convention. Usually accessed via the `%` operator.

In the E-rounding convention (Euclidean division), `Int.emod x y` satisfies `0 ≤ Int.emod x y < Int.natAbs y`
for `y ≠ 0` and `Int.ediv` is the unique function satisfying `Int.emod x y + (Int.ediv x y) * y = x`
for `y ≠ 0`.

This function is overridden by the compiler with an efficient implementation. This definition is
the logical model.

Examples:
* `(7 : Int) % (0 : Int) = 7`
* `(0 : Int) % (7 : Int) = 0`
* `(12 : Int) % (6 : Int) = 0`
* `(12 : Int) % (-6 : Int) = 0`
* `(-12 : Int) % (6 : Int) = 0`
* `(-12 : Int) % (-6 : Int) = 0`
* `(12 : Int) % (7 : Int) = 5`
* `(12 : Int) % (-7 : Int) = 5`
* `(-12 : Int) % (7 : Int) = 2`
* `(-12 : Int) % (-7 : Int) = 2`
-/
@[extern "lean_int_emod", implicit_reducible]
def emod : (@& Int) → (@& Int) → Int
  | ofNat m, n => ofNat (m % natAbs n)
  | -[m+1],  n => subNatNat (natAbs n) (succ (m % natAbs n))

/--
The `Div Int` and `Mod Int` instances use `Int.ediv` and `Int.emod` for compatibility with SMT-LIB and
because mathematical reasoning tends to be easier.
-/
instance : Div Int where
  div := Int.ediv
/--
The `Div Int` and `Mod Int` instances use `Int.ediv` and `Int.emod` for compatibility with SMT-LIB and
because mathematical reasoning tends to be easier.
-/
instance : Mod Int where
  mod := Int.emod

@[simp, norm_cast] theorem natCast_ediv (m n : Nat) : (↑(m / n) : Int) = ↑m / ↑n := rfl

theorem ofNat_ediv_ofNat {a b : Nat} : (↑a / ↑b : Int) = (a / b : Nat) := rfl
@[norm_cast]
theorem negSucc_ediv_ofNat_succ {a b : Nat} : ((-[a+1]) / ↑(b+1) : Int) = -[a / succ b +1] := rfl
theorem negSucc_ediv_negSucc {a b : Nat} : ((-[a+1]) / (-[b+1]) : Int) = ((a / (b + 1)) + 1 : Nat) := rfl
theorem ofNat_ediv_negSucc {a b : Nat} : (ofNat a / (-[b+1])) = -(a / (b + 1) : Nat) := rfl
theorem negSucc_emod_ofNat {a b : Nat} : -[a+1] % (b : Int) = subNatNat b (succ (a % b)) := rfl
theorem negSucc_emod_negSucc {a b : Nat} : -[a+1] % -[b+1] = subNatNat (b + 1) (succ (a % (b + 1))) := rfl

/--
Division of two divisible integers. Division by `0` returns `0`.

This operation uses an optimized implementation, specialized for two divisible integers.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `Int.divExact 21 3 (by decide) = 7`
 * `Int.divExact 21 (-3) (by decide) = -7`
 * `Int.divExact (-15) 5 (by decide) = -3`
 * `Int.divExact 0 22 (by decide) = 0`
 * `Int.divExact 0 0 (by decide) = 0`
-/
@[extern "lean_int_div_exact"]
protected def divExact (x y : @& Int) (h : y ∣ x) : Int :=
  x / y

@[simp]
theorem divExact_eq_ediv {x y : Int} (h : y ∣ x) : x.divExact y h = x / y := rfl

/-! ### T-rounding division -/

/--
Integer division using the T-rounding convention.

In [the T-rounding convention][t-rounding] (division with truncation), all rounding is towards zero.
Division by 0 is defined to be 0. In this convention, `Int.tmod a b + b * (Int.tdiv a b) = a`.

[t-rounding]: https://dl.acm.org/doi/pdf/10.1145/128861.128862

This function is overridden by the compiler with an efficient implementation. This definition is the
logical model.

Examples:
* `(7 : Int).tdiv (0 : Int) = 0`
* `(0 : Int).tdiv (7 : Int) = 0`
* `(12 : Int).tdiv (6 : Int) = 2`
* `(12 : Int).tdiv (-6 : Int) = -2`
* `(-12 : Int).tdiv (6 : Int) = -2`
* `(-12 : Int).tdiv (-6 : Int) = 2`
* `(12 : Int).tdiv (7 : Int) = 1`
* `(12 : Int).tdiv (-7 : Int) = -1`
* `(-12 : Int).tdiv (7 : Int) = -1`
* `(-12 : Int).tdiv (-7 : Int) = 1`
-/
@[extern "lean_int_div", implicit_reducible]
def tdiv : (@& Int) → (@& Int) → Int
  | ofNat m, ofNat n =>  ofNat (m / n)
  | ofNat m, -[n +1] => -ofNat (m / succ n)
  | -[m +1], ofNat n => -ofNat (succ m / n)
  | -[m +1], -[n +1] =>  ofNat (succ m / succ n)

/-- Integer modulo using the T-rounding convention.

In [the T-rounding convention][t-rounding] (division with truncation), all rounding is towards zero.
Division by 0 is defined to be 0 and `Int.tmod a 0 = a`.

In this convention, `Int.tmod a b + b * (Int.tdiv a b) = a`. Additionally,
`Int.natAbs (Int.tmod a b) = Int.natAbs a % Int.natAbs b`, and when `b` does not divide `a`,
`Int.tmod a b` has the same sign as `a`.

[t-rounding]: https://dl.acm.org/doi/pdf/10.1145/128861.128862

This function is overridden by the compiler with an efficient implementation. This definition is the
logical model.

Examples:
* `(7 : Int).tmod (0 : Int) = 7`
* `(0 : Int).tmod (7 : Int) = 0`
* `(12 : Int).tmod (6 : Int) = 0`
* `(12 : Int).tmod (-6 : Int) = 0`
* `(-12 : Int).tmod (6 : Int) = 0`
* `(-12 : Int).tmod (-6 : Int) = 0`
* `(12 : Int).tmod (7 : Int) = 5`
* `(12 : Int).tmod (-7 : Int) = 5`
* `(-12 : Int).tmod (7 : Int) = -5`
* `(-12 : Int).tmod (-7 : Int) = -5`
-/
@[extern "lean_int_mod", implicit_reducible]
def tmod : (@& Int) → (@& Int) → Int
  | ofNat m, ofNat n =>  ofNat (m % n)
  | ofNat m, -[n +1] =>  ofNat (m % succ n)
  | -[m +1], ofNat n => -ofNat (succ m % n)
  | -[m +1], -[n +1] => -ofNat (succ m % succ n)

theorem ofNat_tdiv (m n : Nat) : ↑(m / n) = tdiv ↑m ↑n := rfl

/-! ### F-rounding division
This pair satisfies `fdiv x y = floor (x / y)`.
-/

/--
Integer division using the F-rounding convention.

In the F-rounding convention (flooring division), `Int.fdiv x y` satisfies `Int.fdiv x y = ⌊x / y⌋`
and `Int.fmod` is the unique function satisfying `Int.fmod x y + (Int.fdiv x y) * y = x`.

Examples:
* `(7 : Int).fdiv (0 : Int) = 0`
* `(0 : Int).fdiv (7 : Int) = 0`
* `(12 : Int).fdiv (6 : Int) = 2`
* `(12 : Int).fdiv (-6 : Int) = -2`
* `(-12 : Int).fdiv (6 : Int) = -2`
* `(-12 : Int).fdiv (-6 : Int) = 2`
* `(12 : Int).fdiv (7 : Int) = 1`
* `(12 : Int).fdiv (-7 : Int) = -2`
* `(-12 : Int).fdiv (7 : Int) = -2`
* `(-12 : Int).fdiv (-7 : Int) = 1`
-/
@[implicit_reducible]
def fdiv : Int → Int → Int
  | 0,       _       => 0
  | ofNat m, ofNat n => ofNat (m / n)
  | ofNat (succ m), -[n+1] => -[m / succ n +1]
  | -[_+1],  0       => 0
  | -[m+1],  ofNat (succ n) => -[m / succ n +1]
  | -[m+1],  -[n+1]  => ofNat (succ m / succ n)

/--
Integer modulus using the F-rounding convention.

In the F-rounding convention (flooring division), `Int.fdiv x y` satisfies `Int.fdiv x y = ⌊x / y⌋`
and `Int.fmod` is the unique function satisfying `Int.fmod x y + (Int.fdiv x y) * y = x`.

Examples:

* `(7 : Int).fmod (0 : Int) = 7`
* `(0 : Int).fmod (7 : Int) = 0`

* `(12 : Int).fmod (6 : Int) = 0`
* `(12 : Int).fmod (-6 : Int) = 0`
* `(-12 : Int).fmod (6 : Int) = 0`
* `(-12 : Int).fmod (-6 : Int) = 0`

* `(12 : Int).fmod (7 : Int) = 5`
* `(12 : Int).fmod (-7 : Int) = -2`
* `(-12 : Int).fmod (7 : Int) = 2`
* `(-12 : Int).fmod (-7 : Int) = -5`

-/
@[implicit_reducible]
def fmod : Int → Int → Int
  | 0,       _       => 0
  | ofNat m, ofNat n => ofNat (m % n)
  | ofNat (succ m),  -[n+1]  => subNatNat (m % succ n) n
  | -[m+1],  ofNat n => subNatNat n (succ (m % n))
  | -[m+1],  -[n+1]  => -ofNat (succ m % succ n)

theorem ofNat_fdiv : ∀ m n : Nat, ↑(m / n) = fdiv ↑m ↑n
  | 0, _ => by simp [fdiv]
  | succ _, _ => rfl

/-!
# `bmod` ("balanced" mod)

Balanced mod (and balanced div) are a division and modulus pair such
that `b * (Int.bdiv a b) + Int.bmod a b = a` and
`-b/2 ≤ Int.bmod a b < b/2` for all `a : Int` and `b > 0`.

Note that unlike `emod`, `fmod`, and `tmod`,
`bmod` takes a natural number as the second argument, rather than an integer.

This function is used in `omega` as well as signed bitvectors.
-/

/--
Balanced modulus.

This version of integer modulus uses the balanced rounding convention, which guarantees that
`-m / 2 ≤ Int.bmod x m < m/2` for `m ≠ 0` and `Int.bmod x m` is congruent to `x` modulo `m`.

If `m = 0`, then `Int.bmod x m = x`.

Examples:
* `(7 : Int).bmod 0 = 7`
* `(0 : Int).bmod 7 = 0`
* `(12 : Int).bmod 6 = 0`
* `(12 : Int).bmod 7 = -2`
* `(12 : Int).bmod 8 = -4`
* `(12 : Int).bmod 9 = 3`
* `(-12 : Int).bmod 6 = 0`
* `(-12 : Int).bmod 7 = 2`
* `(-12 : Int).bmod 8 = -4`
* `(-12 : Int).bmod 9 = -3`
-/
@[implicit_reducible]
def bmod (x : Int) (m : Nat) : Int :=
  let r := x % m
  if r < (m + 1) / 2 then
    r
  else
    r - m

/--
Balanced division.

This returns the unique integer so that `b * (Int.bdiv a b) + Int.bmod a b = a`.

Examples:
* `(7 : Int).bdiv 0 = 0`
* `(0 : Int).bdiv 7 = 0`
* `(12 : Int).bdiv 6 = 2`
* `(12 : Int).bdiv 7 = 2`
* `(12 : Int).bdiv 8 = 2`
* `(12 : Int).bdiv 9 = 1`
* `(-12 : Int).bdiv 6 = -2`
* `(-12 : Int).bdiv 7 = -2`
* `(-12 : Int).bdiv 8 = -1`
* `(-12 : Int).bdiv 9 = -1`
-/
@[implicit_reducible]
def bdiv (x : Int) (m : Nat) : Int :=
  if m = 0 then
    0
  else
    let q := x / m
    let r := x % m
    if r < (m + 1) / 2 then
      q
    else
      q + 1

end Int
```
