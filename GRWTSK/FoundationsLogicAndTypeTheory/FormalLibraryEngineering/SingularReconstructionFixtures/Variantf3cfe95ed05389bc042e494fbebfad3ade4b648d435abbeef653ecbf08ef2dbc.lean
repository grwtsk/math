import FormalResearch.MathematicalTooling.Coverage.SingularReconstruction
import FormalResearch.MathematicalTooling.Coverage.BethCatalogue

/-!
# Constructed singular reconstruction consumer

The target is the actual dependent sum of the beth_n carriers. One consumer
uses all smaller subsets with singleton local covers, without a catalogue-size
bound. The stronger consumer uses the actual countable nested prefix family,
with small source blocks and constructed covering witnesses. These concrete
instances do not produce the revised-GCH families for arbitrary lam.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

open Cardinal Set

/-- The dependent-sum carrier from the singular support counterexample. -/
abbrev BethTarget := Σ n : ℕ, bethFiber n

def bethSmallFamily : Set (Set BethTarget) :=
  {B | #B < Cardinal.beth Ordinal.omega0}

theorem beth_omega_singular : (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})).IsSingular :=
  Cardinal.IsSingular.of_not_isRegular (Cardinal.aleph0_le_beth _) beth_omega_not_regular

/-- These small-cover witnesses are actual singleton families, not assumed fields. -/
theorem bethSmallFamily_covers_small (B : Set BethTarget)
    (hB : #B < Cardinal.beth Ordinal.omega0) :
    ∃ Q : Set (Set BethTarget), Q ⊆ bethSmallFamily ∧ #Q < ℵ₀ ∧ B ⊆ ⋃₀ Q := by
  refine ⟨{B}, ?_, ?_, ?_⟩
  · intro C hC
    have hCB : C = B := mem_singleton_iff.mp hC
    subst C
    exact hB
  · rw [Cardinal.mk_singleton]
    exact Cardinal.one_lt_aleph0
  · exact subset_sUnion_of_mem (mem_singleton B)

/-- The size-beth_omega target is reconstructed by fewer than the explicitly
enlarged threshold, which remains strictly below beth_omega. -/
theorem beth_target_exact_reconstruction :
    singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ <
        Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∃ (I : Type) (C : I → Set BethTarget),
        #I < singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ℵ₀ ∧
        (∀ i, C i ∈ downwardClosure bethSmallFamily) ∧ (univ : Set BethTarget) = ⋃ i, C i := by
  apply singular_exact_reconstruction bethSmallFamily (Cardinal.beth Ordinal.omega0) ℵ₀
    beth_omega_strongLimit beth_omega_uncountable beth_omega_singular beth_omega_uncountable
    bethSmallFamily_covers_small
  rw [Cardinal.mk_univ, bethFiber_sigma_card]

/-- The constructed nested family is already countable, hence bounded by the
ambient singular cardinal; every one of its blocks is strictly smaller. -/
theorem bethPrefix_family_properties :
    #(Set.range bethPrefix) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∀ C ∈ Set.range bethPrefix, #C < Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) := by
  constructor
  · exact Cardinal.mk_range_le.trans
      (by rw [Cardinal.mk_nat]; exact beth_omega_uncountable.le)
  · rintro C ⟨n, rfl⟩
    rw [bethPrefix_card]
    exact Cardinal.beth_lt_beth.mpr (Ordinal.natCast_lt_omega0 n)

/-- The full countable family supplies a covering witness even for a target
of size beth_omega. The strict threshold is succ aleph_0. -/
theorem bethPrefix_family_covers (A : Set BethAmbient) :
    ∃ Q : Set (Set BethAmbient), Q ⊆ Set.range bethPrefix ∧
      #Q < Order.succ (ℵ₀ : Cardinal.{0}) ∧ A ⊆ ⋃₀ Q := by
  refine ⟨Set.range bethPrefix, Set.Subset.rfl, ?_, ?_⟩
  · exact Cardinal.mk_range_le.trans_lt
      (by rw [Cardinal.mk_nat]; exact Order.lt_succ ℵ₀)
  · intro x _
    exact mem_sUnion.mpr ⟨bethPrefix x.1, Set.mem_range_self x.1,
      by change x.1 ≤ x.1; exact le_rfl⟩

/-- A singular reconstruction with a supplied small catalogue, constructed
local covers, actual source-block restrictions, and proven small fragments. -/
theorem beth_prefix_singular_reconstruction :
    singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0}))
        (Order.succ ℵ₀) < Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      #(Set.range bethPrefix) ≤ Cardinal.beth (Ordinal.omega0 : Ordinal.{0}) ∧
      ∃ (I : Type) (C : I → Set BethAmbient),
        #I < singularCoverThreshold (Cardinal.beth (Ordinal.omega0 : Ordinal.{0}))
          (Order.succ ℵ₀) ∧
        (∀ i, C i ∈ bethNestedCatalogue) ∧
        (∀ i, #(C i) < Cardinal.beth (Ordinal.omega0 : Ordinal.{0})) ∧
        (univ : Set BethAmbient) = ⋃ i, C i := by
  have hκ : Order.succ (ℵ₀ : Cardinal.{0}) < Cardinal.beth Ordinal.omega0 :=
    beth_omega_strongLimit.isSuccLimit.succ_lt beth_omega_uncountable
  have htarget : #(univ : Set BethAmbient) ≤ Cardinal.beth Ordinal.omega0 := by
    rw [Cardinal.mk_univ, bethFiber_sigma_card]
  obtain ⟨hthreshold, I, C, hI, hC, hrecover⟩ :=
    singular_exact_reconstruction (Set.range bethPrefix) (Cardinal.beth Ordinal.omega0)
      (Order.succ ℵ₀) beth_omega_strongLimit beth_omega_uncountable beth_omega_singular hκ
      (fun B _ ↦ bethPrefix_family_covers B) univ htarget
  refine ⟨hthreshold, bethPrefix_family_properties.1, I, C, hI, hC, ?_, hrecover⟩
  intro i
  exact downward_member_small (Set.range bethPrefix) (Cardinal.beth Ordinal.omega0)
    bethPrefix_family_properties.2 (C i) (hC i)

end FormalResearch.MathematicalTooling.Coverage
