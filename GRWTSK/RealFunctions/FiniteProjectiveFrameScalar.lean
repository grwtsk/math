/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Upstream Mathlib results retain original authors and licenses. -/
import Mathlib

set_option autoImplicit false

/-!
# Scalar Gram inequality for a two-direction projective frame

Given unit vectors with inner product c, a projective chord gap σ
supplies σ² ≤ 2-2c and σ² ≤ 2+2c. The signed Gram expression
  D = a²+b²-2abc
then controls the sum of squared axial coefficients.

This purely real-algebraic leaf separates every sign case for ab,
including opposite axial orientations. It does not import an
analytic Kakeya theorem or assume a frame inequality as an axiom.
-/

namespace GRWTSK.Analysis.Geometry.FiniteProjectiveFrameScalar

/-- The projective Gram lower bound. The hypothesis σ²≤2 follows
from adding the two genuine unit-chord inequalities; it is kept
explicit for this reusable scalar lemma. -/
theorem gram_lower_of_two_chords
    (sigma a b c : ℝ)
    (hsmall : sigma ^ 2 ≤ 2)
    (hminus : sigma ^ 2 ≤ 2 - 2 * c)
    (hplus : sigma ^ 2 ≤ 2 + 2 * c) :
    sigma ^ 2 * (a ^ 2 + b ^ 2) ≤
      2 * (a ^ 2 + b ^ 2 - 2 * a * b * c) := by
  rcases le_total 0 (a * b) with hab | hab
  · have hterm :
        0 ≤ (2 - 2 * c - sigma ^ 2) * (a * b) :=
      mul_nonneg (by linarith) hab
    have hsquare :
        0 ≤ (2 - sigma ^ 2) * (a - b) ^ 2 :=
      mul_nonneg (by linarith) (sq_nonneg _)
    nlinarith
  · have hterm :
        0 ≤ (2 + 2 * c - sigma ^ 2) * (-(a * b)) :=
      mul_nonneg (by linarith) (by linarith)
    have hsquare :
        0 ≤ (2 - sigma ^ 2) * (a + b) ^ 2 :=
      mul_nonneg (by linarith) (sq_nonneg _)
    nlinarith

/-- A nonsharp but fully explicit scalar frame constant σ²/4.
It consumes independently derived squared-norm identities:
2N=a²+b²+E and D≤2E. In the geometric consumer,
N=||z||² and E is the sum of transverse squared norms.
There is no free "transversality" hypothesis left in the
scalar calculation. -/
theorem frame_gap_from_gram_data
    (sigma a b c N E : ℝ)
    (hsmall : sigma ^ 2 ≤ 2)
    (hminus : sigma ^ 2 ≤ 2 - 2 * c)
    (hplus : sigma ^ 2 ≤ 2 + 2 * c)
    (henergy : a ^ 2 + b ^ 2 + E = 2 * N)
    (hgram : a ^ 2 + b ^ 2 - 2 * a * b * c ≤ 2 * E)
    (hE : 0 ≤ E) :
    (sigma ^ 2 / 4) * N ≤ E := by
  have hbase := gram_lower_of_two_chords
    sigma a b c hsmall hminus hplus
  have hfirst : sigma ^ 2 * (a ^ 2 + b ^ 2) ≤
      4 * E := by
    nlinarith
  have hscaled :=
    congrArg (fun t : ℝ => sigma ^ 2 * t) henergy
  have hsecond : sigma ^ 2 * E ≤ 2 * E :=
    mul_le_mul_of_nonneg_right hsmall hE
  have hbound : sigma ^ 2 * N ≤ 3 * E := by
    nlinarith [hscaled, hfirst, hsecond]
  nlinarith [hbound, hE]

end GRWTSK.Analysis.Geometry.FiniteProjectiveFrameScalar
