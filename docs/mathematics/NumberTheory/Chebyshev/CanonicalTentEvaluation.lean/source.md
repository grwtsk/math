# Complete source: GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fb43bafae3c904f7934359c58d57b6cea10b878` · SHA-256 `8b5b25f612fb3ccb776644e84797254170e988c75750ea794f10c1fb48665c1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.EnclosedZeroInventory

set_option autoImplicit false

/-!
# Checked tent evaluation of the actual canonical finite-height zeta head

Geometry and numerical error are decidable finite tests. Actual local zero/order
witnesses and a complete canonical-count upper bound are independent analytic
proofs. They derive the source equivalence and exact multiplicities consumed by
the existing tent-enclosure theorem. No contour identity, tail or margin is added.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation

open scoped BigOperators
open GRWTSK.RiemannHypothesis
open CanonicalZeroDivisor EnclosedZeroInventory
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalMellinFamily (Member memberAt)
open RationalTentEnclosure (CoordinateData radiusAt)
open TentMellinKernel

/-- Finite tests only: analytic existence/order/count assertions cannot be data flags. -/
def checkWithin (family : List Member) (T x h : ℚ) (tr : RationalTentFamily.Trace)
    (d : CoordinateData) (ε : ℚ) : Bool :=
  checkGeometry family T d && RationalTentEnclosure.checkWithin family x h tr d ε

/-- The sum is over the existing actual heightHead, with its source-defined analytic orders.
No independent source-equivalence, exact-multiplicity or per-parameter strip premise remains. -/
theorem checkWithin_sound {family : List Member} {T x h ε : ℚ}
    {tr : RationalTentFamily.Trace} {d : CoordinateData}
    (hc : checkWithin family T x h tr d ε = true)
    (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) z.1) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  classical
  have hp : checkGeometry family T d = true ∧
      RationalTentEnclosure.checkWithin family x h tr d ε = true := by
    simpa only [checkWithin, Bool.and_eq_true] using hc
  obtain ⟨e, hclose, hmult⟩ := exists_canonical_equiv hp.1 hloc hcount
  let ρ : ℕ → ℂ := fun i =>
    if hi : i ∈ Finset.range family.length then (e ⟨i, hi⟩).1.1 else 0
  have heq : ∀ i : RecordIndex family, ρ i = (e i).1.1 := by
    intro i
    simp only [ρ, dif_pos i.2]
  have hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ) := by
    intro i hi
    rw [heq ⟨i, hi⟩]
    exact hclose ⟨i, hi⟩
  have hstrip : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1 := by
    intro i hi
    rw [heq ⟨i, hi⟩]
    exact (point_mem_strip (e ⟨i, hi⟩).1).2.le
  have ht := RationalTentEnclosure.reindexed_source_sound hp.2
    (fun z : Head (T : ℝ) => z.1.1) (fun z : Head (T : ℝ) => multiplicity z.1)
    e ρ heq (fun i => (hmult i).symm) hstrip hr
  have hs : (∑ z : Head (T : ℝ), (multiplicity z.1 : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) z.1.1) =
      ∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) *
        tentKernel (x : ℝ) (h : ℝ) z.1 :=
    Finset.sum_attach _ _
  rwa [hs] at ht

/-- A separately certified numerical upper count U can be squeezed by record mass.
Checking U alone is not proof that it bounds the actual canonical count. -/
theorem checkWithin_sound_of_count_upper {family : List Member} {T x h ε : ℚ}
    {tr : RationalTentFamily.Trace} {d : CoordinateData} {U : ℕ}
    (hc : checkWithin family T x h tr d ε = true)
    (hloc : LocalWitnesses family d)
    (hupper : heightCount (T : ℝ) ≤ U) (hfill : U ≤ recordMass family) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) z.1) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) :=
  checkWithin_sound hc hloc (hupper.trans hfill)

end GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation
```
