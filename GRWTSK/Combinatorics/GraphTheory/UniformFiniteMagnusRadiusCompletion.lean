/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical Lean source candidate. Fresh Lean elaboration, kernel replay,
transitive axiom audit, and independent review NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.UniformFiniteMagnusRadius
import Mathlib

/-!
# The missing bounded Magnus radius return

The preceding module establishes a single finite 2-group of all degree-at-most
2*L pattern observations, source-literal voltage transport, and the conditional
radius theorem. This module attempts to discharge its remaining explicit
RadiusSyllableLaw by tracking the total absolute syllable exponent through
normalization of Mathlib's ORIGINAL signed FreeGroup.toWord.

The elementary proof has three independent steps:
(1) source normalization never increases the total absolute integer exponent;
(2) each 2-adic Magnus witness degree 2^v_2(|e|) is at most |e| for e != 0;
(3) FreeGroup.norm_mul_le and norm_inv_eq bound the reduced word representing
uv^-1 by |u|+|v|. There is no new quotient, axiom or replacement path carrier.

This file is a source candidate until it is actually compiled and replayed
against the pinned mathematical source. In particular the names below do not
constitute evidence of a successful Lean kernel proof by themselves.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace UniformFiniteMagnusRadius

open InverseEdgeVoltage.TruncatedMagnus

universe u
variable {A : Type u} [DecidableEq A]

/-- The weight of a normalized syllable list is the total number of its
    signed letter occurrences before grouping into maximal same-letter runs. -/
def syllableMass (s : List (A × ℤ)) : ℕ :=
  (s.map fun t => t.2.natAbs).sum

/-- Every nonzero integer exponent contains its chosen 2-adic power. -/
theorem syllableDegree_le_natAbs (e : ℤ) (he : e ≠ 0) :
    syllableDegree e ≤ e.natAbs := by
  have hn : e.natAbs ≠ 0 := by simpa using he
  have hd : 2 ^ padicValNat 2 e.natAbs ∣ e.natAbs :=
    pow_padicValNat_dvd
  exact Nat.le_of_dvd (Nat.pos_of_ne_zero hn) hd

/-- Each term of the source-pattern construction has length at most the
    number of signed generator occurrences it originally represented. -/
theorem pattern_length_le_mass :
    ∀ (s : List (A × ℤ)),
      (∀ t ∈ s, t.2 ≠ 0) →
      (syllablePattern s).length ≤ syllableMass s := by
  intro s
  induction s with
  | nil =>
      intro _
      simp [syllablePattern, syllableMass]
  | cons t tail ih =>
      intro hs
      have ht : t.2 ≠ 0 := hs t (by simp)
      have htail : ∀ z ∈ tail, z.2 ≠ 0 := by
        intro z hz
        exact hs z (by simp [hz])
      have hdeg := syllableDegree_le_natAbs t.2 ht
      have hr := ih htail
      simpa [syllablePattern, syllableMass] using Nat.add_le_add hdeg hr

/-- A single source letter prepended to normalized syllables costs at most
    its absolute exponent, including same-letter cancellation and merging. -/
theorem normal_prepend_mass (a : A) (e : ℤ) (he : e ≠ 0)
    (s : List (A × ℤ)) (hs : NormalSyllables s) :
    ∃ t : List (A × ℤ),
      NormalSyllables t ∧
      syllableClass t = (FreeGroup.of a) ^ e * syllableClass s ∧
      syllableMass t ≤ e.natAbs + syllableMass s := by
  rcases hs with ⟨hne, hc⟩
  cases s with
  | nil =>
      refine ⟨[(a, e)], ?_, ?_, ?_⟩
      · simp [NormalSyllables, he]
      · simp [syllableClass]
      · simp [syllableMass]
  | cons b tail =>
      by_cases hab : a = b.1
      · by_cases hz : e + b.2 = 0
        · refine ⟨tail, ⟨fun t ht => hne t (by simp [ht]), hc.tail⟩, ?_, ?_⟩
          · simp only [syllableClass, List.map_cons, List.prod_cons]
            rw [← mul_assoc, hab, ← zpow_add, hz, zpow_zero, one_mul]
          · simp [syllableMass] <;> omega
        · refine ⟨(a, e + b.2) :: tail, ?_, ?_, ?_⟩
          · constructor
            · intro t ht
              rcases List.mem_cons.mp ht with rfl | ht
              · exact hz
              · exact hne t (by simp [ht])
            · cases tail with
              | nil => simp
              | cons c rest =>
                  simpa [List.isChain_cons_cons, hab] using hc
          · simp only [syllableClass, List.map_cons, List.prod_cons]
            rw [hab, zpow_add, mul_assoc]
          · have htri := Int.natAbs_add_le e b.2
            simp [syllableMass] at *
            omega
      · refine ⟨(a, e) :: b :: tail, ?_, ?_, ?_⟩
        · constructor
          · intro t ht
            rcases List.mem_cons.mp ht with rfl | ht
            · exact he
            · exact hne t ht
          · exact List.isChain_cons_cons.mpr ⟨hab, hc⟩
        · simp [syllableClass]
        · simp [syllableMass] <;> omega

/-- Source-preserving normalization of a literal signed word, including
    a quantitative bound on its complete syllable mass. -/
theorem signed_word_normal_mass :
    ∀ xs : List (A × Bool),
      ∃ s : List (A × ℤ),
        NormalSyllables s ∧
        syllableClass s = FreeGroup.mk xs ∧
        syllableMass s ≤ xs.length := by
  intro xs
  induction xs with
  | nil =>
      exact ⟨[], by simp [NormalSyllables], rfl, by simp [syllableMass]⟩
  | cons x xs ih =>
      obtain ⟨s, hs, heq, hm⟩ := ih
      cases x with
      | mk a sign =>
          cases sign with
          | false =>
              obtain ⟨t, ht, he, htm⟩ :=
                normal_prepend_mass a (-1) (by decide) s hs
              refine ⟨t, ht, ?_, ?_⟩
              · rw [he, heq]
                rfl
              · have hcost : syllableMass t ≤ 1 + syllableMass s := by
                  simpa using htm
                simp only [List.length_cons]
                omega
          | true =>
              obtain ⟨t, ht, he, htm⟩ :=
                normal_prepend_mass a 1 (by decide) s hs
              refine ⟨t, ht, ?_, ?_⟩
              · rw [he, heq]
                rfl
              · have hcost : syllableMass t ≤ 1 + syllableMass s := by
                  simpa using htm
                simp only [List.length_cons]
                omega

/-- The source-exact missing bridge: for two canonical words of length at
    most L, the reduced syllable difference has Magnus pattern degree <= 2L.
    This consumes Mathlib's actual free-group norm and its triangle law. -/
theorem radiusSyllableLaw (L : ℕ) :
    RadiusSyllableLaw (A := A) L := by
  intro u v hu hv hne
  have hnorm : FreeGroup.norm (u * v⁻¹) ≤
      FreeGroup.norm u + FreeGroup.norm v := by
    simpa using (FreeGroup.norm_mul_le u v⁻¹)
  have hbound : (FreeGroup.toWord (u * v⁻¹)).length ≤ 2 * L := by
    dsimp [FreeGroup.norm] at hnorm
    omega
  obtain ⟨s, hs, hclass, hmass⟩ :=
    signed_word_normal_mass (FreeGroup.toWord (u * v⁻¹))
  have hclass' : syllableClass s = u * v⁻¹ := by
    simpa only [FreeGroup.mk_toWord] using hclass
  have hdiff : u * v⁻¹ ≠ 1 := by
    intro h
    apply hne
    have hmul := congrArg (fun z : FreeGroup A => z * v) h
    simpa [mul_assoc] using hmul
  have hsne : s ≠ [] := by
    intro hnil
    subst s
    apply hdiff
    simpa [syllableClass] using hclass'.symm
  refine ⟨s, ⟨hsne, hs⟩, hclass', ?_⟩
  calc
    (syllablePattern s).length ≤ syllableMass s :=
      pattern_length_le_mass s hs.1
    _ ≤ (FreeGroup.toWord (u * v⁻¹)).length := hmass
    _ ≤ 2 * L := hbound

/-- Full bounded-radius injection, using the uniform finite 2-group and the
    proved source-length bound. No pair-dependent witness remains in the statement. -/
theorem uniform_injective_on_radius (L : ℕ) (u v : FreeGroup A)
    (hu : (FreeGroup.toWord u).length ≤ L)
    (hv : (FreeGroup.toWord v).length ≤ L)
    (himage : uniformRep (A := A) L u = uniformRep (A := A) L v) :
    u = v :=
  injective_on_radius_of_law L (radiusSyllableLaw L) u v hu hv himage

/-- The original signed path, not its reduced class alone, returns exactly
    under the voltage lift; distinct bounded classes have distinct marked
    endpoints in the SAME uniform finite 2-group. -/
theorem uniform_endpoints_distinct (L : ℕ) (xs ys : List (A × Bool))
    (hx : (FreeGroup.toWord (InverseEdgeVoltage.sourceFreeClass xs)).length ≤ L)
    (hy : (FreeGroup.toWord (InverseEdgeVoltage.sourceFreeClass ys)).length ≤ L)
    (hne : InverseEdgeVoltage.sourceFreeClass xs ≠
      InverseEdgeVoltage.sourceFreeClass ys)
    (g : ObserverGroup A L) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (InverseEdgeVoltage.signedBouquetTransport (generatorVoltage (A := A) L))
      (InverseEdgeVoltage.signedBouquetPath xs) g).1 ≠
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (InverseEdgeVoltage.signedBouquetTransport (generatorVoltage (A := A) L))
      (InverseEdgeVoltage.signedBouquetPath ys) g).1 :=
  endpoints_distinct_of_law L (radiusSyllableLaw L) xs ys hx hy hne g

end UniformFiniteMagnusRadius
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
