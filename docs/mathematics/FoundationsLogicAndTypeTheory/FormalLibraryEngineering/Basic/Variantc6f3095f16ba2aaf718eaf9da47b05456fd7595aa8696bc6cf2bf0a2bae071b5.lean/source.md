# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantc6f3095f16ba2aaf718eaf9da47b05456fd7595aa8696bc6cf2bf0a2bae071b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c1e0eea9c4ec12132a752df3da0894d635d62f0` · SHA-256 `439423754bc11701d54c2c4b8b17dc487db42beda9df1ef776894f1af2d22bb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant2d9a6251beb198d504b35fd475d7f56ce9a06902600ac597ff55264ca0d0a717","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d9a6251beb198d504b35fd475d7f56ce9a06902600ac597ff55264ca0d0a717","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant2d9a6251beb198d504b35fd475d7f56ce9a06902600ac597ff55264ca0d0a717","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2d9a6251beb198d504b35fd475d7f56ce9a06902600ac597ff55264ca0d0a717","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Inclusion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Tactic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant2d9a6251beb198d504b35fd475d7f56ce9a06902600ac597ff55264ca0d0a717

open Inclusion

namespace Inclusion.Tests

section Constants

example : (2 : ℝ) ≤ 2 := by dyadic_interval

example : ((3 : ℕ) : ℝ) ≤ 3 := by dyadic_interval

example : ((-3 : ℤ) : ℝ) = -3 := by dyadic_interval

end Constants

section Rationals

example : ((1 / 2 : ℚ) : ℝ) = 0.5 := by dyadic_interval [prec := 1]

example : ((-1 / 3 : ℚ) : ℝ) < -0.3 := by dyadic_interval [prec := 12]

example : ((22 / 7 : ℚ) : ℝ) ∈ Set.Ioo 3.14 3.15 := by dyadic_interval [prec := 12]

example : ((3 / 8 : ℚ) : ℝ) + ((5 / 8 : ℚ) : ℝ) = 1 := by dyadic_interval [prec := 3]

end Rationals

section Scientific

example : (12.5 : ℝ) + 0.25 = 12.75 := by dyadic_interval [prec := 2]

example : (3.1415 : ℝ) ∈ Set.Ioo 3.14 3.15 := by dyadic_interval [prec := 14]

example : (1e12 : ℝ) - 999999999999 = 1 := by dyadic_interval

end Scientific

section Sets

example {x : ℝ} (hx : x ∈ Set.Ici 1) : x ∈ Set.Ici 1 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Iic 2) : x ∈ Set.Iic 2 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Ioi 1) : x ∈ Set.Ioi 0 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Iio 2) : x ∈ Set.Iio 3 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Icc 1 2) : x ∈ Set.Icc 1 2 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Ico 1 2) : x ∈ Set.Ico 0 3 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Ioc 1 2) : x ∈ Set.Ioc 0 3 := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Ioo 1 2) : x ∈ Set.Ioo 0 3 := by dyadic_interval

end Sets

section Logic

example {x y : ℝ} (hx : x ∈ Set.Icc 1 2) (hy : y ∈ Set.Icc 2 3) :
    x ≤ 2 ∧ y ≤ 3 := by dyadic_interval

example {x y : ℝ} (hx : x ∈ Set.Icc 2 3) (hy : y ∈ Set.Icc 0 1) :
    x ≤ 1 ∨ y ≤ 1 := by dyadic_interval

example {x y : ℝ} (hx : x ∈ Set.Icc 2 3) (hy : y ∈ Set.Icc 0 1) :
    ¬x < y := by dyadic_interval

example {x : ℝ} (hx : x = 2) : x + x = 4 := by dyadic_interval

example {x : ℝ} (hx : 1 ≤ x ∧ x ≤ 2) : x ≤ 2 := by dyadic_interval

end Logic

section Hypotheses

example {x : ℝ} (hx : x ≤ 2) : x ≤ 2 := by dyadic_interval

example {x : ℝ} (hx : x ≥ 1) : x ≥ 1 := by dyadic_interval

example {x : ℝ} (hx₀ : 1 < x) (hx₁ : x < 2) : x ∈ Set.Ioo 0 3 := by dyadic_interval

example {x : ℝ} (hx₀ : 1 ≤ x) (hx₁ : x ≤ 2) : x ∈ Set.Icc 1 2 := by dyadic_interval

example {x : ℝ} (hx₀ : x ≤ 3) (hx₁ : x ≤ 2) (hx₂ : 0 ≤ x) (hx₃ : 1 ≤ x) :
    x ∈ Set.Icc 1 2 := by dyadic_interval

end Hypotheses

section Arithmetic

example {x : ℝ} (hx : x ∈ (⟨1, 2⟩ : Interval Dyadic)) : x + x ≤ 4 := by dyadic_interval

example {x y : ℝ} (hx : x ∈ Set.Icc 1 2) (hy : y ∈ Set.Icc 3 4) :
    x + y ∈ Set.Icc 4 6 := by dyadic_interval

example {x y : ℝ} (hx : x ∈ Set.Icc 1 2) (hy : y ∈ Set.Icc 3 4) :
    x * y ∈ Set.Icc 3 8 := by dyadic_interval

example {x y : ℝ} (hx : x ∈ Set.Icc (-2) 3) (hy : y ∈ Set.Icc (-5) 7) :
    x * y ∈ Set.Icc (-15) 21 := by dyadic_interval

example {x y : ℝ} (hx : 3 ≤ x) (hy : 2 ≤ y) : 6 ≤ x * y := by dyadic_interval

example {x : ℝ} (hx : x ∈ Set.Icc (-2) 1) : -x ∈ Set.Icc (-1) 2 := by dyadic_interval

example {x y : ℝ} (hx₀ : 2 ≤ x) (hx₁ : x ≤ 3) (hy₀ : 0 ≤ y) (hy₁ : y ≤ 1) :
    x - y ∈ Set.Icc 1 3 := by dyadic_interval

example {x y : ℝ} (hx : x ≤ 3) (hy : 2 ≤ y) : x - y ≤ 1 := by dyadic_interval

example {x y : ℝ} (hx : 1 ≤ x) (hy : y ≤ 2) : -1 ≤ x - y := by dyadic_interval

example {w x y z : ℝ} (hw : w ∈ Set.Ici 1) (hx : x ∈ Set.Iic 2) (hy : y ∈ Set.Ioi 3)
    (hz : z ∈ Set.Iio 4) : -2 ≤ w - x + y - z := by dyadic_interval

example {x y z : ℝ} (hx : x ∈ Set.Ico 0 1) (hy : y ∈ Set.Ioc 1 2)
    (hz : z ∈ Set.Ioo 2 3) : x + y + z ∈ Set.Icc 3 6 := by dyadic_interval

example {x y z : ℝ} (hx₀ : -2 ≤ x) (hx₁ : x ≤ 1) (hy₀ : 1 ≤ y) (hy₁ : y ≤ 3)
    (hz₀ : 4 ≤ z) (hz₁ : z ≤ 5) : x + y - z ∈ Set.Icc (-6) 0 := by dyadic_interval

example {x y z : ℝ} (hx₀ : -2 ≤ x) (hx₁ : x ≤ 3) (hy : y ∈ Set.Icc 1 4)
    (hz : z ∈ Set.Icc (-1) 2) : x * y + z ∈ Set.Icc (-9) 14 := by dyadic_interval

example {x y : ℝ} (hx₀ : x ≤ 3) (hx₁ : x ≤ 2) (hy₀ : 0 ≤ y) (hy₁ : 1 ≤ y) :
    x - y ≤ 1 := by dyadic_interval

example {x : ℝ} (hx₀ : 1 ≤ x) (hx₁ : x ≤ 2) :
    x + ((1 / 3 : ℚ) : ℝ) ∈ Set.Icc 1.3 2.4 := by dyadic_interval [prec := 12]

example {x y : ℝ} (hx : x ≤ 1.25) (hy : 0.5 ≤ y) :
    x - y + 2.5 ≤ 3.25 := by dyadic_interval [prec := 2]

example {x y : ℝ} (hx₀ : 1 ≤ x) (hx₁ : x ≤ 2) (hy : y ∈ Set.Icc 0.5 1.25) :
    x * y + ((1 / 3 : ℚ) : ℝ) ∈ Set.Icc 0.8 2.9 := by dyadic_interval [prec := 12]

end Arithmetic

section Splitting

example {x : ℝ} (hx : x ∈ Set.Icc (-4) 4) :
    x + 1.25 - (x - 0.5) ∈ Set.Icc 0.75 2.75 := by
  dyadic_interval [binSplit := 3, prec := 2]

example {x : ℝ} (hx : x ∈ Set.Icc 0 4) :
    x + ((1 / 3 : ℚ) : ℝ) - x ∈ Set.Icc (-0.2) 0.9 := by
  dyadic_interval [binSplit := 3, prec := 12]

example {x : ℝ} (hx₀ : -2 ≤ x) (hx₁ : x ≤ 2) :
    x - x + 3.125 ∈ Set.Icc 2.625 3.625 := by
  dyadic_interval [binSplit := 3, prec := 3]

end Splitting

section Kernel

example {x y : ℝ} (hx : x ∈ Set.Icc (-2) 3) (hy : y ∈ Set.Icc 1 2) :
    x + y - x ∈ Set.Icc (-4) 7 := by dyadic_interval +kernel

example : (0.12345678901234567890123456789 : ℝ) < 0.1234567890123456789012345679 := by
  dyadic_interval +kernel [prec := 100]

end Kernel

section Native

set_option linter.style.native false

example {x y : ℝ} (hx : x ∈ Set.Icc 2 3) (hy : y ∈ Set.Icc 0 1) :
    x - y + 1 ∈ Set.Icc 2 4 := by dyadic_interval +native

example : (0.12345678901234567890123456789 : ℝ) < 0.1234567890123456789012345679 := by
  dyadic_interval +native [prec := 100]

end Native

section Check

/-- info: The inclusion check succeeded. -/
#guard_msgs in
set_option linter.unusedTactic false in
example : (1 : ℝ) ≤ 2 := by
  dyadic_interval?
  dyadic_interval

/-- error: The inclusion check failed:
The proposition is provably false -/
#guard_msgs in
set_option linter.unusedTactic false in
example (h : False) : (2 : ℝ) ≤ 1 := by
  dyadic_interval?
  exact h.elim

/-- error: The inclusion check failed:
The proposition was not proven true or false. -/
#guard_msgs in
set_option linter.unusedTactic false in
example (x : ℝ) (h : False) : x ≤ 1 := by
  dyadic_interval?
  exact h.elim

end Check

end Inclusion.Tests
```
