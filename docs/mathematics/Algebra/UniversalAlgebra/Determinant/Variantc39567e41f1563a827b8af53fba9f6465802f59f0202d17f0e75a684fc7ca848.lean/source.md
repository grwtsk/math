# Complete source: GRWTSK.Algebra.UniversalAlgebra.Determinant.Variantc39567e41f1563a827b8af53fba9f6465802f59f0202d17f0e75a684fc7ca848

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06722ab25b4e34ba9a5138de5ca820f1285248be` · SHA-256 `7e2a9194b998eb3506a1dee5716b97e46ea1760e05d276e3ffd17a0c597bfd47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.DeterminantAux.Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.DeterminantAux.Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/ContinuedFractions/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Kappelmann. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Kappelmann
-/
import Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence
import Mathlib.Algebra.ContinuedFractions.TerminatedStable
import Mathlib.Tactic.Ring

/-!
# Determinant Formula for Simple Continued Fraction

## Summary

We derive the so-called *determinant formula* for `SimpContFract`:
`Aₙ * Bₙ₊₁ - Bₙ * Aₙ₊₁ = (-1)^(n + 1)`.

## TODO

Generalize this for `GenContFract` version:
`Aₙ * Bₙ₊₁ - Bₙ * Aₙ₊₁ = (-a₀) * (-a₁) * .. * (-aₙ₊₁)`.

## References

- https://en.wikipedia.org/wiki/Generalized_continued_fraction#The_determinant_formula

-/


namespace GRWTSK.Algebra.UniversalAlgebra.DeterminantAux.Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1

open GenContFract

namespace SimpContFract

variable {K : Type*} [Field K] {s : SimpContFract K} {n : ℕ}

theorem determinant_aux (hyp : n = 0 ∨ ¬(↑s : GenContFract K).TerminatedAt (n - 1)) :
    ((↑s : GenContFract K).contsAux n).a * ((↑s : GenContFract K).contsAux (n + 1)).b -
      ((↑s : GenContFract K).contsAux n).b * ((↑s : GenContFract K).contsAux (n + 1)).a =
        (-1) ^ n := by
  induction n with
  | zero => simp [contsAux]
  | succ n IH =>
    -- set up some shorthand notation
    let g := (↑s : GenContFract K)
    let conts := contsAux g (n + 2)
    set pred_conts := contsAux g (n + 1) with pred_conts_eq
    set ppred_conts := contsAux g n with ppred_conts_eq
    let pA := pred_conts.a
    let pB := pred_conts.b
    let ppA := ppred_conts.a
    let ppB := ppred_conts.b
    -- let's change the goal to something more readable
    change pA * conts.b - pB * conts.a = (-1) ^ (n + 1)
    have not_terminated_at_n : ¬TerminatedAt g n := Or.resolve_left hyp n.succ_ne_zero
    obtain ⟨gp, s_nth_eq⟩ : ∃ gp, g.s.get? n = some gp :=
      Option.ne_none_iff_exists'.1 not_terminated_at_n
    -- unfold the recurrence relation for `conts` once and simplify to derive the following
    suffices pA * (ppB + gp.b * pB) - pB * (ppA + gp.b * pA) = (-1) ^ (n + 1) by
      simp only [conts, contsAux_recurrence s_nth_eq ppred_conts_eq pred_conts_eq]
      have gp_a_eq_one : gp.a = 1 := s.property _ _ (partNum_eq_s_a s_nth_eq)
      rw [gp_a_eq_one, this.symm]
      ring
    suffices pA * ppB - pB * ppA = (-1) ^ (n + 1) by calc
      pA * (ppB + gp.b * pB) - pB * (ppA + gp.b * pA) =
          pA * ppB + pA * gp.b * pB - pB * ppA - pB * gp.b * pA := by ring
      _ = pA * ppB - pB * ppA := by ring
      _ = (-1) ^ (n + 1) := by assumption
    suffices ppA * pB - ppB * pA = (-1) ^ n by
      have pow_succ_n : (-1 : K) ^ (n + 1) = -1 * (-1) ^ n := pow_succ' (-1) n
      rw [pow_succ_n, ← this]
      ring
    exact IH <| Or.inr <| mt (terminated_stable <| n.sub_le 1) not_terminated_at_n

/-- The determinant formula `Aₙ * Bₙ₊₁ - Bₙ * Aₙ₊₁ = (-1)^(n + 1)`. -/
theorem determinant (not_terminatedAt_n : ¬(↑s : GenContFract K).TerminatedAt n) :
    (↑s : GenContFract K).nums n * (↑s : GenContFract K).dens (n + 1) -
      (↑s : GenContFract K).dens n * (↑s : GenContFract K).nums (n + 1) = (-1) ^ (n + 1) :=
  determinant_aux <| Or.inr <| not_terminatedAt_n

end SimpContFract
```
