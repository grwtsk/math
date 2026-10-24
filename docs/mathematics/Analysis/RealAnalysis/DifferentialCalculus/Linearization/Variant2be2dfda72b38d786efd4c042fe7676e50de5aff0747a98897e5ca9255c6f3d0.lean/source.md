# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linearization.Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4814f63849129b4aa7e1e363c9ffb09d1d8e6442` · SHA-256 `9701e8883a990dfeba217fb34c76294a74a273cc649dff3dafa92602c807cb70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LinearizationCertificate.Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.LinearizationCertificate.Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983","mathematical_subject":"Analysis.Calculus","original_sha256":"10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/Linearization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Stability
import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Fixed-point linearization certificates

A spectral operator is relevant to a nonlinear update only after it is proved
to be that update's derivative at the named exact fixed point.  Hilbert
spectral conclusions require a second commuting-square certificate.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LinearizationCertificate.Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983

namespace Mathematics.Operational

universe u v

/-- Fréchet derivative and an explicit local quadratic remainder estimate. -/
structure LinearizationCertificate
    {State : Type u}
    [NormedAddCommGroup State]
    [NormedSpace ℂ State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) where
  derivative : State →L[ℂ] State
  hasFDerivAt :
    HasFDerivAt operator.rawMap derivative
      (fixedPoint.point : State)
  radius : ℝ
  radius_positive : 0 < radius
  remainderConstant : ℝ
  remainderConstant_nonnegative :
    0 ≤ remainderConstant
  quadraticRemainder :
    ∀ displacement : State,
      ‖displacement‖ ≤ radius →
      ‖operator.rawMap
            ((fixedPoint.point : State) + displacement) -
          (fixedPoint.point : State) -
          derivative displacement‖ ≤
        remainderConstant * ‖displacement‖ ^ 2

/--
The Hilbert derivative represents the Banach derivative only through this
exact intertwining square.
-/
structure LinearizationIntertwining
    {BanachState : Type u}
    {HilbertState : Type v}
    [NormedAddCommGroup BanachState]
    [NormedSpace ℂ BanachState]
    [NormedAddCommGroup HilbertState]
    [NormedSpace ℂ HilbertState]
    (realization : BanachState →L[ℂ] HilbertState)
    (banachDerivative : BanachState →L[ℂ] BanachState) where
  hilbertDerivative :
    HilbertState →L[ℂ] HilbertState
  intertwines :
    hilbertDerivative.comp realization =
      realization.comp banachDerivative

namespace LinearizationIntertwining

variable
    {BanachState : Type u}
    {HilbertState : Type v}
    [NormedAddCommGroup BanachState]
    [NormedSpace ℂ BanachState]
    [NormedAddCommGroup HilbertState]
    [NormedSpace ℂ HilbertState]
    {realization : BanachState →L[ℂ] HilbertState}
    {banachDerivative : BanachState →L[ℂ] BanachState}

/-- Pointwise form of the exact derivative commuting square. -/
theorem apply
    (certificate :
      LinearizationIntertwining realization banachDerivative)
    (displacement : BanachState) :
    certificate.hilbertDerivative (realization displacement) =
      realization (banachDerivative displacement) := by
  simpa using
    congrArg
      (fun map ↦ map displacement)
      certificate.intertwines

end LinearizationIntertwining

/--
Finite-dimensional Hilbert Lyapunov-operator certificate.  The exact
quadratic inequality is proof-bearing; a floating-point eigenvalue list
cannot fill this field.
-/
structure FiniteLyapunovOperatorCertificate
    (HilbertState : Type u)
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState] where
  derivative :
    HilbertState →L[ℂ] HilbertState
  energyOperator :
    HilbertState →L[ℂ] HilbertState
  energyOperator_selfAdjoint :
    ∀ left right,
      inner ℂ (energyOperator left) right =
        inner ℂ left (energyOperator right)
  coerciveConstant : ℝ
  coerciveConstant_positive : 0 < coerciveConstant
  energy_coercive :
    ∀ state,
      coerciveConstant * ‖state‖ ^ 2 ≤
        (inner ℂ state (energyOperator state)).re
  decrease : ℝ
  decrease_positive : 0 < decrease
  operator_decreases_energy :
    ∀ state,
      (inner ℂ (derivative state)
          (energyOperator (derivative state))).re ≤
        (inner ℂ state (energyOperator state)).re -
          decrease * ‖state‖ ^ 2
  coordinateCertificate : ObjectAddress

namespace FiniteLyapunovOperatorCertificate

/-- Rearranged exact energy decrease, useful to downstream stability proofs. -/
theorem decreased_energy_with_margin
    {HilbertState : Type u}
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState]
    (certificate :
      FiniteLyapunovOperatorCertificate HilbertState)
    (state : HilbertState) :
    (inner ℂ (certificate.derivative state)
        (certificate.energyOperator
          (certificate.derivative state))).re +
        certificate.decrease * ‖state‖ ^ 2 ≤
      (inner ℂ state
        (certificate.energyOperator state)).re := by
  linarith [certificate.operator_decreases_energy state]

end FiniteLyapunovOperatorCertificate

/--
Exact or interval payloads remain data until a proved checker accepts them.
The checker theorem, not the payload, yields the proposition.
-/
structure VerifiedNumericalChecker
    (Payload : Type u)
    (Claim : Payload → Prop) where
  check : Payload → Bool
  sound : ∀ payload, check payload = true → Claim payload

namespace VerifiedNumericalChecker

theorem proves_after_acceptance
    {Payload : Type u}
    {Claim : Payload → Prop}
    (checker : VerifiedNumericalChecker Payload Claim)
    (payload : Payload)
    (accepted : checker.check payload = true) :
    Claim payload :=
  checker.sound payload accepted

end VerifiedNumericalChecker

end Mathematics.Operational
```
