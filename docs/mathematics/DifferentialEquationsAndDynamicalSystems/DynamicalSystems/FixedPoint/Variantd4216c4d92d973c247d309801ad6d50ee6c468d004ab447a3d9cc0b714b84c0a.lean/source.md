# Complete source: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPoint.Variantd4216c4d92d973c247d309801ad6d50ee6c468d004ab447a3d9cc0b714b84c0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7dbe1b56ad9aeca3710510ad20e03434dc78d13` · SHA-256 `e00e08a29d7bf5320a965f341748f09a387aaa69bf67817f86e3cc25e1e23483`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: DifferentialEquationsAndDynamicalSystems.DynamicalSystems
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPoint.Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.DynamicalSystems.SourceCorpus.FixedPoint.Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a","mathematical_subject":"Analysis.DynamicalSystems","original_sha256":"c72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/FixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Dynamics.FixedPoints.Basic
import Mathematics.Relaxation.Operator

/-! # Finite termination at an exact fixed point -/


namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPoint.Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a

namespace Mathematics.Relaxation

/-- Exact fixed point for one specific relaxation operator. -/
structure FixedPoint (operator : Operator) where
  state : State
  fixed : Function.IsFixedPt operator.step state

namespace Operator

/--
Every trajectory reaches an exact fixed point after finitely many steps,
because every nonfixed step strictly lowers a natural-valued measure.
-/
theorem eventually_fixed
    (operator : Operator)
    (initial : State) :
    ∃ iteration,
      Function.IsFixedPt operator.step
        ((operator.step^[iteration]) initial) := by
  induction measureEquation : operator.energy.measure initial using
      Nat.strong_induction_on generalizing initial with
  | h measure inductionHypothesis =>
      by_cases fixed : operator.step initial = initial
      · exact ⟨0, by simpa [Function.IsFixedPt] using fixed⟩
      · have decreases :
            operator.energy.measure (operator.step initial) < measure := by
          simpa [measureEquation] using operator.strict_descent initial fixed
        obtain ⟨iteration, eventually⟩ :=
          inductionHypothesis
            (operator.energy.measure (operator.step initial))
            decreases
            (operator.step initial)
            rfl
        refine ⟨iteration + 1, ?_⟩
        simpa [Function.iterate_succ_apply] using eventually

/-- The termination witness packages directly as an exact fixed point. -/
theorem reaches_fixed_point
    (operator : Operator)
    (initial : State) :
    Nonempty (FixedPoint operator) := by
  obtain ⟨iteration, fixed⟩ := operator.eventually_fixed initial
  exact ⟨⟨(operator.step^[iteration]) initial, fixed⟩⟩

/-- Every finite iterate preserves all hard constraints. -/
theorem iterates_preserve_constraints
    (operator : Operator)
    (initial : State)
    (initialValid :
      SatisfiesAll operator.constraints initial) :
    ∀ iteration,
      SatisfiesAll operator.constraints
        ((operator.step^[iteration]) initial) := by
  intro iteration
  induction iteration with
  | zero =>
      simpa using initialValid
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        operator.constraints_preserved
          ((operator.step^[iteration]) initial)
          inductionHypothesis

/-- Every finite iterate preserves the exact immutable work package. -/
theorem iterates_preserve_scope
    (operator : Operator)
    (initial : State) :
    ∀ iteration,
      ((operator.step^[iteration]) initial).workPackage =
        initial.workPackage := by
  intro iteration
  induction iteration with
  | zero => rfl
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        (operator.source_preserved
          ((operator.step^[iteration]) initial)).2.trans
          inductionHypothesis

end Operator

end Mathematics.Relaxation
```
