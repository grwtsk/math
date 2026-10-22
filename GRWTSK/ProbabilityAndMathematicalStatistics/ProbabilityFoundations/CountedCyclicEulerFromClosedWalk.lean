/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.Combinatorics.DirectedEulerWalkCyclicIndex
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CountedCyclicEdgeSplicing
import Mathlib.Data.List.NodupEquivFin

/-!
# Original counted cyclic certificates from exhaustive closed walks

The input is an actual closed directed walk through the exact original
CountedBinaryEdge instances, with no repeated ID and with every ID present.
A list-index equivalence constructs the actual finite edge order. The final
cyclic seam is proved from the walk's closed endpoints. The positive total
N = sum c is explicit and implies the input list is nonempty.

The original certificate-to-word theorem is reused without any restriction
of width by period. No trail existence from balance or connectivity, no
connectivity lemma, and no arithmetic cancellation is asserted here.
-/

set_option autoImplicit false

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open GRWTSK.Combinatorics.DirectedEulerSplicing

/-- An exhaustive edge-simple list has exactly the original counted total
many entries. All individual parallel-edge IDs are included. -/
theorem countedBinaryEdgeWalk_length_eq_total
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a b : Fin m → Bool}
    (p : CountedBinaryEdgeWalk m c a b)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    p.edges.length = countedBinaryEdgeTotal m c := by
  classical
  let : Fintype (CountedBinaryEdge m c) := by
    unfold CountedBinaryEdge
    infer_instance
  let e := List.Nodup.getEquivOfForallMemList p.edges hnodup hexhaustive
  calc
    p.edges.length = Fintype.card (CountedBinaryEdge m c) := by
      simpa only [Fintype.card_fin] using Fintype.card_congr e
    _ = countedBinaryEdgeTotal m c := by
      change Fintype.card ((w : BinaryEdgeWord m) × Fin (c w)) = ∑ w, c w
      simp only [Fintype.card_sigma, Fintype.card_fin]

/-- The actual order indexes the exhaustive list of original counted IDs;
its inverse is the nodup list-index inverse, not a choice of labels. -/
noncomputable def countedCyclicEdgeOrderOfClosedWalk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    Fin (countedBinaryEdgeTotal m c) ≃ CountedBinaryEdge m c := by
  classical
  exact (finCongr (countedBinaryEdgeWalk_length_eq_total p hnodup hexhaustive).symm).trans
    (List.Nodup.getEquivOfForallMemList p.edges hnodup hexhaustive)

/-- The finite-order map is exactly list lookup at the same natural index. -/
@[simp] theorem countedCyclicEdgeOrderOfClosedWalk_apply
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges)
    (i : Fin (countedBinaryEdgeTotal m c)) :
    countedCyclicEdgeOrderOfClosedWalk p hnodup hexhaustive i =
      p.edges.get ⟨i.val, by
        rw [countedBinaryEdgeWalk_length_eq_total p hnodup hexhaustive]
        exact i.isLt⟩ := rfl

/-- An actual exhaustive nonempty closed edge-simple walk constructs the
original cyclic Euler certificate, with the genuine final-to-first seam. -/
noncomputable def countedCyclicEulerCertificateOfClosedWalk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (hN : 0 < countedBinaryEdgeTotal m c)
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    CountedCyclicEulerCertificate m c hN where
  order := countedCyclicEdgeOrderOfClosedWalk p hnodup hexhaustive
  compatible i := by
    let hlen := countedBinaryEdgeWalk_length_eq_total p hnodup hexhaustive
    have hpositive : 0 < p.edges.length := by omega
    let i' : Fin p.edges.length := (finCongr hlen.symm) i
    have hcyclic := Walk.closed_get_cyclic p hpositive i'
    have hnext :
        (⟨(i'.val + 1) % p.edges.length, Nat.mod_lt _ hpositive⟩ : Fin p.edges.length) =
          (finCongr hlen.symm)
            (cyclicSuccessor (countedBinaryEdgeTotal m c) hN i) := by
      apply Fin.ext
      change (i.val + 1) % p.edges.length = (i.val + 1) % countedBinaryEdgeTotal m c
      rw [hlen]
    rw [hnext] at hcyclic
    exact hcyclic

/-- Exact original word counts follow from the already established
certificate/word equivalence, including arbitrarily many cyclic wraps. -/
theorem exists_cyclicBinaryWord_of_closed_exhaustive_walk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (hN : 0 < countedBinaryEdgeTotal m c)
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    ∃ x : CyclicBinaryWord (countedBinaryEdgeTotal m c),
      ∀ w, cyclicBinaryBlockCount m (countedBinaryEdgeTotal m c) hN x w = c w :=
  (countedCyclicEulerCertificate_nonempty_iff m c hN).mp
    ⟨countedCyclicEulerCertificateOfClosedWalk hN p hnodup hexhaustive⟩

/-- Actual exhaustive closed walks realize the original finite block counts.
This theorem assumes the walk itself; it asserts no Euler existence result. -/
theorem cyclicCountRealizable_of_closed_exhaustive_walk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (hN : 0 < countedBinaryEdgeTotal m c)
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    CyclicCountRealizable m c :=
  (countedCyclicEulerCertificateOfClosedWalk hN p hnodup hexhaustive).realizable

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
