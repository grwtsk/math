# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monotone.Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c48630f7e14b27a39bde7c69ec6358d340cbd7a` · SHA-256 `324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Data.Fin.VecNotation

#align_import data.fin.tuple.monotone from "leanprover-community/mathlib"@"e3d9ab8faa9dea8f78155c6c27d62a621f4c152d"

/-!
# Monotone finite sequences

In this file we prove `simp` lemmas that allow to simplify propositions like `Monotone ![a, b, c]`.
-/


open Set Fin Matrix Function

variable {α : Type*}

theorem liftFun_vecCons {n : ℕ} (r : α → α → Prop) [IsTrans α r] {f : Fin (n + 1) → α} {a : α} :
    ((· < ·) ⇒ r) (vecCons a f) (vecCons a f) ↔ r a (f 0) ∧ ((· < ·) ⇒ r) f f := by
  simp only [liftFun_iff_succ r, forall_fin_succ, cons_val_succ, cons_val_zero, ← succ_castSucc,
    castSucc_zero]
#align lift_fun_vec_cons liftFun_vecCons

variable [Preorder α] {n : ℕ} {f : Fin (n + 1) → α} {a : α}

@[simp]
theorem strictMono_vecCons : StrictMono (vecCons a f) ↔ a < f 0 ∧ StrictMono f :=
  liftFun_vecCons (· < ·)
#align strict_mono_vec_cons strictMono_vecCons

@[simp]
theorem monotone_vecCons : Monotone (vecCons a f) ↔ a ≤ f 0 ∧ Monotone f := by
  simpa only [monotone_iff_forall_lt] using @liftFun_vecCons α n (· ≤ ·) _ f a
#align monotone_vec_cons monotone_vecCons

--Porting note: new lemma, in Lean3 would be proven by `Subsingleton.monotone`
@[simp]
theorem monotone_vecEmpty : Monotone (vecCons a vecEmpty)
  | ⟨0, _⟩, ⟨0, _⟩, _ => le_refl _

--Porting note: new lemma, in Lean3 would be proven by `Subsingleton.strictMono`
@[simp]
theorem strictMono_vecEmpty : StrictMono (vecCons a vecEmpty)
  | ⟨0, _⟩, ⟨0, _⟩, h => (irrefl _ h).elim

@[simp]
theorem strictAnti_vecCons : StrictAnti (vecCons a f) ↔ f 0 < a ∧ StrictAnti f :=
  liftFun_vecCons (· > ·)
#align strict_anti_vec_cons strictAnti_vecCons

@[simp]
theorem antitone_vecCons : Antitone (vecCons a f) ↔ f 0 ≤ a ∧ Antitone f :=
  @monotone_vecCons αᵒᵈ _ _ _ _
#align antitone_vec_cons antitone_vecCons

--Porting note: new lemma, in Lean3 would be proven by `Subsingleton.antitone`
@[simp]
theorem antitone_vecEmpty : Antitone (vecCons a vecEmpty)
  | ⟨0, _⟩, ⟨0, _⟩, _ => le_refl _

--Porting note: new lemma, in Lean3 would be proven by `Subsingleton.strictAnti`
@[simp]
theorem strictAnti_vecEmpty : StrictAnti (vecCons a vecEmpty)
  | ⟨0, _⟩, ⟨0, _⟩, h => (irrefl _ h).elim

theorem StrictMono.vecCons (hf : StrictMono f) (ha : a < f 0) : StrictMono (vecCons a f) :=
  strictMono_vecCons.2 ⟨ha, hf⟩
#align strict_mono.vec_cons StrictMono.vecCons

theorem StrictAnti.vecCons (hf : StrictAnti f) (ha : f 0 < a) : StrictAnti (vecCons a f) :=
  strictAnti_vecCons.2 ⟨ha, hf⟩
#align strict_anti.vec_cons StrictAnti.vecCons

theorem Monotone.vecCons (hf : Monotone f) (ha : a ≤ f 0) : Monotone (vecCons a f) :=
  monotone_vecCons.2 ⟨ha, hf⟩
#align monotone.vec_cons Monotone.vecCons

theorem Antitone.vecCons (hf : Antitone f) (ha : f 0 ≤ a) : Antitone (vecCons a f) :=
  antitone_vecCons.2 ⟨ha, hf⟩
#align antitone.vec_cons Antitone.vecCons

example : Monotone ![1, 2, 2, 3] := by simp
```
