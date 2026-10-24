# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveAtlasQuadraticCertificate.Variant408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4e1817d4a9ca33fdea39e1e53366ba638618d9a` · SHA-256 `408e0c0ca28f94195080f77597ae382765c5f66ba77daf1f89ea7faa2ef07017`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate
import Mathlib.Tactic

/-!
Exact rational checker fixtures: a genuine Gram identity, a rejected negative
target, and a constrained target whose global sign remains negative. This checks
that certificate soundness retains its admissibility boundary.
AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures

open Matrix
open scoped Matrix

private def gramProblem : Problem ℚ Unit Empty Empty where
  target := fun _ _ => 4
  equalities := fun e => nomatch e
  inequalities := fun e => nomatch e

private def gramCertificate : Certificate ℚ Unit Empty Empty Unit where
  gram := fun _ _ => 2
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun e => nomatch e

/-- The executable rational checker accepts an exact nonzero Gram factor. -/
theorem accepts_gram : check gramProblem gramCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    exact g.elim
  · ext i j
    norm_num [gramProblem, gramCertificate, Matrix.mul_apply, Matrix.transpose_apply]
    change (4 : ℚ) = ∑ _ : Unit, (2 : ℚ) * 2
    norm_num

private def negativeProblem : Problem ℚ Unit Empty Empty where
  target := fun _ _ => -1
  equalities := fun e => nomatch e
  inequalities := fun e => nomatch e

/-- The same Gram payload cannot certify a negative target. -/
theorem rejects_negative : check negativeProblem gramCertificate = false := by
  unfold check
  rw [decide_eq_false_iff_not]
  intro h
  have hentry := congrFun (congrFun h.2 ()) ()
  norm_num [negativeProblem, gramCertificate, Matrix.mul_apply, Matrix.transpose_apply] at hentry
  change (-1 : ℚ) = ∑ _ : Unit, (2 : ℚ) * 2 at hentry
  norm_num at hentry

private def constrainedProblem : Problem ℚ Unit Unit Empty where
  target := fun _ _ => -1
  equalities := fun _ => fun _ _ => 1
  inequalities := fun e => nomatch e

private def constrainedCertificate : Certificate ℚ Unit Unit Empty Unit where
  gram := 0
  equalityMultipliers := fun _ => -1
  inequalityMultipliers := fun e => nomatch e

/-- Equality constraints may certify a target only on their admissible fiber. -/
theorem accepts_constrained : check constrainedProblem constrainedCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    exact g.elim
  · ext i j
    norm_num [constrainedProblem, constrainedCertificate]
    change (-1 : ℚ) = -1 * 1
    norm_num

private def inequalityProblem : Problem ℚ Unit Empty Unit where
  target := fun _ _ => 1
  equalities := fun e => nomatch e
  inequalities := fun _ => fun _ _ => 1

private def inequalityCertificate : Certificate ℚ Unit Empty Unit Unit where
  gram := 0
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun _ => 1

/-- A nonempty sign-constraint family is checked with its actual multiplier. -/
theorem accepts_inequality : check inequalityProblem inequalityCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    norm_num [inequalityCertificate]
  · ext i j
    norm_num [inequalityProblem, inequalityCertificate]
    change (1 : ℚ) = 1 * 1
    norm_num

private def negativeMultiplierProblem : Problem ℚ Unit Empty Unit where
  target := fun _ _ => -1
  equalities := fun e => nomatch e
  inequalities := fun _ => fun _ _ => 1

private def negativeMultiplierCertificate : Certificate ℚ Unit Empty Unit Unit where
  gram := 0
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun _ => -1

/-- An exact matrix identity with a negative inequality multiplier is rejected. -/
theorem rejects_negative_multiplier :
    check negativeMultiplierProblem negativeMultiplierCertificate = false := by
  unfold check
  rw [decide_eq_false_iff_not]
  intro h
  have hsign := h.1 ()
  norm_num [negativeMultiplierCertificate] at hsign

/-- Exact refinement transports a checked nonempty inequality family. -/
theorem transports_inequality :
    check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
      (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ))) = true :=
  check_pullback inequalityProblem inequalityCertificate accepts_inequality _

/-- The constrained target still has a negative value outside that fiber. -/
theorem constrained_target_negative : quadratic constrainedProblem.target (fun _ => 2) = -4 := by
  norm_num [quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

/-- The hostile vector is correctly excluded by the equality constraint. -/
theorem hostile_vector_not_admissible : ¬constrainedProblem.Admissible (fun _ => 2) := by
  norm_num [Problem.Admissible, quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

#eval [check gramProblem gramCertificate, check negativeProblem gramCertificate,
  check constrainedProblem constrainedCertificate, check inequalityProblem inequalityCertificate,
  check negativeMultiplierProblem negativeMultiplierCertificate,
  check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
    (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ)))]

end FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures
```
