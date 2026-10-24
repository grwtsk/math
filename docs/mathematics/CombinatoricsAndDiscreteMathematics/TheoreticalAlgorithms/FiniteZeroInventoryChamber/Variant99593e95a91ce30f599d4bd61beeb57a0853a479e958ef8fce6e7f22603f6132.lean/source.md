# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteZeroInventoryChamber.Variant99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc747dc4305fe98e23bee0348f98cfe32674a2fb` · SHA-256 `99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteSimpleZeroChamber
import Mathlib.Data.Finset.Sort

/-!
# From the entire finite zero set to a common C¹ chamber

The source hypotheses are used literally: finite interior zeros, both
endpoints nonzero, every interior zero simple, and joint C¹ regularity on
the full compact interval at the base parameter. The ordered inventory is
constructed from that entire zero set. It is not a selected finite slice.
The complete zero set is then exactly the range of the same ordered C¹
graphs in a common open parameter chamber. Human source and completeness
direction: grwtsk contributors. Local inventory adapter: OpenAI Codex.
Mathlib sorted enumeration and implicit-function artifacts remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.FiniteZeroInventoryChamber
open SimpleZeroChamber FiniteSimpleZeroChamber Set
open scoped Topology ContDiff
noncomputable section

theorem finite_simple_interior_zeros_have_complete_chamber {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ}
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀,x))
    (ha : g (l₀,a) ≠ 0) (hb : g (l₀,b) ≠ 0)
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hsimple : ∀ x ∈ Ioo a b, g (l₀,x) = 0 → spatialSlope g (l₀,x) ≠ 0) :
    ∃ (n : ℕ) (z : Fin n → ℝ → ℝ) (U : Set ℝ),
      IsOpen U ∧ l₀ ∈ U ∧ (∀ i, ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)) := by
  classical
  have hinterior (x : ℝ) (hx : x ∈ Icc a b) (hz : g (l₀,x) = 0) : x ∈ Ioo a b := by
    have hxa : x ≠ a := by intro h; subst x; exact ha hz
    have hxb : x ≠ b := by intro h; subst x; exact hb hz
    constructor <;> rcases hx with ⟨hlo,hhi⟩ <;> order
  have hclosed : {x | x ∈ Icc a b ∧ g (l₀,x) = 0}.Finite :=
    hfinite.subset (fun x hx => ⟨hinterior x hx.1 hx.2,hx.2⟩)
  let s := hclosed.toFinset
  let x₀ : Fin s.card → ℝ := s.orderEmbOfFin rfl
  have hmem (i : Fin s.card) : x₀ i ∈ Icc a b ∧ g (l₀,x₀ i) = 0 := by
    have hm : x₀ i ∈ s := s.orderEmbOfFin_mem rfl i
    simpa only [s,Finite.mem_toFinset,Set.mem_ofPred_eq] using hm
  have hin (i : Fin s.card) : x₀ i ∈ Ioo a b := hinterior _ (hmem i).1 (hmem i).2
  have hord : StrictMono x₀ := (s.orderEmbOfFin rfl).strictMono
  have hcen (x : ℝ) (hx : x ∈ Icc a b) : g (l₀,x) = 0 ↔ ∃ i, x₀ i = x := by
    have hrange : range x₀ = (s : Set ℝ) := s.range_orderEmbOfFin rfl
    constructor
    · intro hz
      have hm : x ∈ s := by simpa only [s,Finite.mem_toFinset,Set.mem_ofPred_eq] using And.intro hx hz
      have hxr : x ∈ range x₀ := by rwa [hrange]
      exact hxr
    · rintro ⟨i,rfl⟩
      exact (hmem i).2
  obtain ⟨z,U,hU,hu,hzc,hcens⟩ := complete_ordered_zero_census_persists x₀ hc hin hord hcen
    (fun i => hsimple _ (hin i) (hmem i).2)
  exact ⟨s.card,z,U,hU,hu,fun i => (hzc i).2,hcens⟩

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteZeroInventoryChamber
```
