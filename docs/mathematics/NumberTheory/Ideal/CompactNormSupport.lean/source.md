# Complete source: GRWTSK.NumberTheory.Ideal.CompactNormSupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0607296cd9f472e2ab7fc9db1239b20c929bacf` · SHA-256 `8fa3aa88de56a385d549087d81f1bef98629061fba1f3d9f2cf4d6bbe4c290ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Compact-window finite support for actual ideal absolute-norm triples.
Adapted and generalized from OpenAI math, project author OpenAI, Apache-2.0,
commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/Arithmetic/IdealMobius.lean, lines 327-385,
SHA256 dd0ae071b0bdb5746fa6362de83aa86a4ee4462810a7fdbc72f0af95b5887675.
Mathlib RingTheory/Ideal/Norm/AbsNorm.lean:
Copyright (c) 2022 Anne Baanen. All rights reserved.
Authors: Anne Baanen, Alex J. Best.
Mathlib Topology/Order/Compact.lean:
Copyright (c) 2021 Patrick Massot. All rights reserved.
Authors: Patrick Massot, Yury Kudryashov.
Released under Apache-2.0 as described in LICENSE; imported individual credit retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
This is not an admitted ActualEisensteinCubic.O specialization or a completed-row theorem.
-/
import Mathlib.RingTheory.Ideal.Norm.AbsNorm
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Order.Compact
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith

namespace GRWTSK.NumberTheory.Ideal.CompactNormSupport
noncomputable section
open Set

variable {S : Type*} [CommRing S] [IsDedekindDomain S]
  [Module.Free ℤ S] [Module.Finite ℤ S] [CharZero S]

omit [CharZero S] in
lemma norm_at_least_one (I : Ideal S) (hI : I≠0) : (1:ℝ)≤Ideal.absNorm I := by
  exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Ideal.absNorm_eq_zero_iff.not.mpr hI)

omit [CharZero S] in
/-- The scale dominates each actual nonzero ideal norm. -/
lemma ideal_triple_scale_bounds (I J H : Ideal S) (hI : I≠0) (hJ : J≠0) (hH : H≠0) :
    (Ideal.absNorm I:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 ∧
    (Ideal.absNorm J:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 ∧
    (Ideal.absNorm H:ℝ)≤(Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3 := by
  have ha := norm_at_least_one I hI
  have hb := norm_at_least_one J hJ
  have hc := norm_at_least_one H hH
  have ha0 : (0:ℝ)≤Ideal.absNorm I := Nat.cast_nonneg _
  have hb0 : (0:ℝ)≤Ideal.absNorm J := Nat.cast_nonneg _
  have hc0 : (0:ℝ)≤Ideal.absNorm H := Nat.cast_nonneg _
  have hb3 : (1:ℝ)≤(Ideal.absNorm J:ℝ)^3 := one_le_pow₀ hb
  have hc3 : (1:ℝ)≤(Ideal.absNorm H:ℝ)^3 := one_le_pow₀ hc
  constructor
  · calc (Ideal.absNorm I:ℝ)=(Ideal.absNorm I:ℝ)*1*1 := by simp
         _ ≤ _ := by gcongr
  constructor
  · calc (Ideal.absNorm J:ℝ)≤(Ideal.absNorm J:ℝ)^3 := le_self_pow₀ hb (by decide)
         _ = 1*(Ideal.absNorm J:ℝ)^3*1 := by simp
         _ ≤ _ := by gcongr
  · calc (Ideal.absNorm H:ℝ)≤(Ideal.absNorm H:ℝ)^3 := le_self_pow₀ hc (by decide)
         _ = 1*1*(Ideal.absNorm H:ℝ)^3 := by simp
         _ ≤ _ := by gcongr

/-- Actual ideal-triple finite support from compact W, positive scale, zero-ideal cancellation,
and window vanishing. Bounded-norm ideal finiteness is proved by the actual Mathlib supplier. -/
theorem finite_support_norm_triple (W : ℝ→ℂ) (hW : HasCompactSupport W)
    (X : ℝ) (hX : 0<X) (F : Ideal S×Ideal S×Ideal S→ℂ)
    (hzero : ∀I J H,I=0 ∨ J=0 ∨ H=0→F (I,J,H)=0)
    (hwindow : ∀I J H,W ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*
      (Ideal.absNorm H:ℝ)^3/X)=0→F (I,J,H)=0) : (Function.support F).Finite := by
  obtain ⟨B,hB⟩ := hW.bddAbove
  let bound := max B 1
  have hbound : ∀y,W y≠0→y≤bound := by
    intro y hy
    exact (hB (subset_tsupport W hy)).trans (le_max_left _ _)
  obtain ⟨M,hM⟩ := exists_nat_gt (bound*X)
  let A := {I : Ideal S | Ideal.absNorm I≤M}
  have hA : A.Finite := Ideal.finite_setOfPred_absNorm_le M
  apply (hA.prod (hA.prod hA)).subset
  rintro ⟨I,J,H⟩ hF
  have hF0 : F (I,J,H)≠0 := hF
  have hI : I≠0 := fun h=>hF0 (hzero I J H (Or.inl h))
  have hJ : J≠0 := fun h=>hF0 (hzero I J H (Or.inr (Or.inl h)))
  have hH : H≠0 := fun h=>hF0 (hzero I J H (Or.inr (Or.inr h)))
  have hw : W ((Ideal.absNorm I:ℝ)*(Ideal.absNorm J:ℝ)^3*(Ideal.absNorm H:ℝ)^3/X)≠0 :=
    fun h=>hF0 (hwindow I J H h)
  have hsize := (div_le_iff₀ hX).mp (hbound _ hw)
  have hb := ideal_triple_scale_bounds I J H hI hJ hH
  have hIM : Ideal.absNorm I≤M := by exact_mod_cast (hb.1.trans hsize).trans hM.le
  have hJM : Ideal.absNorm J≤M := by exact_mod_cast (hb.2.1.trans hsize).trans hM.le
  have hHM : Ideal.absNorm H≤M := by exact_mod_cast (hb.2.2.trans hsize).trans hM.le
  exact ⟨hIM,hJM,hHM⟩

end
end GRWTSK.NumberTheory.Ideal.CompactNormSupport
```
