# Complete source: GRWTSK.Algebra.UniversalAlgebra.Translations.Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f92a1e96bc33850aabf6bec5adc25d442078233c` · SHA-256 `3d3213366d50c2b501be622bf3564ac6504eecc645ae5d7fd3fa75075461341a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.TerminatedAtIffSTerminatedAt.Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.TerminatedAtIffSTerminatedAt.Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/ContinuedFractions/Translations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kevin Kappelmann. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Kappelmann
-/
import Mathlib.Algebra.ContinuedFractions.Basic
import Mathlib.Algebra.GroupWithZero.Basic

/-!
# Basic Translation Lemmas Between Functions Defined for Continued Fractions

## Summary

Some simple translation lemmas between the different definitions of functions defined in
`Algebra.ContinuedFractions.Basic`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.TerminatedAtIffSTerminatedAt.Variant52fa46481dd1671948129219802e819f1827d75b2e4044f7108ac8e3bea9226f

namespace GenContFract

section General

/-!
### Translations Between General Access Functions

Here we give some basic translations that hold by definition between the various methods that allow
us to access the numerators and denominators of a continued fraction.
-/


variable {α : Type*} {g : GenContFract α} {n : ℕ}

theorem terminatedAt_iff_s_terminatedAt : g.TerminatedAt n ↔ g.s.TerminatedAt n := by rfl

theorem terminatedAt_iff_s_none : g.TerminatedAt n ↔ g.s.get? n = none := by rfl

theorem partNum_none_iff_s_none : g.partNums.get? n = none ↔ g.s.get? n = none := by
  cases s_nth_eq : g.s.get? n <;> simp [partNums, s_nth_eq]

theorem terminatedAt_iff_partNum_none : g.TerminatedAt n ↔ g.partNums.get? n = none := by
  rw [terminatedAt_iff_s_none, partNum_none_iff_s_none]

theorem partDen_none_iff_s_none : g.partDens.get? n = none ↔ g.s.get? n = none := by
  cases s_nth_eq : g.s.get? n <;> simp [partDens, s_nth_eq]

theorem terminatedAt_iff_partDen_none : g.TerminatedAt n ↔ g.partDens.get? n = none := by
  rw [terminatedAt_iff_s_none, partDen_none_iff_s_none]

theorem partNum_eq_s_a {gp : Pair α} (s_nth_eq : g.s.get? n = some gp) :
    g.partNums.get? n = some gp.a := by simp [partNums, s_nth_eq]

theorem partDen_eq_s_b {gp : Pair α} (s_nth_eq : g.s.get? n = some gp) :
    g.partDens.get? n = some gp.b := by simp [partDens, s_nth_eq]

theorem exists_s_a_of_partNum {a : α} (nth_partNum_eq : g.partNums.get? n = some a) :
    ∃ gp, g.s.get? n = some gp ∧ gp.a = a := by
  simpa [partNums, Stream'.Seq.map_get?] using nth_partNum_eq

theorem exists_s_b_of_partDen {b : α}
    (nth_partDen_eq : g.partDens.get? n = some b) :
    ∃ gp, g.s.get? n = some gp ∧ gp.b = b := by
  simpa [partDens, Stream'.Seq.map_get?] using nth_partDen_eq

end General

section WithDivisionRing

/-!
### Translations Between Computational Functions

Here we give some basic translations that hold by definition for the computational methods of a
continued fraction.
-/


variable {K : Type*} {g : GenContFract K} {n : ℕ} [DivisionRing K]

theorem nth_cont_eq_succ_nth_contAux : g.conts n = g.contsAux (n + 1) :=
  rfl

theorem num_eq_conts_a : g.nums n = (g.conts n).a :=
  rfl

theorem den_eq_conts_b : g.dens n = (g.conts n).b :=
  rfl

theorem conv_eq_num_div_den : g.convs n = g.nums n / g.dens n :=
  rfl

theorem conv_eq_conts_a_div_conts_b :
    g.convs n = (g.conts n).a / (g.conts n).b :=
  rfl

theorem exists_conts_a_of_num {A : K} (nth_num_eq : g.nums n = A) :
    ∃ conts, g.conts n = conts ∧ conts.a = A := by simpa

theorem exists_conts_b_of_den {B : K} (nth_denom_eq : g.dens n = B) :
    ∃ conts, g.conts n = conts ∧ conts.b = B := by simpa

@[simp]
theorem zeroth_contAux_eq_one_zero : g.contsAux 0 = ⟨1, 0⟩ :=
  rfl

@[simp]
theorem first_contAux_eq_h_one : g.contsAux 1 = ⟨g.h, 1⟩ :=
  rfl

@[simp]
theorem zeroth_cont_eq_h_one : g.conts 0 = ⟨g.h, 1⟩ :=
  rfl

@[simp]
theorem zeroth_num_eq_h : g.nums 0 = g.h :=
  rfl

@[simp]
theorem zeroth_den_eq_one : g.dens 0 = 1 :=
  rfl

@[simp]
theorem zeroth_conv_eq_h : g.convs 0 = g.h := by
  simp [conv_eq_num_div_den, num_eq_conts_a, den_eq_conts_b, div_one]

theorem second_contAux_eq {gp : Pair K} (zeroth_s_eq : g.s.get? 0 = some gp) :
    g.contsAux 2 = ⟨gp.b * g.h + gp.a, gp.b⟩ := by
  simp [zeroth_s_eq, contsAux, nextConts, nextDen, nextNum]

theorem first_cont_eq {gp : Pair K} (zeroth_s_eq : g.s.get? 0 = some gp) :
    g.conts 1 = ⟨gp.b * g.h + gp.a, gp.b⟩ := by
  simp [nth_cont_eq_succ_nth_contAux, second_contAux_eq zeroth_s_eq]

theorem first_num_eq {gp : Pair K} (zeroth_s_eq : g.s.get? 0 = some gp) :
    g.nums 1 = gp.b * g.h + gp.a := by simp [num_eq_conts_a, first_cont_eq zeroth_s_eq]

theorem first_den_eq {gp : Pair K} (zeroth_s_eq : g.s.get? 0 = some gp) :
    g.dens 1 = gp.b := by simp [den_eq_conts_b, first_cont_eq zeroth_s_eq]

@[simp]
theorem zeroth_conv'Aux_eq_zero {s : Stream'.Seq <| Pair K} :
    convs'Aux s 0 = (0 : K) :=
  rfl

@[simp]
theorem zeroth_conv'_eq_h : g.convs' 0 = g.h := by simp [convs']

theorem convs'Aux_succ_none {s : Stream'.Seq (Pair K)} (h : s.head = none) (n : ℕ) :
    convs'Aux s (n + 1) = 0 := by simp [convs'Aux, h]

theorem convs'Aux_succ_some {s : Stream'.Seq (Pair K)} {p : Pair K} (h : s.head = some p)
    (n : ℕ) : convs'Aux s (n + 1) = p.a / (p.b + convs'Aux s.tail n) := by
  simp [convs'Aux, h]

end WithDivisionRing

end GenContFract
```
