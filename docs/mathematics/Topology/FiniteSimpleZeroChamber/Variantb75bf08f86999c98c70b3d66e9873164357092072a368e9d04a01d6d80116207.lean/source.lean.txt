import FormalResearch.RiemannHypothesis.Conversation.SimpleZeroChamber
import Mathlib.Topology.Compactness.Compact
import Mathlib.Order.Filter.Finite

/-!
# Complete finite ordered zero census persists in a simple-zero chamber

The input is the complete ordered inventory of interior zeros on a compact
interval, rather than a chosen subfamily. Joint C¹ regularity and simple
spatial derivatives supply the local graphs. Compactness excludes every
additional zero uniformly on the full interval; finite intersection retains
all graph equations, their order, and C¹ regularity on one open chamber.
No constants across a multiple-zero or boundary crossing are inferred.
Human full-inventory/chamber direction: grwtsk contributors. Local complete
census consumer: OpenAI Codex. Mathlib IFT and compactness remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteSimpleZeroChamber
open SimpleZeroChamber Set Filter
open scoped Topology ContDiff
noncomputable section

theorem complete_ordered_zero_census_persists {n : ℕ} {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ} (x₀ : Fin n → ℝ)
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀, x))
    (hinside : ∀ i, x₀ i ∈ Ioo a b)
    (horder : StrictMono x₀)
    (hcensus : ∀ x ∈ Icc a b, g (l₀, x) = 0 ↔ ∃ i, x₀ i = x)
    (hsimple : ∀ i, spatialSlope g (l₀, x₀ i) ≠ 0) :
    ∃ (z : Fin n → ℝ → ℝ) (U : Set ℝ), IsOpen U ∧ l₀ ∈ U ∧
      (∀ i, z i l₀ = x₀ i ∧ ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)) := by
  have hg : ∀ i, ∃ z : ℝ → ℝ, z l₀ = x₀ i ∧ ContDiffAt ℝ 1 z l₀ ∧
      (∀ᶠ l in 𝓝 l₀, g (l,z l) = 0) ∧
      (∀ᶠ v in 𝓝 (l₀,x₀ i), g v = 0 ↔ z v.1 = v.2) := by
    intro i
    have hxi : x₀ i ∈ Icc a b := ⟨(hinside i).1.le,(hinside i).2.le⟩
    exact simple_zero_local_c1_graph (hc _ hxi)
      ((hcensus _ hxi).2 ⟨i,rfl⟩) (hsimple i)
  choose z hz0 hzc hzeq hzunique using hg
  have hcover : ∀ᶠ l in 𝓝 l₀, ∀ x ∈ Icc a b,
      g (l,x) = 0 → ∃ i, z i l = x := by
    apply isCompact_Icc.eventually_forall_of_forall_eventually
    intro x hx
    by_cases hzero : g (l₀,x) = 0
    · obtain ⟨i,hi⟩ := (hcensus x hx).1 hzero
      subst x
      filter_upwards [hzunique i] with v hv
      exact fun h => ⟨i,hv.mp h⟩
    · have hne : ∀ᶠ v in 𝓝 (l₀,x), g v ≠ 0 :=
        (hc x hx).continuousAt (eventually_ne_nhds hzero)
      filter_upwards [hne] with v hv
      exact fun h => False.elim (hv h)
  have hallzero : ∀ᶠ l in 𝓝 l₀, ∀ i, g (l,z i l) = 0 :=
    eventually_all.2 hzeq
  have hallinside : ∀ᶠ l in 𝓝 l₀, ∀ i, z i l ∈ Ioo a b := by
    apply eventually_all.2
    intro i
    exact (hzc i).continuousAt (by simpa only [hz0 i] using
      (Ioo_mem_nhds (hinside i).1 (hinside i).2))
  have hallorder : ∀ᶠ l in 𝓝 l₀, StrictMono (fun i => z i l) := by
    have hp : ∀ i j : Fin n, ∀ᶠ l in 𝓝 l₀, i < j → z i l < z j l := by
      intro i j
      by_cases hij : i < j
      · have hv : z i l₀ < z j l₀ := by simpa only [hz0 i,hz0 j] using horder hij
        filter_upwards [(hzc i).continuousAt.eventually_lt (hzc j).continuousAt hv]
          with l hl
        exact fun _ => hl
      · exact Eventually.of_forall fun _ h => False.elim (hij h)
    exact (eventually_all.2 fun i => eventually_all.2 (hp i)).mono fun _ h => h
  have hcv : ∀ i, ∃ V ∈ 𝓝 l₀, ContDiffOn ℝ 1 (z i) V :=
    fun i => (hzc i).contDiffOn (le_refl 1) (by simp)
  choose V hV hVc using hcv
  have hallV : ∀ᶠ l in 𝓝 l₀, ∀ i, l ∈ V i := eventually_all.2 hV
  have hW : {l | (∀ i, l ∈ V i) ∧ StrictMono (fun i => z i l) ∧
      (∀ i, z i l ∈ Ioo a b) ∧
      (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)} ∈ 𝓝 l₀ := by
    filter_upwards [hallV,hallorder,hallinside,hcover,hallzero] with l hvl hol hil hcl hzl
    refine ⟨hvl,hol,hil,?_⟩
    intro x hx
    refine ⟨hcl x hx,?_⟩
    rintro ⟨i,rfl⟩
    exact hzl i
  obtain ⟨U,hUW,hU,hu⟩ := mem_nhds_iff.mp hW
  refine ⟨z,U,hU,hu,?_,?_⟩
  · intro i
    exact ⟨hz0 i,(hVc i).mono (fun l hl => (hUW hl).1 i)⟩
  · intro l hl
    exact (hUW hl).2

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteSimpleZeroChamber
