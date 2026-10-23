/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Analytic.Basic
import Mathlib.Topology.Separation.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Patching finitely many removable analytic germs

Let `raw : ℂ → ℂ` be analytic away from a finite set `singular`. Suppose that at
every member `a` of that set we have an analytic germ agreeing with `raw` on a
punctured neighborhood of `a`. This file defines one total function by retaining
`raw` off the finite set and assigning the corresponding germ value at each
singular point.

Finiteness is used exactly once: near `a`, a neighborhood can avoid every other
member of `singular`. Consequently the patched function agrees with the chosen
local germ on a full neighborhood of `a`, not merely at the center. Away from
the finite set it agrees with `raw` on a full neighborhood as well.

The result is a general local-to-global removable-singularity adapter. It does
not construct any local germ and introduces no analytic, numerical, or counting
axiom. Classical equality is used to define the finite pointwise patch.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.FiniteRemovablePatching

open Filter Set
open scoped Topology

noncomputable section

/-- Local analytic representatives for every member of a finite singular set. -/
structure LocalRemovalData (raw : ℂ → ℂ) (singular : Finset ℂ) where
  germ : ℂ → ℂ → ℂ
  germ_analytic : ∀ a, a ∈ singular → AnalyticAt ℂ (germ a) a
  germ_agrees : ∀ a, a ∈ singular → raw =ᶠ[𝓝[≠] a] germ a

namespace LocalRemovalData

variable {raw : ℂ → ℂ} {singular : Finset ℂ}

/-- Keep the raw function off the singular set and use the selected germ value
at each singular point. -/
def filled (data : LocalRemovalData raw singular) (z : ℂ) : ℂ := by
  classical
  exact if hz : z ∈ singular then data.germ z z else raw z

@[simp] theorem filled_of_mem (data : LocalRemovalData raw singular) {z : ℂ}
    (hz : z ∈ singular) : data.filled z = data.germ z z := by
  classical
  simp [filled, hz]

@[simp] theorem filled_of_not_mem (data : LocalRemovalData raw singular) {z : ℂ}
    (hz : z ∉ singular) : data.filled z = raw z := by
  classical
  simp [filled, hz]

/-- A point has a neighborhood avoiding every other member of a finite set. -/
private theorem eventually_not_mem_erase (S : Finset ℂ) (a : ℂ) :
    ∀ᶠ z in 𝓝 a, z ∉ S.erase a := by
  classical
  have hopen : IsOpen ((((S.erase a : Finset ℂ) : Set ℂ)ᶜ)) :=
    (S.erase a).isClosed.isOpen_compl
  have ha : a ∈ (((S.erase a : Finset ℂ) : Set ℂ)ᶜ) := by simp
  filter_upwards [hopen.mem_nhds ha] with z hz
  simpa using hz

/-- At a singular point, the finite patch agrees with its selected analytic
germ on a full neighborhood. Other singular points are excluded by finiteness. -/
theorem filled_eventuallyEq_germ (data : LocalRemovalData raw singular)
    (a : ℂ) (ha : a ∈ singular) :
    data.filled =ᶠ[𝓝 a] data.germ a := by
  classical
  have hagree := data.germ_agrees a ha
  rw [eventually_nhdsWithin_iff] at hagree
  filter_upwards [eventually_not_mem_erase singular a, hagree] with z havoid hzAgree
  by_cases hza : z = a
  · subst z
    exact data.filled_of_mem ha
  · have hnot : z ∉ singular := by
      intro hz
      exact havoid (Finset.mem_erase.mpr ⟨hza, hz⟩)
    rw [data.filled_of_not_mem hnot]
    exact hzAgree (by simpa using hza)

/-- Away from the finite set, the patch agrees with the raw function on a full
neighborhood. -/
theorem filled_eventuallyEq_raw (data : LocalRemovalData raw singular)
    (a : ℂ) (ha : a ∉ singular) :
    data.filled =ᶠ[𝓝 a] raw := by
  classical
  have hopen : IsOpen ((((singular : Finset ℂ) : Set ℂ)ᶜ)) :=
    singular.isClosed.isOpen_compl
  have hmem : a ∈ (((singular : Finset ℂ) : Set ℂ)ᶜ) := by simpa
  filter_upwards [hopen.mem_nhds hmem] with z hz
  have hnot : z ∉ singular := by simpa using hz
  exact data.filled_of_not_mem hnot

/-- Analyticity at a patched singular point comes from the selected germ. -/
theorem analyticAt_filled_of_mem (data : LocalRemovalData raw singular)
    (a : ℂ) (ha : a ∈ singular) :
    AnalyticAt ℂ data.filled a :=
  (data.germ_analytic a ha).congr (data.filled_eventuallyEq_germ a ha)

/-- Analyticity away from the finite set is inherited from the raw function. -/
theorem analyticAt_filled_of_not_mem (data : LocalRemovalData raw singular)
    (a : ℂ) (ha : a ∉ singular) (hraw : AnalyticAt ℂ raw a) :
    AnalyticAt ℂ data.filled a :=
  hraw.congr (data.filled_eventuallyEq_raw a ha)

/-- Local analytic germs plus raw analyticity off the singular set produce one
function analytic on the requested region. -/
theorem analyticOnNhd_filled (data : LocalRemovalData raw singular)
    (region : Set ℂ)
    (raw_analytic : ∀ z ∈ region, z ∉ singular → AnalyticAt ℂ raw z) :
    AnalyticOnNhd ℂ data.filled region := by
  intro z hz
  by_cases hs : z ∈ singular
  · exact data.analyticAt_filled_of_mem z hs
  · exact data.analyticAt_filled_of_not_mem z hs (raw_analytic z hz hs)

/-- Differentiability is exposed separately for consumers that do not need a
power-series interface. -/
theorem differentiableOn_filled (data : LocalRemovalData raw singular)
    (region : Set ℂ)
    (raw_analytic : ∀ z ∈ region, z ∉ singular → AnalyticAt ℂ raw z) :
    DifferentiableOn ℂ data.filled region := by
  intro z hz
  exact (data.analyticOnNhd_filled region raw_analytic z hz).
    differentiableAt.differentiableWithinAt

/-- Continuity on a closed consumer region follows from the same local data. -/
theorem continuousOn_filled (data : LocalRemovalData raw singular)
    (region : Set ℂ)
    (raw_analytic : ∀ z ∈ region, z ∉ singular → AnalyticAt ℂ raw z) :
    ContinuousOn data.filled region := by
  intro z hz
  exact (data.analyticOnNhd_filled region raw_analytic z hz).
    continuousAt.continuousWithinAt

/-- The finite patch changes no nonsingular source value. -/
theorem filled_eq_raw (data : LocalRemovalData raw singular)
    {z : ℂ} (hz : z ∉ singular) : data.filled z = raw z :=
  data.filled_of_not_mem hz

end LocalRemovalData

end

end GRWTSK.Analysis.Complex.FiniteRemovablePatching
