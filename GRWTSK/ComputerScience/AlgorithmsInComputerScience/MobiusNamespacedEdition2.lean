-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteMobiusWindow.Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteMobiusWindow.Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b","mathematical_subject":"Computation.DataStructures","original_sha256":"77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/Number/Mobius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.EulerProduct

/-!
# Finite Möbius windows

Finite Möbius data belongs to `Number`.

This layer may record square-free weights, valuation support, and finite
reduction soundness. It still does not prove analytic identities involving
Dirichlet series or zeta functions.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteMobiusWindow.Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b

namespace Number

/-- Finite Möbius window over a finite prime window. -/
structure FiniteMobiusWindow where
  primeWindow : PrimeWindow
  squareFreeWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  finiteReductionSound : Prop
  finiteReductionProof : finiteReductionSound

theorem finite_mobius_window_sound
    (W : FiniteMobiusWindow) :
    W.finiteReductionSound :=
  W.finiteReductionProof

/-- Convert a finite Möbius window into the common arithmetic payload shape. -/
def FiniteMobiusWindow.toArithmeticPayload
    (W : FiniteMobiusWindow)
    (determinantCoeffs traceData : List Int) :
    ArithmeticPayload where
  mobiusWeight := W.squareFreeWeight
  valuationSupport := W.valuationSupport
  hasPrimePowerDependence := W.hasPrimePowerDependence
  determinantCoeffs := determinantCoeffs
  traceData := traceData
  finiteSound := W.finiteReductionSound
  finiteSoundProof := W.finiteReductionProof

@[simp] theorem finiteMobius_toPayload_weight
    (W : FiniteMobiusWindow)
    (det trace : List Int) :
    (W.toArithmeticPayload det trace).mobiusWeight =
      W.squareFreeWeight :=
  rfl

@[simp] theorem finiteMobius_toPayload_support
    (W : FiniteMobiusWindow)
    (det trace : List Int) :
    (W.toArithmeticPayload det trace).valuationSupport =
      W.valuationSupport :=
  rfl

/-- A finite Möbius window does not prove an analytic Möbius/zeta identity. -/
def FiniteMobiusWindowProvesAnalyticIdentity
    (_W : FiniteMobiusWindow) : Prop :=
  False

theorem finite_mobius_window_not_analytic_identity
    (W : FiniteMobiusWindow) :
    ¬ FiniteMobiusWindowProvesAnalyticIdentity W := by
  intro h
  exact h

end Number
