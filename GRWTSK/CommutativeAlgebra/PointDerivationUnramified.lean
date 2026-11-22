/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.RingTheory.Nakayama
import Mathlib.RingTheory.Unramified.Basic

/-!
# Detecting Kähler differentials through residue-valued point derivations

An injective map from each maximal residue ring into the point ring turns
vanishing of all point derivations into vanishing of every maximal fiber of
the actual Kähler differential module. Finite generation then gives formal
unramifiedness by Nakayama. The point ring need only be commutative; the
field used for dual separation is the maximal residue field itself.
-/

namespace GRWTSK.CommutativeAlgebra.PointDerivationUnramified

/-- A finite module with zero fiber at every maximal ideal is zero.
The hypothesis is stated directly as membership in each maximal-ideal multiple. -/
theorem subsingleton_of_maximal_smul_top
    (R M : Type*) [CommRing R] [AddCommGroup M] [Module R M] [Module.Finite R M]
    (h : ∀ m : Ideal R, m.IsMaximal → (⊤ : Submodule R M) ≤ m • ⊤) :
    Subsingleton M := by
  apply (Module.annihilator_eq_top_iff (R := R) (M := M)).mp
  by_contra hann
  obtain ⟨m, hm, hcontains⟩ := Ideal.exists_le_maximal (Module.annihilator R M) hann
  obtain ⟨a, ha, hzero⟩ :=
    Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul
      m (⊤ : Submodule R M) Module.Finite.fg_top (h m hm)
  have ha_mem : a ∈ m :=
    hcontains (Module.mem_annihilator.mpr (fun x => hzero x Submodule.mem_top))
  have hone : (1 : R) ∈ m := by
    simpa only [sub_sub_cancel] using m.sub_mem ha_mem ha
  exact hm.ne_top ((Ideal.eq_top_iff_one m).mpr hone)

section Differentials

variable (O K C : Type*) [CommRing O] [CommRing K] [Algebra O K]
variable [CommRing C] [Algebra O C]

/-- Composing the universal derivation with a residue-valued linear map and
an injective residue embedding detects that linear map. No finite-type or
maximality assumption is needed for this step. -/
theorem residue_linearMap_eq_zero_of_pointDerivations
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0)
    (m : Ideal C) (ι : (C ⧸ m) →ₐ[O] K) (hι : Function.Injective ι)
    (F : Ω[C⁄O] →ₗ[C] C ⧸ m) : F = 0 := by
  let δ : Derivation O C (C ⧸ m) := F.compDer (KaehlerDifferential.D O C)
  let ξ : C →ₐ[O] K := ι.comp (Ideal.Quotient.mkₐ O m)
  let L : C →ₗ[O] K := ι.toLinearMap.comp δ.toLinearMap
  have hL : L = 0 := by
    apply hD ξ L
    intro a b
    change ι (δ (a * b)) =
      ι (Ideal.Quotient.mk m a) * ι (δ b) + ι (Ideal.Quotient.mk m b) * ι (δ a)
    rw [Derivation.leibniz, Algebra.smul_def, Algebra.smul_def,
      map_add, map_mul, map_mul]
    rfl
  apply LinearMap.ext_on_range (KaehlerDifferential.span_range_derivation O C)
  intro a
  apply hι
  have hz := LinearMap.congr_fun hL a
  change ι (F ((KaehlerDifferential.D O C) a)) = 0 at hz
  simpa only [LinearMap.zero_apply, map_zero] using hz

/-- Every maximal fiber of the actual Kähler module is zero when its
residue field embeds into a ring in which all point derivations vanish. -/
theorem kaehler_le_maximal_smul_of_pointDerivations
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0)
    (m : Ideal C) [m.IsMaximal]
    (ι : (C ⧸ m) →ₐ[O] K) (hι : Function.Injective ι) :
    (⊤ : Submodule C Ω[C⁄O]) ≤ m • ⊤ := by
  let : Field (C ⧸ m) := Ideal.Quotient.field m
  intro x _
  rw [← Submodule.Quotient.mk_eq_zero]
  apply (Module.forall_dual_apply_eq_zero_iff (C ⧸ m)
    (Submodule.Quotient.mk (p := m • (⊤ : Submodule C Ω[C⁄O])) x)).mp
  intro φ
  let F : Ω[C⁄O] →ₗ[C] C ⧸ m :=
    (φ.restrictScalars C).comp (m • (⊤ : Submodule C Ω[C⁄O])).mkQ
  have hF := residue_linearMap_eq_zero_of_pointDerivations O K C hD m ι hι F
  exact LinearMap.congr_fun hF x

/-- Finite generation of the differential module is the precise finiteness
input in the residue-point criterion for formal unramifiedness. -/
theorem formallyUnramified_of_finite_differentials
    [Module.Finite C Ω[C⁄O]]
    (hp : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : (C ⧸ m) →ₐ[O] K, Function.Injective ι)
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0) :
    Algebra.FormallyUnramified O C := by
  constructor
  apply subsingleton_of_maximal_smul_top C Ω[C⁄O]
  intro m hm
  let := hm
  obtain ⟨ι, hι⟩ := hp m hm
  exact kaehler_le_maximal_smul_of_pointDerivations O K C hD m ι hι

/-- A finite-type algebra is formally unramified when every maximal
residue field has an injective point-ring embedding and all point
derivations into that ring vanish. -/
theorem formallyUnramified_of_pointDerivations
    [Algebra.FiniteType O C]
    (hp : ∀ m : Ideal C, m.IsMaximal →
      ∃ ι : (C ⧸ m) →ₐ[O] K, Function.Injective ι)
    (hD : ∀ (ξ : C →ₐ[O] K) (D : C →ₗ[O] K),
      (∀ a b, D (a * b) = ξ a * D b + ξ b * D a) → D = 0) :
    Algebra.FormallyUnramified O C :=
  formallyUnramified_of_finite_differentials O K C hp hD

end Differentials

end GRWTSK.CommutativeAlgebra.PointDerivationUnramified
