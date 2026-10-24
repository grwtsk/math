# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CountingTailControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da31871acbe30ff22643ab3f33975f988dcf602e` · SHA-256 `846c49d3cb6a5dff4326dd7ceb5a89b84ca39a7b9b479f87e06de72efc57d283`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CountedTentTail

set_option autoImplicit false

/-! Source controls for counting, coverage, multiplicity and terminal boundaries.
All parameter examples are synthetic, not zeta-zero records. NOT_RUN. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.CountingTailControls

open scoped BigOperators
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Complex.TentMellinKernel

/-- A finite empty observation has zero count, not an entire-family theorem. -/
theorem empty_observation_control :
    finiteCountingMass (∅ : Finset Unit) (fun _ => 2) (fun _ => 1) 3 = 0 ∧
      finiteCountingMass (Finset.univ : Finset Unit) (fun _ => 2) (fun _ => 1) 3 = 1 := by
  norm_num [finiteCountingMass]

/-- The threshold convention includes a record exactly at the right boundary. -/
theorem closed_counting_endpoint_control :
    finiteCountingMass (Finset.univ : Finset Unit) (fun _ => 2) (fun _ => 1) 2 = 1 ∧
      ¬ (2 : ℝ) < 2 := by norm_num [finiteCountingMass]

/-- Both height signs remain separate index records, even at equal absolute height. -/
theorem equal_absolute_heights_control :
    finiteCountingMass (Finset.univ : Finset Bool) (fun _ => 2) (fun _ => 1) 2 = 2 := by
  norm_num [finiteCountingMass]

/-- Natural multiplicities are weights, not a unique-height cardinality. -/
theorem multiplicity_control :
    finiteCountingMass (Finset.univ : Finset Unit) (fun _ => 2) (fun _ => 3) 2 = 3 := by
  norm_num [finiteCountingMass]

/-- One atom at R has its entire inverse-square mass in the boundary term;
its step integral over [T,R] is zero. Dropping that boundary loses the atom. -/
theorem terminal_boundary_control :
    (∫ t in (1 : ℝ)..2,
      2 * finiteCountingMass (Finset.univ : Finset Unit) (fun _ => 2) (fun _ => 1) t / t ^ 3) = 0 := by
  have h := finite_inverseSquare_identity (Finset.univ : Finset Unit)
    (fun _ => 2) (fun _ => 1) 1 2 (by norm_num) (by norm_num)
    (by intro i hi; norm_num) (by intro i hi; norm_num)
  norm_num only [Finset.sum_const, Finset.card_univ, Fintype.card_unique,
    one_nsmul] at h
  linarith

/-- A missing low-height record violates coverage before a tail theorem applies. -/
theorem missing_low_record_control :
    ¬ (∀ i : Unit, |(2 : ℝ)| ≤ 3 → i ∈ (∅ : Finset Unit)) := by simp

/-- A horizontal bound on selected line records says nothing about an omitted one. -/
theorem omitted_horizontal_control :
    (1 / 2 : ℝ) ≤ 1 / 2 ∧ ¬ (3 / 4 : ℝ) ≤ 1 / 2 ∧ (3 / 4 : ℝ) ≤ 1 := by norm_num

/-- Zero-height parameters cannot enter the strict positive-height complement. -/
theorem zero_height_control : ¬ (1 : ℝ) < |(0 : ℝ)| := by norm_num

/-- A count bound on an empty observed prefix does not control a heavy omitted record. -/
theorem observed_prefix_is_not_global_count :
    finiteCountingMass (∅ : Finset Unit) (fun _ => 2) (fun _ => 100) 2 = 0 ∧
      2 * Real.log 2 <
        finiteCountingMass (Finset.univ : Finset Unit) (fun _ => 2) (fun _ => 100) 2 := by
  constructor
  · simp [finiteCountingMass]
  · have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num [finiteCountingMass]
    linarith

end GRWTSK.NumberTheory.Chebyshev.Checks.CountingTailControls
```
