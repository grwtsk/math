# Complete source: GRWTSK.Algebra.UniversalAlgebra.PUnit.Variant49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd0ef6e9383473dfed58065c758b14c02fd70263` · SHA-256 `49c32700fcc7551c2e290ca31694bf3b5a2513d12c2aa7d8472e6c97047d75a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.GCDMonoid.Basic
import Mathlib.Algebra.Ring.PUnit

/-!
# `PUnit` is a GCD monoid

This file collects facts about algebraic structures on the one-element type, e.g. that it is has a
GCD.
-/

namespace PUnit

-- This is too high-powered and should be split off also
instance normalizedGCDMonoid : NormalizedGCDMonoid PUnit where
  gcd _ _ := unit
  lcm _ _ := unit
  normUnit _ := 1
  normUnit_zero := rfl
  normUnit_mul := by intros; rfl
  normUnit_coe_units := by intros; rfl
  gcd_dvd_left _ _ := ⟨unit, by subsingleton⟩
  gcd_dvd_right _ _ := ⟨unit, by subsingleton⟩
  dvd_gcd {_ _} _ _ _ := ⟨unit, by subsingleton⟩
  gcd_mul_lcm _ _ := ⟨1, by subsingleton⟩
  lcm_zero_left := by intros; rfl
  lcm_zero_right := by intros; rfl
  normalize_gcd := by intros; rfl
  normalize_lcm := by intros; rfl

@[simp]
theorem gcd_eq {x y : PUnit} : gcd x y = unit :=
  rfl

@[simp]
theorem lcm_eq {x y : PUnit} : lcm x y = unit :=
  rfl

@[simp]
theorem norm_unit_eq {x : PUnit} : normUnit x = 1 :=
  rfl

end PUnit
```
