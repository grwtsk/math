# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e995ace41d3a4074bfb63ddde0eda2d7df4d779` · SHA-256 `937277be26dfc90b4414aaa0024ea69ce5eb2b213c96e5e9637444889342b0bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.Tactic

set_option autoImplicit false

open MeasureTheory
open scoped ENNReal

/-!
# Bombieri moment obstruction for the literal canonical square-tent realization

Bombieri's official Clay problem description states Weil's explicit formula on a
piecewise-C1 class `W` of functions on the positive half-line.  Its quoted RH
criterion uses functions built from a test `g ∈ W` satisfying both moment conditions

  integral g(x) dx / x = 0,
  integral g(x) dx = 0.

This file isolates only those two typed moment conditions.  The canonical square
tents are nonnegative, nonzero and compactly supported in the positive half-line, so
their ordinary moment is strictly positive.  Therefore no literal realization of the
canonical basis by nonzero scalar multiples of those tents can land in Bombieri's
zero-moment test class.

This is a test-class obstruction before any classical Weil cross term is computed.
It does not refute an arbitrary moment-corrected realization, does not construct a
classical Weil form, and defines no criterion or RH adapter.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction

open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction

/-- Exact publication used for the moment conditions. -/
def bombieriSourcePublication : String :=
  "E. Bombieri, Problems of the Millennium: the Riemann Hypothesis, " ++
  "Clay Mathematics Institute, section V, pp. 8-9"

/-- Exact source statement used here.  The string records provenance only; the
actual mathematical obligations are the typed equalities below. -/
def bombieriSourceStatement : String :=
  "Weil criterion test g in W with integral_0^infty g(x) dx/x = 0 and " ++
  "integral_0^infty g(x) dx = 0"

/-- The real canonical square tent at coefficient index `i`; it is the source stage
`i+2` used by the finite arithmetic polarization. -/
noncomputable def canonicalTentReal (i : ℕ) : ℝ → ℝ :=
  fun x => tent (squareCenter (i + 2)) (squareRadius (i + 2)) x

/-- The same literal tent regarded as a complex-valued Bombieri test candidate. -/
noncomputable def canonicalTentComplex (i : ℕ) : ℝ → ℂ :=
  fun x => (canonicalTentReal i x : ℂ)

/-- Canonical tents are continuous. -/
theorem canonicalTentReal_continuous (i : ℕ) :
    Continuous (canonicalTentReal i) := by
  unfold canonicalTentReal tent
  fun_prop

/-- Canonical tents vanish outside their closed square window, hence have compact
support. -/
theorem canonicalTentReal_hasCompactSupport (i : ℕ) :
    HasCompactSupport (canonicalTentReal i) := by
  let n := i + 2
  refine HasCompactSupport.intro
    (isCompact_Icc : IsCompact
      (Set.Icc (squareCenter n - squareRadius n)
        (squareCenter n + squareRadius n))) ?_
  intro x hx
  change tent (squareCenter n) (squareRadius n) x = 0
  apply tent_eq_zero_of_outside _ _ _ (squareRadius_pos n)
  intro hinside
  exact hx ⟨hinside.1.le, hinside.2.le⟩

/-- Canonical tents are Lebesgue integrable on the real line. -/
theorem canonicalTentReal_integrable (i : ℕ) :
    Integrable (canonicalTentReal i) :=
  (canonicalTentReal_continuous i).integrable_of_hasCompactSupport
    (canonicalTentReal_hasCompactSupport i)

/-- The ordinary positive-half-line moment of every canonical tent is strictly
positive.  No exact area formula is needed: the open support interval has positive
measure and the tent is nonnegative. -/
theorem canonicalTentReal_ordinaryMoment_pos (i : ℕ) :
    0 < ∫ x in Set.Ioi (0 : ℝ), canonicalTentReal i x := by
  let n := i + 2
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (canonicalTentReal_integrable i).integrableOn).2 ?_
  · exact Filter.Eventually.of_forall fun x =>
      tent_nonneg (squareCenter n) (squareRadius n) x
  · have hsub :
        Set.Ioo (squareCenter n - squareRadius n)
            (squareCenter n + squareRadius n) ⊆
          Function.support (canonicalTentReal i) ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · change canonicalTentReal i x ≠ 0
        change tent (squareCenter n) (squareRadius n) x ≠ 0
        exact ne_of_gt
          ((tent_pos_iff (squareCenter n) (squareRadius n) x
            (squareRadius_pos n)).2 hx)
      · have hleft : 0 < squareCenter n - squareRadius n := by
          rw [center_sub_radius]
          positivity
        exact hleft.trans hx.1
    have hvol :
        0 < volume
          (Set.Ioo (squareCenter n - squareRadius n)
            (squareCenter n + squareRadius n)) := by
      rw [Real.volume_Ioo]
      apply ENNReal.ofReal_pos.mpr
      linarith [squareRadius_pos n]
    exact hvol.trans_le (measure_mono hsub)

/-- Bombieri's ordinary positive-half-line moment. -/
noncomputable def bombieriOrdinaryMoment (g : ℝ → ℂ) : ℂ :=
  ∫ x in Set.Ioi (0 : ℝ), g x

/-- The two source-stated moment conditions in Bombieri's formulation.  This record
intentionally does not pretend to formalize the remaining piecewise-C1 and decay
conditions of the source class `W`. -/
structure BombieriZeroMomentConditions (g : ℝ → ℂ) : Prop where
  multiplicativeMoment_zero :
    (∫ x in Set.Ioi (0 : ℝ), g x / (x : ℂ)) = 0
  ordinaryMoment_zero : bombieriOrdinaryMoment g = 0

/-- The complex ordinary moment is the complex embedding of the real tent moment. -/
theorem bombieriOrdinaryMoment_canonicalTent_eq (i : ℕ) :
    bombieriOrdinaryMoment (canonicalTentComplex i) =
      ((∫ x in Set.Ioi (0 : ℝ), canonicalTentReal i x : ℝ) : ℂ) := by
  unfold bombieriOrdinaryMoment canonicalTentComplex
  exact integral_ofReal (f := canonicalTentReal i)
    (μ := volume.restrict (Set.Ioi (0 : ℝ)))

/-- A canonical square tent has nonzero ordinary Bombieri moment. -/
theorem bombieriOrdinaryMoment_canonicalTent_ne_zero (i : ℕ) :
    bombieriOrdinaryMoment (canonicalTentComplex i) ≠ 0 := by
  rw [bombieriOrdinaryMoment_canonicalTent_eq]
  exact Complex.ofReal_ne_zero.mpr
    (ne_of_gt (canonicalTentReal_ordinaryMoment_pos i))

/-- Nonzero scalar renormalization cannot repair the ordinary moment condition. -/
theorem bombieriOrdinaryMoment_scaledCanonicalTent_ne_zero
    (i : ℕ) {c : ℂ} (hc : c ≠ 0) :
    bombieriOrdinaryMoment (fun x => c * canonicalTentComplex i x) ≠ 0 := by
  unfold bombieriOrdinaryMoment
  rw [integral_const_mul]
  exact mul_ne_zero hc (bombieriOrdinaryMoment_canonicalTent_ne_zero i)

/-- The literal canonical tent does not satisfy Bombieri's two zero-moment
conditions; the ordinary condition already fails. -/
theorem canonicalTent_not_bombieriZeroMomentConditions (i : ℕ) :
    ¬ BombieriZeroMomentConditions (canonicalTentComplex i) := by
  intro h
  exact (bombieriOrdinaryMoment_canonicalTent_ne_zero i)
    h.ordinaryMoment_zero

/-- A direct source-bound candidate for realizing the finite canonical basis inside
Bombieri's zero-moment class.  It permits a separate nonzero complex normalization
for every basis vector, but forbids changing the actual tent shape by moment
corrections or basis mixing.

The underlying classical model and form remain fully typed through
`GuinandWeilCompactSupportModel`; the additional field requires every admitted
vector to satisfy Bombieri's two source-stated moments. -/
structure BombieriScaledCanonicalTentRealization (M : ℕ) where
  model : GuinandWeilCompactSupportModel M (ℝ → ℂ)
  all_vectors_zero_moments :
    ∀ f : model.space.Vector, BombieriZeroMomentConditions f.1
  basisScale : Fin (M + 1) → ℂ
  basisScale_ne_zero : ∀ i, basisScale i ≠ 0
  basis_function_eq : ∀ i : Fin (M + 1),
    (model.realization (basisCombination i)).1 =
      fun x => basisScale i * canonicalTentComplex i.1 x
  sourcePublication_eq : model.sourcePublication = bombieriSourcePublication
  sourceTheorem_eq : model.sourceTheorem = bombieriSourceStatement

/-- No direct realization by nonzero scalar multiples of the actual canonical tents
can inhabit Bombieri's zero-moment class. -/
theorem no_bombieriScaledCanonicalTentRealization (M : ℕ) :
    ¬ Nonempty (BombieriScaledCanonicalTentRealization M) := by
  rintro ⟨candidate⟩
  let i : Fin (M + 1) := ⟨0, Nat.succ_pos M⟩
  have hzero :=
    (candidate.all_vectors_zero_moments
      (candidate.model.realization (basisCombination i))).ordinaryMoment_zero
  rw [candidate.basis_function_eq i] at hzero
  exact
    (bombieriOrdinaryMoment_scaledCanonicalTent_ne_zero i.1
      (candidate.basisScale_ne_zero i)) hzero

/-- Consequently there is no exact all-pairs transport whose classical model uses
this direct Bombieri realization.  The contradiction occurs before the form
comparison is used. -/
theorem no_exactTransport_with_directBombieriTentBasis (M : ℕ) :
    ¬ ∃ candidate : BombieriScaledCanonicalTentRealization M,
      Nonempty (ExactSourceBoundTransport candidate.model) := by
  rintro ⟨candidate, transport⟩
  exact no_bombieriScaledCanonicalTentRealization M ⟨candidate⟩

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
```
