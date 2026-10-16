/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors, GRL-RH-1 / 0.4.0.
Formalization assistance: OpenAI Codex.
Mathematical source: M. B. Nathanson, The Hermite-Sylvester criterion for
real-rooted polynomials, arXiv:1911.01745, Lemmas 1-2.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.Complex.Basic

/-!
# Interpolation compatible with complex conjugation

On a finite conjugation-stable set, conjugation-compatible values admit an
interpolating polynomial with real coefficients and degree less than the
number of distinct nodes. Multiplicities are not interpolation conditions.
-/

set_option autoImplicit false

namespace GRWTSK.Polynomial.ConjugateInterpolation

open _root_.Polynomial ComplexConjugate

/-- A polynomial of bounded degree taking conjugation-compatible values on a
conjugation-stable set has real coefficients. -/
theorem coeff_im_eq_zero_of_eval_compatible
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (q : Polynomial ℂ) (degree_lt : q.degree < (nodes.card : WithBot ℕ))
    (compatible : ∀ z ∈ nodes, q.eval (conj z) = conj (q.eval z))
    (n : ℕ) : (q.coeff n).im = 0 := by
  have hmap : q.map (starRingEnd ℂ) = q := by
    apply Polynomial.eq_of_degrees_lt_of_eval_finset_eq nodes
      (lt_of_le_of_lt Polynomial.degree_map_le degree_lt) degree_lt
    intro z hz
    have heval := Polynomial.eval_map_apply (p := q) (starRingEnd ℂ) (conj z)
    have hcompatible := compatible (conj z) (closed z hz)
    have hcompatible' : q.eval z = conj (q.eval (conj z)) := by
      simpa only [Complex.conj_conj] using hcompatible
    calc
      (q.map (starRingEnd ℂ)).eval z = conj (q.eval (conj z)) := by
        simpa only [starRingEnd_apply, star_star] using heval
      _ = q.eval z := hcompatible'.symm
  have hcoeff : conj (q.coeff n) = q.coeff n := by
    simpa only [Polynomial.coeff_map, starRingEnd_apply] using
      congrArg (fun p : Polynomial ℂ => p.coeff n) hmap
  exact Complex.conj_eq_iff_im.mp hcoeff

/-- Real-coefficient interpolation on any finite conjugation-stable set.
The empty node set is allowed; the zero polynomial has degree `⊥`. -/
theorem exists_real_interpolate
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (values : ℂ → ℂ)
    (compatible : ∀ z ∈ nodes, values (conj z) = conj (values z)) :
    ∃ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) ∧
      ∀ z ∈ nodes, p.eval₂ Complex.ofRealHom z = values z := by
  classical
  let q : Polynomial ℂ := Lagrange.interpolate nodes id values
  have hdegree : q.degree < (nodes.card : WithBot ℕ) :=
    Lagrange.degree_interpolate_lt values Function.injective_id.injOn
  have heval : ∀ z ∈ nodes, q.eval z = values z := by
    intro z hz
    exact Lagrange.eval_interpolate_at_node values Function.injective_id.injOn hz
  have hreal : ∀ n : ℕ, (q.coeff n).im = 0 := by
    apply coeff_im_eq_zero_of_eval_compatible nodes closed q hdegree
    intro z hz
    rw [heval (conj z) (closed z hz), heval z hz, compatible z hz]
  let p : Polynomial ℝ := Polynomial.ofFinsupp <| AddMonoidAlgebra.ofCoeff <|
    q.toFinsupp.coeff.mapRange Complex.re (by simp)
  have hpcoeff : ∀ n : ℕ, p.coeff n = (q.coeff n).re := by
    intro n
    simp only [p, Polynomial.coeff_ofFinsupp, Finsupp.mapRange_apply,
      Polynomial.toFinsupp_apply]
  have hpmap : p.map Complex.ofRealHom = q := by
    ext n
    rw [Polynomial.coeff_map, hpcoeff]
    apply Complex.ext
    · rfl
    · simpa only [Complex.ofRealHom_eq_coe, Complex.ofReal_im] using (hreal n).symm
  refine ⟨p, ?_, ?_⟩
  · rw [← Polynomial.degree_map_eq_of_injective (f := Complex.ofRealHom)
      Complex.ofReal_injective p, hpmap]
    exact hdegree
  · intro z hz
    rw [Polynomial.eval₂_eq_eval_map, hpmap]
    exact heval z hz

end GRWTSK.Polynomial.ConjugateInterpolation
