# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DivisorRepresentation.Variant44b0ffdb3a218841160957e93d2f01de6821a4bcc4d1e1b53c1bbfd0c4247c99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e91e3c787e492f46bd7bed83db9675c2c6b05197` · SHA-256 `cca8e35d1dddfe6b67a49256da9a52fe239188b1728337159df4b04cb8f07812`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Divisor.Variant78bb66bc5fbb1cdc2e23db2c35672129e53fb0024cce448a8332f86d09f287ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78bb66bc5fbb1cdc2e23db2c35672129e53fb0024cce448a8332f86d09f287ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Divisor.Variant78bb66bc5fbb1cdc2e23db2c35672129e53fb0024cce448a8332f86d09f287ad","mathematical_subject":"Algebra.OrderTheory","original_sha256":"78bb66bc5fbb1cdc2e23db2c35672129e53fb0024cce448a8332f86d09f287ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/FiniteLatticeArithmetic/DivisorRepresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorization.Divisors
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.GroupTheory.SpecificGroups.Cyclic
import Mathlib.GroupTheory.QuotientGroup.Defs
import Mathlib.Data.ZMod.Basic

/-!
# Positive divisor lattices and cyclic principal colors

For a nonzero modulus the order is divisibility, rather than the usual order on
natural numbers. The valuation representation retains the exact prime-power map.
The cyclic representation uses the additive group signature of `ZMod M`.

Originating direction and theorem selection: grwtsk contributors.
Construction and Lean proof development: Codex, October 2026.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Divisor.Variant78bb66bc5fbb1cdc2e23db2c35672129e53fb0024cce448a8332f86d09f287ad

namespace FormalResearch.FiniteLatticeArithmetic

/-- Positive divisors of the declared, nonzero modulus. -/
structure Divisor (M : ℕ) where
  /-- The natural-number divisor coordinate. -/
  val : ℕ
  property : val ∣ M

namespace Divisor

variable {M : ℕ} [NeZero M]

instance (M : ℕ) : CoeOut (Divisor M) ℕ := ⟨Divisor.val⟩

omit [NeZero M] in
@[ext] theorem ext {d e : Divisor M} (h : (d : ℕ) = e) : d = e := by
  cases d
  cases e
  cases h
  rfl

theorem ne_zero (d : Divisor M) : (d : ℕ) ≠ 0 := ne_zero_of_dvd_ne_zero (NeZero.ne M) d.property

theorem pos (d : Divisor M) : 0 < (d : ℕ) := Nat.pos_of_ne_zero d.ne_zero

instance : PartialOrder (Divisor M) where
  le d e := (d : ℕ) ∣ (e : ℕ)
  le_refl _ := dvd_refl _
  le_trans _ _ _ := dvd_trans
  le_antisymm _ _ hde hed := ext (Nat.dvd_antisymm hde hed)

omit [NeZero M] in
@[simp] theorem le_iff (d e : Divisor M) : d ≤ e ↔ (d : ℕ) ∣ (e : ℕ) := Iff.rfl

instance : Lattice (Divisor M) where
  sup d e := ⟨Nat.lcm d e, Nat.lcm_dvd d.property e.property⟩
  le_sup_left _ _ := Nat.dvd_lcm_left _ _
  le_sup_right _ _ := Nat.dvd_lcm_right _ _
  sup_le _ _ _ hde hef := Nat.lcm_dvd hde hef
  inf d e := ⟨Nat.gcd d e, (Nat.gcd_dvd_left _ _).trans d.property⟩
  inf_le_left _ _ := Nat.gcd_dvd_left _ _
  inf_le_right _ _ := Nat.gcd_dvd_right _ _
  le_inf _ _ _ hde hef := Nat.dvd_gcd hde hef

instance : BoundedOrder (Divisor M) where
  bot := ⟨1, one_dvd _⟩
  bot_le _ := one_dvd _
  top := ⟨M, dvd_refl _⟩
  le_top d := d.property

omit [NeZero M] in
@[simp] theorem coe_bot : ((⊥ : Divisor M) : ℕ) = 1 := rfl
omit [NeZero M] in
@[simp] theorem coe_top : ((⊤ : Divisor M) : ℕ) = M := rfl
omit [NeZero M] in
@[simp] theorem coe_inf (d e : Divisor M) : ((d ⊓ e : Divisor M) : ℕ) = Nat.gcd d e := rfl
omit [NeZero M] in
@[simp] theorem coe_sup (d e : Divisor M) : ((d ⊔ e : Divisor M) : ℕ) = Nat.lcm d e := rfl

noncomputable instance : Fintype (Divisor M) :=
  Fintype.ofEquiv {d // d ∈ M.divisors}
    { toFun := fun d => ⟨d, Nat.dvd_of_mem_divisors d.property⟩
      invFun := fun d => ⟨d, Nat.mem_divisors.mpr ⟨d.property, NeZero.ne M⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }

/-- Exact prime valuations, bounded by the modulus valuation, as an order isomorphism. -/
noncomputable def valuationOrderIso : Divisor M ≃o Set.Iic M.factorization where
  toFun d := ⟨(d : ℕ).factorization,
    (Nat.factorization_le_iff_dvd d.ne_zero (NeZero.ne M)).mpr d.property⟩
  invFun f := ⟨f.val.prod (· ^ ·), Nat.prod_pow_dvd_of_le_factorization f.property⟩
  left_inv d := ext (Nat.prod_factorization_pow_eq_self d.ne_zero)
  right_inv f := Subtype.ext (Nat.factorization_prod_pow_eq_self_of_le_factorization f.property)
  map_rel_iff' := fun {d e} => Nat.factorization_le_iff_dvd d.ne_zero e.ne_zero

@[simp] theorem valuationOrderIso_apply (d : Divisor M) :
    (valuationOrderIso d).val = (d : ℕ).factorization := rfl

/-- Reconstruction is exact; a divisor coordinate is not a lossy probe pattern. -/
theorem valuation_reconstruct (d : Divisor M) :
    (valuationOrderIso d).val.prod (· ^ ·) = (d : ℕ) :=
  Nat.prod_factorization_pow_eq_self d.ne_zero

/-- The number of divisor coordinates is the product of the finite chain lengths. -/
theorem card_eq_product :
    Fintype.card (Divisor M) = ∏ p ∈ M.factorization.support, (M.factorization p + 1) := by
  rw [Fintype.card_congr valuationOrderIso.toEquiv]
  classical
  have h := Finsupp.card_Iic M.factorization
  simpa using h

/-- The explicit product of finite prime-valuation chains. -/
abbrev ValuationChains (M : ℕ) := ∀ p : M.factorization.support, Set.Iic (M.factorization p)

/-- Extend a chain coordinate by zero outside the actual prime support. -/
noncomputable def chainMap (v : ValuationChains M) : ℕ →₀ ℕ := by
  classical
  exact Finsupp.onFinset M.factorization.support
    (fun p => if hp : p ∈ M.factorization.support then (v ⟨p, hp⟩).val else 0)
    (fun p hp => by by_contra hn; simp only [dif_neg hn] at hp; exact hp rfl)

omit [NeZero M] in
@[simp] theorem chainMap_apply (v : ValuationChains M) (p : M.factorization.support) :
    chainMap v p = (v p).val := by
  classical
  simp only [chainMap, Finsupp.onFinset_apply, dif_pos p.property]

/-- Bounded valuations are equivalent to the explicit finite product of chains. -/
noncomputable def boundedValuationChainOrderIso :
    Set.Iic M.factorization ≃o ValuationChains M where
  toFun f p := ⟨f.val p, f.property p⟩
  invFun v := ⟨chainMap v, by
    intro p
    classical
    by_cases hp : p ∈ M.factorization.support
    · simpa only [chainMap, Finsupp.onFinset_apply, dif_pos hp, Set.mem_Iic] using
        (v ⟨p, hp⟩).property
    · simp only [chainMap, Finsupp.onFinset_apply, dif_neg hp, Nat.zero_le]⟩
  left_inv f := by
    apply Subtype.ext
    ext p
    classical
    by_cases hp : p ∈ M.factorization.support
    · simp only [chainMap, Finsupp.onFinset_apply, dif_pos hp]
    · have hzero : M.factorization p = 0 := Finsupp.notMem_support_iff.mp hp
      have hfzero : f.val p = 0 := Nat.eq_zero_of_le_zero (hzero ▸ f.property p)
      simp only [chainMap, Finsupp.onFinset_apply, dif_neg hp, hfzero]
  right_inv v := by
    funext p
    apply Subtype.ext
    exact chainMap_apply v p
  map_rel_iff' := by
    intro f g
    constructor
    · intro h p
      classical
      by_cases hp : p ∈ M.factorization.support
      · exact h ⟨p, hp⟩
      · have hzero : M.factorization p = 0 := Finsupp.notMem_support_iff.mp hp
        have hfzero : f.val p = 0 := Nat.eq_zero_of_le_zero (hzero ▸ f.property p)
        simp [hfzero]
    · intro h p
      exact h p

/-- Full order isomorphism from positive divisors to a product of finite chains. -/
noncomputable def productOfChainsOrderIso : Divisor M ≃o ValuationChains M :=
  valuationOrderIso.trans boundedValuationChainOrderIso

end Divisor

end FormalResearch.FiniteLatticeArithmetic
```
