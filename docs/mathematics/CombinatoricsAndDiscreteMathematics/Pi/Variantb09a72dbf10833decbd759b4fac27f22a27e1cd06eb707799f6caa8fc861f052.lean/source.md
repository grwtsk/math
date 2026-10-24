# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c82dcc18b1cb786cf9355daaff9b4b79e8f90ea` · SHA-256 `e28fef31b3faaf0ed666f32f906aa6aa44f5b637368f27f28ba54ae27d7ec6de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PiEmpty.Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PiEmpty.Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Multiset/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Multiset.Nodup


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PiEmpty.Varianta86db8617c35b8bc214ec587f96b10013116369474536148f4a5f528dd4fb1f9

#align_import data.multiset.pi from "leanprover-community/mathlib"@"b2c89893177f66a48daf993b7ba5ef7cddeff8c9"

/-!
# The cartesian product of multisets
-/


namespace Multiset

section Pi

variable {α : Type*}

open Function

/-- Given `δ : α → Type*`, `Pi.empty δ` is the trivial dependent function out of the empty
multiset. -/
def Pi.empty (δ : α → Sort*) : ∀ a ∈ (0 : Multiset α), δ a :=
  fun.
#align multiset.pi.empty Multiset.Pi.empty

universe u v
variable [DecidableEq α] {β : α → Type u} {δ : α → Sort v}

/-- Given `δ : α → Type*`, a multiset `m` and a term `a`, as well as a term `b : δ a` and a
function `f` such that `f a' : δ a'` for all `a'` in `m`, `Pi.cons m a b f` is a function `g` such
that `g a'' : δ a''` for all `a''` in `a ::ₘ m`. -/
def Pi.cons (m : Multiset α) (a : α) (b : δ a) (f : ∀ a ∈ m, δ a) : ∀ a' ∈ a ::ₘ m, δ a' :=
  fun a' ha' => if h : a' = a then Eq.ndrec b h.symm else f a' <| (mem_cons.1 ha').resolve_left h
#align multiset.pi.cons Multiset.Pi.cons

theorem Pi.cons_same {m : Multiset α} {a : α} {b : δ a} {f : ∀ a ∈ m, δ a} (h : a ∈ a ::ₘ m) :
    Pi.cons m a b f a h = b :=
  dif_pos rfl
#align multiset.pi.cons_same Multiset.Pi.cons_same

theorem Pi.cons_ne {m : Multiset α} {a a' : α} {b : δ a} {f : ∀ a ∈ m, δ a} (h' : a' ∈ a ::ₘ m)
    (h : a' ≠ a) : Pi.cons m a b f a' h' = f a' ((mem_cons.1 h').resolve_left h) :=
  dif_neg h
#align multiset.pi.cons_ne Multiset.Pi.cons_ne

theorem Pi.cons_swap {a a' : α} {b : δ a} {b' : δ a'} {m : Multiset α} {f : ∀ a ∈ m, δ a}
    (h : a ≠ a') : HEq (Pi.cons (a' ::ₘ m) a b (Pi.cons m a' b' f))
      (Pi.cons (a ::ₘ m) a' b' (Pi.cons m a b f)) := by
  apply hfunext rfl
  simp only [heq_iff_eq]
  rintro a'' _ rfl
  refine' hfunext (by rw [Multiset.cons_swap]) fun ha₁ ha₂ _ => _
  rcases ne_or_eq a'' a with (h₁ | rfl)
  rcases eq_or_ne a'' a' with (rfl | h₂)
  all_goals simp [*, Pi.cons_same, Pi.cons_ne]
#align multiset.pi.cons_swap Multiset.Pi.cons_swap

@[simp, nolint simpNF] --Porting note: false positive, this lemma can prove itself
theorem pi.cons_eta {m : Multiset α} {a : α} (f : ∀ a' ∈ a ::ₘ m, δ a') :
    (Pi.cons m a (f _ (mem_cons_self _ _)) fun a' ha' => f a' (mem_cons_of_mem ha')) = f := by
  ext a' h'
  by_cases h : a' = a
  · subst h
    rw [Pi.cons_same]
  · rw [Pi.cons_ne _ h]
#align multiset.pi.cons_eta Multiset.pi.cons_eta

theorem Pi.cons_injective {a : α} {b : δ a} {s : Multiset α} (hs : a ∉ s) :
    Function.Injective (Pi.cons s a b) := fun f₁ f₂ eq =>
  funext fun a' =>
    funext fun h' =>
      have ne : a ≠ a' := fun h => hs <| h.symm ▸ h'
      have : a' ∈ a ::ₘ s := mem_cons_of_mem h'
      calc
        f₁ a' h' = Pi.cons s a b f₁ a' this := by rw [Pi.cons_ne this ne.symm]
        _ = Pi.cons s a b f₂ a' this := by rw [eq]
        _ = f₂ a' h' := by rw [Pi.cons_ne this ne.symm]
#align multiset.pi.cons_injective Multiset.Pi.cons_injective

/-- `pi m t` constructs the Cartesian product over `t` indexed by `m`. -/
def pi (m : Multiset α) (t : ∀ a, Multiset (β a)) : Multiset (∀ a ∈ m, β a) :=
  m.recOn {Pi.empty β}
    (fun a m (p : Multiset (∀ a ∈ m, β a)) => (t a).bind fun b => p.map <| Pi.cons m a b)
    (by
      intro a a' m n
      by_cases eq : a = a'
      · subst eq; rfl
      · simp [map_bind, bind_bind (t a') (t a)]
        apply bind_hcongr
        · rw [cons_swap a a']
        intro b _
        apply bind_hcongr
        · rw [cons_swap a a']
        intro b' _
        apply map_hcongr
        · rw [cons_swap a a']
        intro f _
        exact Pi.cons_swap eq)
#align multiset.pi Multiset.pi

@[simp]
theorem pi_zero (t : ∀ a, Multiset (β a)) : pi 0 t = {Pi.empty β} :=
  rfl
#align multiset.pi_zero Multiset.pi_zero

@[simp]
theorem pi_cons (m : Multiset α) (t : ∀ a, Multiset (β a)) (a : α) :
    pi (a ::ₘ m) t = (t a).bind fun b => (pi m t).map <| Pi.cons m a b :=
  recOn_cons a m
#align multiset.pi_cons Multiset.pi_cons

theorem card_pi (m : Multiset α) (t : ∀ a, Multiset (β a)) :
    card (pi m t) = prod (m.map fun a => card (t a)) :=
  Multiset.induction_on m (by simp) (by simp (config := { contextual := true }) [mul_comm])
#align multiset.card_pi Multiset.card_pi

protected theorem Nodup.pi {s : Multiset α} {t : ∀ a, Multiset (β a)} :
    Nodup s → (∀ a ∈ s, Nodup (t a)) → Nodup (pi s t) :=
  Multiset.induction_on s (fun _ _ => nodup_singleton _)
    (by
      intro a s ih hs ht
      have has : a ∉ s := by simp at hs; exact hs.1
      have hs : Nodup s := by simp at hs; exact hs.2
      simp
      refine'
        ⟨fun b _ => ((ih hs) fun a' h' => ht a' <| mem_cons_of_mem h').map (Pi.cons_injective has),
          _⟩
      refine' (ht a <| mem_cons_self _ _).pairwise _
      exact fun b₁ _ b₂ _ neb =>
        disjoint_map_map.2 fun f _ g _ eq =>
          have : Pi.cons s a b₁ f a (mem_cons_self _ _) = Pi.cons s a b₂ g a (mem_cons_self _ _) :=
            by rw [eq]
          neb <| show b₁ = b₂ by rwa [Pi.cons_same, Pi.cons_same] at this)
#align multiset.nodup.pi Multiset.Nodup.pi

theorem mem_pi (m : Multiset α) (t : ∀ a, Multiset (β a)) :
    ∀ f : ∀ a ∈ m, β a, f ∈ pi m t ↔ ∀ (a) (h : a ∈ m), f a h ∈ t a := by
  intro f
  induction' m using Multiset.induction_on with a m ih
  · have : f = Pi.empty β := funext (fun _ => funext fun h => (not_mem_zero _ h).elim)
    simp only [this, pi_zero, mem_singleton, true_iff]
    intro _ h; exact (not_mem_zero _ h).elim
  simp_rw [pi_cons, mem_bind, mem_map, ih]
  constructor
  · rintro ⟨b, hb, f', hf', rfl⟩ a' ha'
    by_cases h : a' = a
    · subst h
      rwa [Pi.cons_same]
    · rw [Pi.cons_ne _ h]
      apply hf'
  · intro hf
    refine' ⟨_, hf a (mem_cons_self _ _), _, fun a ha => hf a (mem_cons_of_mem ha), _⟩
    rw [pi.cons_eta]
#align multiset.mem_pi Multiset.mem_pi

end Pi

end Multiset
```
