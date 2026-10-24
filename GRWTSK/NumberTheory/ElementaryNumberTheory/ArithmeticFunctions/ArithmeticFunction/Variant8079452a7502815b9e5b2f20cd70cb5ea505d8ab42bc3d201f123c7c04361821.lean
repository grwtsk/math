-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variant93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ArithmeticFunction.Variant93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/Number/ArithmeticFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.Payload

/-!
# Discrete arithmetic functions

Arithmetic functions belong to `Number`, not to `AnalyticNumber`.

This file contains discrete number-theoretic shells. Convergence of associated
Dirichlet series is not stated here. That belongs to `AnalyticNumber`.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variant93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a

namespace Number

/-- Arithmetic function shell indexed by natural numbers, ignoring zero. -/
structure ArithmeticFunction where
  value : Nat → Int
  ignoresZero : value 0 = 0

/--
Certificate-gated Dirichlet convolution statement.

This is still discrete arithmetic. A future Mathlib-backed implementation may
replace this shell with actual finite divisor-sum proofs.
-/
structure DirichletConvolutionCertificate
    (_f _g _h : ArithmeticFunction) where
  convolutionSound : Prop
  convolutionProof : convolutionSound

/-- The constant-one arithmetic function. -/
def oneFunction : ArithmeticFunction where
  value := fun n => if n = 0 then 0 else 1
  ignoresZero := by simp

/-- Dirichlet identity function ε. -/
def epsilonFunction : ArithmeticFunction where
  value := fun n => if n = 1 then 1 else 0
  ignoresZero := by simp

/-- Möbius function shell, as a discrete arithmetic object. -/
structure MobiusFunction where
  function : ArithmeticFunction
  inverseOfOne :
    DirichletConvolutionCertificate oneFunction function epsilonFunction

theorem dirichlet_convolution_sound
    {f g h : ArithmeticFunction}
    (C : DirichletConvolutionCertificate f g h) :
    C.convolutionSound :=
  C.convolutionProof

theorem mobius_inverse_of_one
    (μ : MobiusFunction) :
    μ.inverseOfOne.convolutionSound :=
  μ.inverseOfOne.convolutionProof

/--
A discrete arithmetic function does not define an analytic Dirichlet series by
itself. The analytic series object is introduced later in `AnalyticNumber`.
-/
def ArithmeticFunctionOwnsAnalyticSeries
    (_f : ArithmeticFunction) : Prop :=
  False

theorem arithmetic_function_not_analytic_series
    (f : ArithmeticFunction) :
    ¬ ArithmeticFunctionOwnsAnalyticSeries f := by
  intro h
  exact h

end Number
