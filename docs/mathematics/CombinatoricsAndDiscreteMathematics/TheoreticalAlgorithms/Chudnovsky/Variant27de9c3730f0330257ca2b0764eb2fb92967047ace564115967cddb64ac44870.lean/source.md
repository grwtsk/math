# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Chudnovsky.Variant27de9c3730f0330257ca2b0764eb2fb92967047ace564115967cddb64ac44870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65cfc66ca15d85c0e7a1432a18a55db0860e0a43` · SHA-256 `e839252a879101ca83e63686f3c8ddd05ae6d26ff9a0a01bee7181449474ee67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChudnovskyNum.Variant00f086310e353caf63ddcb5c46e14b21e612eb0762dd135ce0421292174f3719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00f086310e353caf63ddcb5c46e14b21e612eb0762dd135ce0421292174f3719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ChudnovskyNum.Variant00f086310e353caf63ddcb5c46e14b21e612eb0762dd135ce0421292174f3719","mathematical_subject":"Computation.DataStructures","original_sha256":"00f086310e353caf63ddcb5c46e14b21e612eb0762dd135ce0421292174f3719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Real/Pi/Chudnovsky.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

meta import Batteries.Data.Float.Rat  -- shake: keep (for `#eval` sanity check)
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.Tactic.Positivity

/-!
# Chudnovsky's formula for π

This file defines the infinite sum in Chudnovsky's formula for computing `π⁻¹`.
It does not (yet!) contain a proof; anyone is welcome to adopt this problem,
but at present we are a long way off.

## Main definitions

* `chudnovskySum`: The infinite sum in Chudnovsky's formula

## Future work

* Use this formula to give approximations for `π`.
* Prove the sum equals `π⁻¹`, as stated using `proof_wanted` in
  `Wanted/Analysis/Real/Pi/Chudnovsky.lean`.
* Show that each imaginary quadratic field of class number 1 (corresponding to Heegner numbers)
  gives a Ramanujan type formula, and that this is the formula coming from 163,
  with `j ((1 + √-163) / 2) = -640320^3`, and the other magic constants coming from
  Eisenstein series.

## References
* [Milla, *A detailed proof of the Chudnovsky formula*][Milla_2018]
* [Chen and Glebov, *On Chudnovsky--Ramanujan type formulae*][Chen_Glebov_2018]

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChudnovskyNum.Variant00f086310e353caf63ddcb5c46e14b21e612eb0762dd135ce0421292174f3719

@[expose] public section

open scoped Real
open Nat

/-- The numerator of the nth term in Chudnovsky's series -/
def chudnovskyNum (n : ℕ) : ℤ :=
  (-1 : ℤ) ^ n * (6 * n)! * (545140134 * n + 13591409)

/-- The denominator of the nth term in Chudnovsky's series -/
def chudnovskyDenom (n : ℕ) : ℕ :=
  (3 * n)! * (n)! ^ 3 * 640320 ^ (3 * n)

/-- The term at index `n` in Chudnovsky's series for `π⁻¹` -/
def chudnovskyTerm (n : ℕ) : ℚ :=
  chudnovskyNum n / chudnovskyDenom n

-- Sanity check that when calculated in `Float` we get the right answer:
/-- info: 3.141593 -/
#guard_msgs in
#eval 1 / (12 / (640320 : Float) ^ (3 / 2) *
  (List.ofFn fun n : Fin 37 => (chudnovskyTerm n).toFloat).sum)

/-- The infinite sum in Chudnovsky's formula for `π⁻¹` -/
noncomputable def chudnovskySum : ℝ :=
  12 / (640320 : ℝ) ^ (3 / 2 : ℝ) * ∑' n : ℕ, (chudnovskyTerm n : ℝ)
```
