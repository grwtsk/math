-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant42e568e9b87b72d55efe89cc70ed68f26a7afd85dda1976ca2733ecc87cdbf47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42e568e9b87b72d55efe89cc70ed68f26a7afd85dda1976ca2733ecc87cdbf47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sign.Variant42e568e9b87b72d55efe89cc70ed68f26a7afd85dda1976ca2733ecc87cdbf47","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"42e568e9b87b72d55efe89cc70ed68f26a7afd85dda1976ca2733ecc87cdbf47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Int/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Classes.Dvd


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant42e568e9b87b72d55efe89cc70ed68f26a7afd85dda1976ca2733ecc87cdbf47

open Nat

namespace Int

/--
`-[n+1]` is suggestive notation for `negSucc n`, which is the second constructor of
`Int` for making strictly negative numbers by mapping `n : Nat` to `-(n + 1)`.
-/
scoped notation "-[" n "+1]" => negSucc n

/- ## sign -/

/--
Returns the "sign" of the integer as another integer: `1` for positive numbers,
`-1` for negative numbers, and `0` for `0`.
-/
def sign : Int → Int
  | succ _ => 1
  | 0      => 0
  | -[_+1] => -1

/-! ## toNat' -/

/--
* If `n : Nat`, then `int.toNat' n = some n`
* If `n : Int` is negative, then `int.toNat' n = none`.
-/
def toNat' : Int → Option Nat
  | (n : Nat) => some n
  | -[_+1] => none

/-! ## Quotient and remainder

There are three main conventions for integer division,
referred here as the E, F, T rounding conventions.
All three pairs satisfy the identity `x % y + (x / y) * y = x` unconditionally,
and satisfy `x / 0 = 0` and `x % 0 = x`.
-/

/-! ### E-rounding division

This pair satisfies `0 ≤ mod x y < natAbs y` for `y ≠ 0`.
-/

/--
Integer division. This version of `Int.div` uses the E-rounding convention
(euclidean division), in which `Int.emod x y` satisfies `0 ≤ mod x y < natAbs y` for `y ≠ 0`
and `Int.ediv` is the unique function satisfying `emod x y + (ediv x y) * y = x`.
-/
def ediv : Int → Int → Int
  | ofNat m, ofNat n => ofNat (m / n)
  | ofNat m, -[n+1]  => -ofNat (m / succ n)
  | -[_+1],  0       => 0
  | -[m+1],  succ n  => -[m / succ n +1]
  | -[m+1],  -[n+1]  => ofNat (succ (m / succ n))

/--
Integer modulus. This version of `Int.mod` uses the E-rounding convention
(euclidean division), in which `Int.emod x y` satisfies `0 ≤ emod x y < natAbs y` for `y ≠ 0`
and `Int.ediv` is the unique function satisfying `emod x y + (ediv x y) * y = x`.
-/
def emod : Int → Int → Int
  | ofNat m, n => ofNat (m % natAbs n)
  | -[m+1],  n => subNatNat (natAbs n) (succ (m % natAbs n))


/-! ### F-rounding division

This pair satisfies `fdiv x y = floor (x / y)`.
-/

/--
Integer division. This version of `Int.div` uses the F-rounding convention
(flooring division), in which `Int.fdiv x y` satisfies `fdiv x y = floor (x / y)`
and `Int.fmod` is the unique function satisfying `fmod x y + (fdiv x y) * y = x`.
-/
def fdiv : Int → Int → Int
  | 0,       _       => 0
  | ofNat m, ofNat n => ofNat (m / n)
  | succ m,  -[n+1]  => -[m / succ n +1]
  | -[_+1],  0       => 0
  | -[m+1],  succ n  => -[m / succ n +1]
  | -[m+1],  -[n+1]  => ofNat (succ m / succ n)

/--
Integer modulus. This version of `Int.mod` uses the F-rounding convention
(flooring division), in which `Int.fdiv x y` satisfies `fdiv x y = floor (x / y)`
and `Int.fmod` is the unique function satisfying `fmod x y + (fdiv x y) * y = x`.
-/
def fmod : Int → Int → Int
  | 0,       _       => 0
  | ofNat m, ofNat n => ofNat (m % n)
  | succ m,  -[n+1]  => subNatNat (m % succ n) n
  | -[m+1],  ofNat n => subNatNat n (succ (m % n))
  | -[m+1],  -[n+1]  => -ofNat (succ m % succ n)

/-! ### T-rounding division

This pair satisfies `div x y = round_to_zero (x / y)`.
`Int.div` and `Int.mod` are defined in core lean.
-/

/--
Core Lean provides instances using T-rounding division, i.e. `Int.div` and `Int.mod`.
We override these here.
-/
instance : Div Int := ⟨Int.ediv⟩
instance : Mod Int := ⟨Int.emod⟩

/-! ## gcd -/

/-- Computes the greatest common divisor of two integers, as a `Nat`. -/
def gcd (m n : Int) : Nat := m.natAbs.gcd n.natAbs

/-! ## divisibility -/

/--
Divisibility of integers. `a ∣ b` (typed as `\|`) says that
there is some `c` such that `b = a * c`.
-/
instance : Dvd Int := ⟨fun a b => ∃ c, b = a * c⟩

/-! ## bit operations -/

/--
Bitwise not

Interprets the integer as an infinite sequence of bits in two's complement
and complements each bit.
```
~~~(0:Int) = -1
~~~(1:Int) = -2
~~~(-1:Int) = 0
```
-/
protected def not : Int -> Int
  | Int.ofNat n => Int.negSucc n
  | Int.negSucc n => Int.ofNat n

instance : Complement Int := ⟨.not⟩

/--
Bitwise shift right.

Conceptually, this treats the integer as an infinite sequence of bits in two's
complement and shifts the value to the right.

```lean
( 0b0111:Int) >>> 1 =  0b0011
( 0b1000:Int) >>> 1 =  0b0100
(-0b1000:Int) >>> 1 = -0b0100
(-0b0111:Int) >>> 1 = -0b0100
```
-/
protected def shiftRight : Int → Nat → Int
  | Int.ofNat n, s => Int.ofNat (n >>> s)
  | Int.negSucc n, s => Int.negSucc (n >>> s)

instance : HShiftRight Int Nat Int := ⟨.shiftRight⟩
