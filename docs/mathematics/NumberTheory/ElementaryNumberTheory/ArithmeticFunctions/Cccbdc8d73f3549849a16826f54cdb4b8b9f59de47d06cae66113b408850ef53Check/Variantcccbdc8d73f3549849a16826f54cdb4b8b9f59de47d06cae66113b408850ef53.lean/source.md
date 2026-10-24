# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53Check.Variantcccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c4269f101bc7fdf0a761aa386641b5ea625e16` · SHA-256 `cccbdc8d73f3549849a16826f54cdb4b8b9f59de47d06cae66113b408850ef53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic.NormNum.Prime
set_option autoImplicit false
open ArithmeticFunction
example : moebius 6 = 1 := by
  rw [show (6 : ℕ) = 2 * 3 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide),
    moebius_apply_prime (by norm_num), moebius_apply_prime (by norm_num)]
  norm_num
example : moebius 30 = -1 := by
  rw [show (30 : ℕ) = (2 * 3) * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (6 : ℕ).gcd 5 = 1 by decide),
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5)]
example : (30 : ℕ).divisors = {1,2,3,5,6,10,15,30} := by
  norm_num [Nat.divisors]
  decide
```
