# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerRepresentatives

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce8c64bde6c614a0ea07c68427b26f21e2b1eb7f` · SHA-256 `b949cfd214a4d13d78dedb8248bf3e9f9063777b584c717976feceb1a131d114`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCyclic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def octaveRepresentative
    (X : ℕ)
    (z : ZMod (fejerOctavePeriod X)) : ℕ :=
  if z.val = 0 then fejerOctavePeriod X else z.val

theorem octaveRepresentative_natCast
    {X q : ℕ}
    (hX : 0 < X)
    (hq0 : 1 ≤ q)
    (hq1 : q ≤ fejerOctavePeriod X) :
    octaveRepresentative X
      (q : ZMod (fejerOctavePeriod X)) = q := by
  unfold octaveRepresentative
  rw [ZMod.val_natCast]
  by_cases hq : q = fejerOctavePeriod X
  · subst q
    simp [hX, fejerOctavePeriod]
  · have hqLt : q < fejerOctavePeriod X := lt_of_le_of_ne hq1 hq
    rw [Nat.mod_eq_of_lt hqLt]
    have hqNe : q ≠ 0 := Nat.ne_of_gt hq0
    simp [hqNe]

def nonAliasingFejerPrefixResidues
    (X m p : ℕ) :
    Finset (ZMod (fejerOctavePeriod X)) :=
  (Finset.Ioc (2 * X) m).image
    (fun q =>
      (p : ZMod (fejerOctavePeriod X)) -
        (q : ZMod (fejerOctavePeriod X)))

theorem nonAliasingFejerPrefixResidueMap_injective
    {X m p : ℕ}
    (hX : 0 < X)
    (hm1 : m ≤ 4 * X) :
    Set.InjOn
      (fun q : ℕ =>
        (p : ZMod (fejerOctavePeriod X)) -
          (q : ZMod (fejerOctavePeriod X)))
      (↑(Finset.Ioc (2 * X) m) : Set ℕ) := by
  intro a ha b hb hab
  have haI := Finset.mem_Ioc.mp ha
  have hbI := Finset.mem_Ioc.mp hb
  have habCast :
      (a : ZMod (fejerOctavePeriod X)) =
        (b : ZMod (fejerOctavePeriod X)) := by
    exact sub_left_inj.mp hab
  have ha0 : 1 ≤ a := by omega
  have hb0 : 1 ≤ b := by omega
  have ha1 : a ≤ fejerOctavePeriod X := by
    simpa [fejerOctavePeriod] using haI.2.trans hm1
  have hb1 : b ≤ fejerOctavePeriod X := by
    simpa [fejerOctavePeriod] using hbI.2.trans hm1
  calc
    a = octaveRepresentative X
        (a : ZMod (fejerOctavePeriod X)) :=
      (octaveRepresentative_natCast hX ha0 ha1).symm
    _ = octaveRepresentative X
        (b : ZMod (fejerOctavePeriod X)) :=
      congrArg (octaveRepresentative X) habCast
    _ = b := octaveRepresentative_natCast hX hb0 hb1

end GRWTSK.RiemannHypothesis
```
