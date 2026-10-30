/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Height collisions, dimensional lifting, and the horizontal RH defect

Critical-line reflection preserves the signed zero height and negates the
centered real offset. Therefore injectivity of signed height on distinct
nontrivial zero points forces every point onto the critical line and implies
the canonical Mathlib `RiemannHypothesis` proposition.

Analytic multiplicity is retained separately by a dependent finite lift
`Sigma (fun z => Fin (multiplicity z))`. This does not invent nearby heights
for repeated roots. The lifted coordinate consists of signed height, centered
real offset, and the multiplicity index, and is faithful.

Finally, `horizontalDefect` is the finite, multiplicity-weighted nonnegative
sum of squared centered offsets over the canonical absolute-height head. It is
only a finite divisor observable. This module supplies no Selberg trace
formula, geometric orbit identification, delta-ring, prism, prismatic
comparison, completed zero-divisor limit, endpoint estimate, or RH proof
without its explicit height-injectivity premise.

SOURCE_ONLY / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.HeightCollisionLift

open scoped BigOperators
open CanonicalZeroDivisor

noncomputable section

/-- Distinct actual nontrivial zero points. Analytic multiplicity is not part
of point equality and is retained by `MultiplicityLift` below. -/
abbrev ZeroPoint := CanonicalZeroDivisor.ZeroPoint

/-- Signed ordinate. Unlike absolute height, this keeps conjugate half-planes
separate while critical-line reflection remains in the same height fiber. -/
def signedHeight (z : ZeroPoint) : ℝ := z.1.im

/-- Horizontal displacement from the critical line. -/
def centeredOffset (z : ZeroPoint) : ℝ := z.1.re - (1 / 2 : ℝ)

/-- Critical-line reflection as an equivalence of actual nontrivial zero
points, using the source theorem that reflection preserves the exact zero
predicate. -/
def reflectedZeroPoint : Equiv.Perm ZeroPoint where
  toFun z := ⟨criticalReflection z.1, z.2.critical_reflection⟩
  invFun z := ⟨criticalReflection z.1, z.2.critical_reflection⟩
  left_inv z := Subtype.ext (critical_reflection_involutive z.1)
  right_inv z := Subtype.ext (critical_reflection_involutive z.1)

@[simp]
theorem reflectedZeroPoint_val (z : ZeroPoint) :
    (reflectedZeroPoint z).1 = criticalReflection z.1 :=
  rfl

/-- Critical-line reflection stays in the same signed-height fiber. -/
@[simp]
theorem signedHeight_reflected (z : ZeroPoint) :
    signedHeight (reflectedZeroPoint z) = signedHeight z := by
  simp [signedHeight, reflectedZeroPoint, criticalReflection]

/-- Critical-line reflection negates the horizontal displacement. -/
@[simp]
theorem centeredOffset_reflected (z : ZeroPoint) :
    centeredOffset (reflectedZeroPoint z) = -centeredOffset z := by
  simp [centeredOffset, reflectedZeroPoint, criticalReflection] <;> linarith

/-- If no two distinct nontrivial zero points share a signed height, reflection
must fix every point and every centered real offset vanishes. This statement
is about distinct complex points; it does not assert simplicity. -/
theorem centeredOffset_eq_zero_of_signedHeight_injective
    (hinjective : Function.Injective signedHeight) (z : ZeroPoint) :
    centeredOffset z = 0 := by
  have hreflect : reflectedZeroPoint z = z :=
    hinjective (signedHeight_reflected z)
  have hoffset := centeredOffset_reflected z
  rw [hreflect] at hoffset
  linarith

/-- Height injectivity on actual nontrivial zero points implies the canonical
Mathlib Riemann hypothesis. The premise is not proved here. -/
theorem riemannHypothesis_of_signedHeight_injective
    (hinjective : Function.Injective signedHeight) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  let z : ZeroPoint := ⟨s, ⟨hs, htrivial, hpole⟩⟩
  have hcenter : centeredOffset z = 0 :=
    centeredOffset_eq_zero_of_signedHeight_injective hinjective z
  dsimp only [centeredOffset, z] at hcenter
  linarith

/-- A multiple zero is lifted by its actual analytic multiplicity. Distinct
copies share the same complex point and height; the `Fin` coordinate records
nonreduced/jet depth instead of fabricating separated roots. -/
abbrev MultiplicityLift :=
  Sigma fun z : ZeroPoint => Fin (CanonicalZeroDivisor.multiplicity z)

/-- Every actual zero has at least one lifted copy because its analytic
multiplicity is positive. -/
def firstMultiplicityCopy (z : ZeroPoint) : MultiplicityLift :=
  ⟨z, ⟨0, CanonicalZeroDivisor.multiplicity_pos z⟩⟩

/-- Faithful real coordinate for the multiplicity lift: signed height,
centered horizontal coordinate, and multiplicity/jet index. -/
def liftedCoordinate (x : MultiplicityLift) : ℝ × (ℝ × ℕ) :=
  (signedHeight x.1, (centeredOffset x.1, x.2.1))

/-- The dimensional lift loses neither the complex zero point nor its finite
multiplicity index. -/
theorem liftedCoordinate_injective : Function.Injective liftedCoordinate := by
  rintro ⟨z, i⟩ ⟨w, j⟩ h
  have hh : signedHeight z = signedHeight w :=
    congrArg Prod.fst h
  have htail :
      (centeredOffset z, i.1) = (centeredOffset w, j.1) :=
    congrArg Prod.snd h
  have ho : centeredOffset z = centeredOffset w :=
    congrArg Prod.fst htail
  have hi : i.1 = j.1 :=
    congrArg Prod.snd htail
  have hzw : z = w := by
    apply Subtype.ext
    apply Complex.ext
    · dsimp only [centeredOffset] at ho
      linarith
    · simpa only [signedHeight] using hh
  subst w
  have hij : i = j := Fin.ext hi
  subst j
  rfl

/-- Finite multiplicity-weighted horizontal defect in one canonical absolute
height head. A test function may distinguish positive and negative signed
ordinates even though the inventory cutoff is absolute. -/
def horizontalDefect (T : ℝ) (test : ℝ → ℝ) : ℝ :=
  ∑ z ∈ CanonicalZeroDivisor.heightHead T,
    (CanonicalZeroDivisor.multiplicity z : ℝ) * test (signedHeight z) *
      centeredOffset z ^ 2

/-- Nonnegative tests give a nonnegative horizontal defect. Reflection pairs
reinforce through the square rather than cancel, but no trace formula is
claimed. -/
theorem horizontalDefect_nonneg
    (T : ℝ) (test : ℝ → ℝ) (htest : ∀ t, 0 ≤ test t) :
    0 ≤ horizontalDefect T test := by
  unfold horizontalDefect
  apply Finset.sum_nonneg
  intro z hz
  exact mul_nonneg
    (mul_nonneg (by positivity) (htest (signedHeight z)))
    (sq_nonneg (centeredOffset z))

/-- Under signed-height injectivity, every finite horizontal defect vanishes
for every test function. -/
theorem horizontalDefect_eq_zero_of_signedHeight_injective
    (hinjective : Function.Injective signedHeight)
    (T : ℝ) (test : ℝ → ℝ) :
    horizontalDefect T test = 0 := by
  unfold horizontalDefect
  apply Finset.sum_eq_zero
  intro z hz
  rw [centeredOffset_eq_zero_of_signedHeight_injective hinjective z]
  simp

/-- The canonical RH proposition also annihilates every finite horizontal
defect. This direction supplies a consistency check, not the missing converse
from a trace or cohomological source. -/
theorem horizontalDefect_eq_zero_of_riemannHypothesis
    (hRH : _root_.RiemannHypothesis)
    (T : ℝ) (test : ℝ → ℝ) :
    horizontalDefect T test = 0 := by
  unfold horizontalDefect
  apply Finset.sum_eq_zero
  intro z hz
  have hline : z.1.re = 1 / 2 :=
    hRH z.1 z.2.1 z.2.2.1 z.2.2.2
  have hoffset : centeredOffset z = 0 := by
    unfold centeredOffset
    linarith
  rw [hoffset]
  simp

end
end GRWTSK.RiemannHypothesis.HeightCollisionLift
