# Complete source: GRWTSK.Topology.GeneralTopology.Monoid.Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `652eb661b8e7c0f2e110bebb030dd2c1af10b2bb` · SHA-256 `27f2928d851b2a9d43ee61457c877472f8ce04ed5e0dbc8568a8a626017dd57a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoOneEventuallyLEMulAtTop.Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoOneEventuallyLEMulAtTop.Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Filter/AtTopBot/Monoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Monoid.OrderDual
import Mathlib.Algebra.Order.Monoid.Unbundled.Pow
import Mathlib.Order.Filter.AtTopBot.Tendsto

/-!
# Convergence to ±infinity in ordered commutative monoids
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoOneEventuallyLEMulAtTop.Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed

variable {α M : Type*}

namespace Filter

section OrderedCommMonoid

variable [CommMonoid M] [PartialOrder M] [IsOrderedMonoid M] {l : Filter α} {f g : α → M}

@[to_additive]
theorem Tendsto.one_eventuallyLE_mul_atTop (hf : 1 ≤ᶠ[l] f) (hg : Tendsto g l atTop) :
    Tendsto (fun x => f x * g x) l atTop :=
  tendsto_atTop_mono' l (hf.mono fun _ ↦ le_mul_of_one_le_left') hg

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_add_nonneg_left' := Tendsto.zero_eventuallyLE_add_atTop

@[to_additive]
theorem Tendsto.eventuallyLE_one_mul_atBot (hf : f ≤ᶠ[l] 1) (hg : Tendsto g l atBot) :
    Tendsto (fun x => f x * g x) l atBot :=
  hg.one_eventuallyLE_mul_atTop (M := Mᵒᵈ) hf

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_add_nonpos_left' := Tendsto.eventuallyLE_zero_add_atBot

@[to_additive]
theorem Tendsto.one_le_mul_atTop (hf : ∀ x, 1 ≤ f x) (hg : Tendsto g l atTop) :
    Tendsto (fun x => f x * g x) l atTop :=
  hg.one_eventuallyLE_mul_atTop (.of_forall hf)

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_add_nonneg_left := Tendsto.nonneg_add_atTop

@[to_additive]
theorem Tendsto.le_one_mul_atBot (hf : ∀ x, f x ≤ 1) (hg : Tendsto g l atBot) :
    Tendsto (fun x => f x * g x) l atBot :=
  hg.eventuallyLE_one_mul_atBot (.of_forall hf)

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_add_nonpos_left := Tendsto.nonpos_add_atBot

@[to_additive]
theorem Tendsto.atTop_mul_one_eventuallyLE (hf : Tendsto f l atTop) (hg : 1 ≤ᶠ[l] g) :
    Tendsto (fun x => f x * g x) l atTop :=
  tendsto_atTop_mono' l (hg.mono fun _ => le_mul_of_one_le_right') hf

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_add_nonneg_right' := Tendsto.atTop_add_zero_eventuallyLE

@[to_additive]
theorem Tendsto.atBot_mul_eventuallyLE_one (hf : Tendsto f l atBot) (hg : g ≤ᶠ[l] 1) :
    Tendsto (fun x => f x * g x) l atBot :=
  hf.atTop_mul_one_eventuallyLE (M := Mᵒᵈ) hg

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_add_nonpos_right' := Tendsto.atBot_add_eventuallyLE_zero

@[to_additive]
theorem Tendsto.atTop_mul_one_le (hf : Tendsto f l atTop) (hg : ∀ x, 1 ≤ g x) :
    Tendsto (fun x => f x * g x) l atTop :=
  hf.atTop_mul_one_eventuallyLE <| .of_forall hg

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_add_nonneg_right := Tendsto.atTop_add_nonneg

@[to_additive]
theorem Tendsto.atBot_mul_le_one (hf : Tendsto f l atBot) (hg : ∀ x, g x ≤ 1) :
    Tendsto (fun x => f x * g x) l atBot :=
  hf.atBot_mul_eventuallyLE_one (.of_forall hg)

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_add_nonpos_right := Tendsto.atBot_add_nonpos

/-- In an ordered multiplicative monoid, if `f` and `g` tend to `+∞`, then so does `f * g`.

Earlier, this name was used for a similar lemma about semirings,
which is now called `Filter.Tendsto.atTop_mul_atTop₀`. -/
@[to_additive]
theorem Tendsto.atTop_mul_atTop (hf : Tendsto f l atTop) (hg : Tendsto g l atTop) :
    Tendsto (fun x => f x * g x) l atTop :=
  hf.atTop_mul_one_eventuallyLE <| hg.eventually_ge_atTop 1

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_add := Tendsto.atTop_add_atTop

/-- In an ordered multiplicative monoid, if `f` and `g` tend to `-∞`, then so does `f * g`.

Earlier, this name was used for a similar lemma about rings (with conclusion `f * g → +∞`),
which is now called `Filter.Tendsto.atBot_mul_atBot₀`. -/
@[to_additive]
theorem Tendsto.atBot_mul_atBot (hf : Tendsto f l atBot) (hg : Tendsto g l atBot) :
    Tendsto (fun x => f x * g x) l atBot :=
  hf.atTop_mul_atTop (M := Mᵒᵈ) hg

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_add := Tendsto.atBot_add_atBot

@[to_additive nsmul_atTop]
theorem Tendsto.atTop_pow (hf : Tendsto f l atTop) {n : ℕ} (hn : 0 < n) :
    Tendsto (fun x => f x ^ n) l atTop := by
  refine tendsto_atTop_mono' _ ((hf.eventually_ge_atTop 1).mono fun x hx ↦ ?_) hf
  simpa only [pow_one] using pow_le_pow_right' hx hn

@[to_additive nsmul_atBot]
theorem Tendsto.atBot_pow (hf : Tendsto f l atBot) {n : ℕ} (hn : 0 < n) :
    Tendsto (fun x => f x ^ n) l atBot :=
  Tendsto.atTop_pow (M := Mᵒᵈ) hf hn

end OrderedCommMonoid

section OrderedCancelCommMonoid

variable [CommMonoid M] [PartialOrder M] [IsOrderedCancelMonoid M] {l : Filter α} {f g : α → M}

/-- In an ordered cancellative multiplicative monoid, if `C * f x → +∞`, then `f x → +∞`.

Earlier, this name was used for a similar lemma about ordered rings,
which is now called `Filter.Tendsto.atTop_of_const_mul₀`. -/
@[to_additive]
theorem Tendsto.atTop_of_const_mul (C : M) (hf : Tendsto (C * f ·) l atTop) : Tendsto f l atTop :=
  tendsto_atTop.2 fun b ↦ (tendsto_atTop.1 hf (C * b)).mono fun _ ↦ le_of_mul_le_mul_left'

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_of_add_const_left := Tendsto.atTop_of_const_add

@[to_additive]
theorem Tendsto.atBot_of_const_mul (C : M) (hf : Tendsto (C * f ·) l atBot) : Tendsto f l atBot :=
  hf.atTop_of_const_mul (M := Mᵒᵈ)

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_of_add_const_left := Tendsto.atBot_of_const_add

/-- In an ordered cancellative multiplicative monoid, if `f x * C → +∞`, then `f x → +∞`.

Earlier, this name was used for a similar lemma about ordered rings,
which is now called `Filter.Tendsto.atTop_of_mul_const₀`. -/
@[to_additive]
theorem Tendsto.atTop_of_mul_const (C : M) (hf : Tendsto (f · * C) l atTop) : Tendsto f l atTop :=
  tendsto_atTop.2 fun b => (tendsto_atTop.1 hf (b * C)).mono fun _ => le_of_mul_le_mul_right'

@[deprecated (since := "2025-02-13")]
alias tendsto_atTop_of_add_const_right := Tendsto.atTop_of_add_const

@[to_additive]
theorem Tendsto.atBot_of_mul_const (C : M) (hf : Tendsto (f · * C) l atBot) : Tendsto f l atBot :=
  hf.atTop_of_mul_const (M := Mᵒᵈ)

@[deprecated (since := "2025-02-13")]
alias tendsto_atBot_of_add_const_right := Tendsto.atBot_of_add_const

/-- If `f` is eventually bounded from above along `l` and `f * g` tends to `+∞`,
then `g` tends to `+∞`. -/
@[to_additive "If `f` is eventually bounded from above along `l` and `f + g` tends to `+∞`,
then `g` tends to `+∞`."]
theorem Tendsto.atTop_of_isBoundedUnder_le_mul (hf : IsBoundedUnder (· ≤ ·) l f)
    (hfg : Tendsto (fun x => f x * g x) l atTop) : Tendsto g l atTop := by
  obtain ⟨C, hC⟩ := hf
  refine .atTop_of_const_mul C <| tendsto_atTop_mono' l ?_ hfg
  exact (eventually_map.mp hC).mono fun _ ↦ (mul_le_mul_right' · _)

@[to_additive]
theorem Tendsto.atBot_of_isBoundedUnder_ge_mul (hf : IsBoundedUnder (· ≥ ·) l f)
    (h : Tendsto (fun x => f x * g x) l atBot) : Tendsto g l atBot :=
  h.atTop_of_isBoundedUnder_le_mul (M := Mᵒᵈ) hf

@[to_additive]
theorem Tendsto.atTop_of_le_const_mul (hf : ∃ C, ∀ x, f x ≤ C)
    (hfg : Tendsto (fun x ↦ f x * g x) l atTop) : Tendsto g l atTop :=
  hfg.atTop_of_isBoundedUnder_le_mul <| hf.imp fun _C hC ↦ eventually_map.mpr <| .of_forall hC

@[to_additive]
theorem Tendsto.atBot_of_const_le_mul (hf : ∃ C, ∀ x, C ≤ f x)
    (hfg : Tendsto (fun x ↦ f x * g x) l atBot) : Tendsto g l atBot :=
  Tendsto.atTop_of_le_const_mul (M := Mᵒᵈ) hf hfg

@[to_additive]
theorem Tendsto.atTop_of_mul_isBoundedUnder_le (hg : IsBoundedUnder (· ≤ ·) l g)
    (h : Tendsto (fun x => f x * g x) l atTop) : Tendsto f l atTop := by
  obtain ⟨C, hC⟩ := hg
  refine .atTop_of_mul_const C <| tendsto_atTop_mono' l ?_ h
  exact (eventually_map.mp hC).mono fun _ ↦ (mul_le_mul_left' · _)

@[to_additive]
theorem Tendsto.atBot_of_mul_isBoundedUnder_ge (hg : IsBoundedUnder (· ≥ ·) l g)
    (h : Tendsto (fun x => f x * g x) l atBot) : Tendsto f l atBot :=
  h.atTop_of_mul_isBoundedUnder_le (M := Mᵒᵈ) hg

@[to_additive]
theorem Tendsto.atTop_of_mul_le_const (hg : ∃ C, ∀ x, g x ≤ C)
    (hfg : Tendsto (fun x ↦ f x * g x) l atTop) : Tendsto f l atTop :=
  hfg.atTop_of_mul_isBoundedUnder_le <| hg.imp fun _C hC ↦ eventually_map.mpr <| .of_forall hC

@[to_additive]
theorem Tendsto.atBot_of_mul_const_le (hg : ∃ C, ∀ x, C ≤ g x)
    (hfg : Tendsto (fun x ↦ f x * g x) l atBot) : Tendsto f l atBot :=
  Tendsto.atTop_of_mul_le_const (M := Mᵒᵈ) hg hfg

end OrderedCancelCommMonoid

section OrderedCancelAddCommMonoid

variable [AddCommMonoid M] [PartialOrder M] [IsOrderedCancelAddMonoid M]
  {l : Filter α} {f g : α → M}

@[deprecated Tendsto.atTop_of_isBoundedUnder_le_add (since := "2025-02-13")]
theorem tendsto_atTop_of_add_bdd_above_left' (C) (hC : ∀ᶠ x in l, f x ≤ C)
    (h : Tendsto (fun x => f x + g x) l atTop) : Tendsto g l atTop :=
  .atTop_of_isBoundedUnder_le_add ⟨C, hC⟩ h

@[deprecated Tendsto.atBot_of_isBoundedUnder_ge_add (since := "2025-02-13")]
theorem tendsto_atBot_of_add_bdd_below_left' (C) (hC : ∀ᶠ x in l, C ≤ f x)
    (h : Tendsto (fun x => f x + g x) l atBot) : Tendsto g l atBot :=
  .atBot_of_isBoundedUnder_ge_add ⟨C, hC⟩ h

@[deprecated Tendsto.atTop_of_le_const_add (since := "2025-02-13")]
theorem tendsto_atTop_of_add_bdd_above_left (C) (hC : ∀ x, f x ≤ C) :
    Tendsto (fun x => f x + g x) l atTop → Tendsto g l atTop :=
  .atTop_of_le_const_add ⟨C, hC⟩

@[deprecated Tendsto.atBot_of_const_le_add (since := "2025-02-13")]
theorem tendsto_atBot_of_add_bdd_below_left (C) (hC : ∀ x, C ≤ f x) :
    Tendsto (fun x => f x + g x) l atBot → Tendsto g l atBot :=
  .atBot_of_const_le_add ⟨C, hC⟩

@[deprecated Tendsto.atTop_of_add_isBoundedUnder_le (since := "2025-02-13")]
theorem tendsto_atTop_of_add_bdd_above_right' (C) (hC : ∀ᶠ x in l, g x ≤ C)
    (h : Tendsto (fun x => f x + g x) l atTop) : Tendsto f l atTop :=
  h.atTop_of_add_isBoundedUnder_le ⟨C, hC⟩

@[deprecated Tendsto.atBot_of_add_isBoundedUnder_ge (since := "2025-02-13")]
theorem tendsto_atBot_of_add_bdd_below_right' (C) (hC : ∀ᶠ x in l, C ≤ g x)
    (h : Tendsto (fun x => f x + g x) l atBot) : Tendsto f l atBot :=
  h.atBot_of_add_isBoundedUnder_ge ⟨C, hC⟩

@[deprecated Tendsto.atTop_of_add_le_const (since := "2025-02-13")]
theorem tendsto_atTop_of_add_bdd_above_right (C) (hC : ∀ x, g x ≤ C) :
    Tendsto (fun x => f x + g x) l atTop → Tendsto f l atTop :=
  .atTop_of_add_le_const ⟨C, hC⟩

@[deprecated Tendsto.atBot_of_add_const_le (since := "2025-02-13")]
theorem tendsto_atBot_of_add_bdd_below_right (C) (hC : ∀ x, C ≤ g x) :
    Tendsto (fun x => f x + g x) l atBot → Tendsto f l atBot :=
  .atBot_of_add_const_le ⟨C, hC⟩

end OrderedCancelAddCommMonoid

end Filter
```
