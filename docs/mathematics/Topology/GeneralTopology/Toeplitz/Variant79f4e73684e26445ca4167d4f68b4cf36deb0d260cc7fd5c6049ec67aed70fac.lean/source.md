# Complete source: GRWTSK.Topology.GeneralTopology.Toeplitz.Variant79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96882b82540d393543afb935984b5f7512cdb7b7` · SHA-256 `79f4e73684e26445ca4167d4f68b4cf36deb0d260cc7fd5c6049ec67aed70fac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors

/-!
# Exact normalization and limit transports for PF-infinity

These are auxiliary closure theorems, NOT the ASWE/Edrei classification. The
limit is explicitly the coefficientwise limit of the original sequences, and
the signs are never replaced by absolute values. Infinite-order positivity is
not inferred from finitely many checked minor sizes.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

open Filter
open scoped Topology

noncomputable section

/-- Multiplying every coefficient by a common scalar multiplies an order-k minor by t^k. -/
theorem minor_amplitude (a : ℕ → ℝ) (t : ℝ) {k : ℕ} (r c : Fin k → ℕ) :
    minor (fun n => t * a n) r c = t ^ k * minor a r c := by
  have hm : (Matrix.of (fun i j => entry (fun n => t * a n) (r i) (c j))) =
      t • Matrix.of (fun i j => entry a (r i) (c j)) := by
    funext i j
    simp only [Matrix.of_apply, Matrix.smul_apply, entry, smul_eq_mul]
    split_ifs <;> simp
  change (Matrix.of (fun i j => entry (fun n => t * a n) (r i) (c j))).det =
    t ^ k * (Matrix.of (fun i j => entry a (r i) (c j))).det
  rw [hm, Matrix.det_smul]
  simp only [Fintype.card_fin]

/-- Positive normalization preserves and reflects the entire PF-infinity condition. -/
theorem pfInfinity_amplitude_iff (a : ℕ → ℝ) (t : ℝ) (ht : 0 < t) :
    PFInfinity (fun n => t * a n) ↔ PFInfinity a := by
  constructor
  · intro h k r c
    have he := h k r c
    rw [minor_amplitude] at he
    exact (mul_nonneg_iff_of_pos_left (pow_pos ht k)).mp he
  · intro h k r c
    rw [minor_amplitude]
    exact mul_nonneg (pow_pos ht k).le (h k r c)

/-- Each particular finite signed minor is continuous in the full coefficient tape. -/
theorem continuous_minor {k : ℕ} (r c : Fin k → ℕ) :
    Continuous (fun a : ℕ → ℝ => minor a r c) := by
  change Continuous (fun a : ℕ → ℝ =>
    (Matrix.of (fun i j => entry a (r i) (c j))).det)
  simp_rw [Matrix.det_apply', Matrix.of_apply]
  apply continuous_finsetSum
  intro σ _hσ
  apply continuous_const.mul
  apply continuous_finsetProd
  intro i _hi
  unfold entry
  split_ifs
  · exact continuous_apply _
  · exact continuous_const

/-- Entrywise convergence of coefficient tapes gives convergence of each actual minor. -/
theorem minor_tendsto (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (h : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    {k : ℕ} (r c : Fin k → ℕ) :
    Tendsto (fun j => minor (a j) r c) atTop (𝓝 (minor b r c)) :=
  ((continuous_minor r c).tendsto b).comp (tendsto_pi_nhds.mpr h)

/-- The limit retains nonnegativity when each FIXED ordered minor is eventually nonnegative. -/
theorem pfInfinity_of_eventually_minor_nonnegative
    (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (hlim : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    (hpos : ∀ k : ℕ, ∀ r c : Fin k ↪o ℕ,
      ∀ᶠ j in atTop, 0 ≤ minor (a j) r c) : PFInfinity b := by
  intro k r c
  exact ge_of_tendsto (minor_tendsto a b hlim r c) (hpos k r c)

/-- In particular, coefficientwise limits of PF-infinity sequences remain PF-infinity. -/
theorem pfInfinity_of_coefficientwise_limit
    (a : ℕ → ℕ → ℝ) (b : ℕ → ℝ)
    (hlim : ∀ n, Tendsto (fun j => a j n) atTop (𝓝 (b n)))
    (hpos : ∀ j, PFInfinity (a j)) : PFInfinity b := by
  apply pfInfinity_of_eventually_minor_nonnegative a b hlim
  intro k r c
  exact Filter.Eventually.of_forall (fun j => hpos j k r c)

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
```
