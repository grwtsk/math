/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Source-specific roots and exact transport for dependent mathematical families

Local attribution: grwtsk contributors.

This is a required interface, not a universal claim that torsion, curvature,
Möbius cross energy, Dirichlet characters, and all physical energy functions
are one quantity. Every mathematical family supplies its OWN type, root
predicate, measured energy, nonnegativity and exact zero locus.

A transport between two indices supplies an ACTUAL state map and signed
energy-change term with its defining equation. No automatic cancellation
or uniform lower gap follows. For a composition, both signed energy changes
are retained in their original order and at their intermediate state.

The concrete Gödel observer, mechanical spring, and prime-local finite
phase models are separately instantiated, so that neither an unspecified
root nor an arbitrary defect may masquerade as a theorem.

SOURCE_PROOF_CANDIDATE: compilation, fresh kernel, axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract

universe u v

/-- A proof-carrying root and energy for every index of one dependent family. -/
structure RootFamily (Index : Type u) where
  Carrier : Index → Type v
  Root : ∀ i : Index, Carrier i → Prop
  energy : ∀ i : Index, Carrier i → ℝ
  energy_nonneg : ∀ i (x : Carrier i), 0 ≤ energy i x
  energy_eq_zero_iff_root :
    ∀ i (x : Carrier i), energy i x = 0 ↔ Root i x

namespace RootFamily

variable {Index : Type u} (F : RootFamily Index)

theorem energy_pos_off_root
    (i : Index) (x : F.Carrier i) (hx : ¬ F.Root i x) :
    0 < F.energy i x := by
  have hn : F.energy i x ≠ 0 := by
    intro hz
    exact hx ((F.energy_eq_zero_iff_root i x).mp hz)
  exact lt_of_le_of_ne (F.energy_nonneg i x) (Ne.symm hn)

/-- Explicit signed transport law; the field does not assert conservation. -/
structure ExactTransport (i j : Index) where
  toFun : F.Carrier i → F.Carrier j
  signedEnergyChange : F.Carrier i → ℝ
  actualEquation :
    ∀ x : F.Carrier i,
      F.energy j (toFun x) =
        F.energy i x + signedEnergyChange x

/-- Equality of energies needs a proved zero energy-change term. -/
theorem ExactTransport.energy_eq_of_zero_change {i j : Index}
    (tr : F.ExactTransport i j)
    (hz : ∀ x, tr.signedEnergyChange x = 0)
    (x : F.Carrier i) :
    F.energy j (tr.toFun x) = F.energy i x := by
  rw [tr.actualEquation x, hz x, add_zero]

/-- A zero-change map preserves the exact measured root predicate. -/
theorem ExactTransport.root_iff_of_zero_change {i j : Index}
    (tr : F.ExactTransport i j)
    (hz : ∀ x, tr.signedEnergyChange x = 0)
    (x : F.Carrier i) :
    F.Root j (tr.toFun x) ↔ F.Root i x := by
  rw [← F.energy_eq_zero_iff_root j (tr.toFun x),
    ← F.energy_eq_zero_iff_root i x,
    tr.energy_eq_of_zero_change hz x]

/-- The two source-specific signed changes remain present under composition. -/
def ExactTransport.comp {i j k : Index}
    (tr2 : F.ExactTransport j k)
    (tr1 : F.ExactTransport i j) :
    F.ExactTransport i k where
  toFun := tr2.toFun ∘ tr1.toFun
  signedEnergyChange := fun x =>
    tr1.signedEnergyChange x + tr2.signedEnergyChange (tr1.toFun x)
  actualEquation := by
    intro x
    change F.energy k (tr2.toFun (tr1.toFun x)) =
      F.energy i x +
        (tr1.signedEnergyChange x +
          tr2.signedEnergyChange (tr1.toFun x))
    rw [tr2.actualEquation (tr1.toFun x), tr1.actualEquation x]
    ring

/-- A genuine exact isometry has its source energy-change identically zero. -/
def ExactTransport.of_energy_preserving {i j : Index}
    (map : F.Carrier i → F.Carrier j)
    (hmap : ∀ x, F.energy j (map x) = F.energy i x) :
    F.ExactTransport i j where
  toFun := map
  signedEnergyChange := fun _ => 0
  actualEquation := by
    intro x
    simp [hmap x]

/-- The signed defect is fixed by the actual source and target energies. -/
theorem ExactTransport.change_eq_difference {i j : Index}
    (tr : F.ExactTransport i j) (x : F.Carrier i) :
    tr.signedEnergyChange x =
      F.energy j (tr.toFun x) - F.energy i x := by
  have h := tr.actualEquation x
  linarith

end RootFamily
end GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
end
