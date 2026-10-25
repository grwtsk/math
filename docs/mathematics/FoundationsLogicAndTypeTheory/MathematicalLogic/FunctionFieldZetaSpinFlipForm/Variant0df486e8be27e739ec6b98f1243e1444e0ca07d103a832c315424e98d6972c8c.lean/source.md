# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionFieldZetaSpinFlipForm.Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27e68c62099dc39f15ac19077e33d8d9eb29fcc9` · SHA-256 `0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.ZetaSpinFlipDuality

set_option autoImplicit false

namespace Think.Analysis

/-
Function-field zeta spin/flip formulation.

This file packages the exact finite spin/flip duality equation in the shape used
for zeta functions of curves over finite fields: genus `g`, `2g` middle slots,
a reciprocal Frobenius-pairing surface, and an internal finite equation

  D_q Z = lambda_q Z.

The file is a formulation/import surface. It does not itself import Deligne's
proof, prove the Weil conjectures, prove the Riemann hypothesis over finite
fields, transfer function-field theorems to the classical Riemann zeta function,
or assert Montgomery pair correlation.
-/

/-- Function-field-style finite zeta data for the spin/flip carrier. -/
structure FunctionFieldZetaSpinFlipForm where
  q : Nat
  genus : Nat
  harmonicSlots : Nat
  harmonicSlots_eq_two_genus : harmonicSlots = 2 * genus
  reciprocalPairing : HarmonicFlipDualityPairing harmonicSlots
  finiteEquation : ZetaSpinFlipFunctionalEquation harmonicSlots
  frobeniusPairingSurface : Bool
  frobeniusPairingSurface_eq_true : frobeniusPairingSurface = true
  poincareDualitySurface : Bool
  poincareDualitySurface_eq_true : poincareDualitySurface = true
  functionFieldFunctionalEquationFormulation : Bool
  functionFieldFunctionalEquationFormulation_eq_true :
    functionFieldFunctionalEquationFormulation = true
  deligneWeilTheoremImported : Bool
  deligneWeilTheoremImported_eq_false : deligneWeilTheoremImported = false
  montgomeryPairCorrelationImported : Bool
  montgomeryPairCorrelationImported_eq_false :
    montgomeryPairCorrelationImported = false
  classicalRiemannZetaTransferClaim : Bool
  classicalRiemannZetaTransferClaim_eq_false :
    classicalRiemannZetaTransferClaim = false
  rhClaim : Bool
  rhClaim_eq_false : rhClaim = false
  theoremPromotionClaim : Bool
  theoremPromotionClaim_eq_false : theoremPromotionClaim = false

/-- The function-field formulation has `2g` spin/flip harmonic slots. -/
theorem function_field_zeta_spin_flip_slots_eq_two_genus
    (F : FunctionFieldZetaSpinFlipForm) :
    F.harmonicSlots = 2 * F.genus :=
  F.harmonicSlots_eq_two_genus

/-- Projection of the internal finite equation `D_q Z = lambda_q Z`. -/
theorem function_field_zeta_spin_flip_equation_law
    (F : FunctionFieldZetaSpinFlipForm) :
    F.finiteEquation.duality.toFun F.finiteEquation.carrier =
      fun g : FlipCarrier F.harmonicSlots =>
        F.finiteEquation.eigenvalue * F.finiteEquation.carrier g :=
  zeta_spin_flip_functional_equation_law F.finiteEquation

/-- The reciprocal Frobenius-pairing surface is present as finite data. -/
theorem function_field_zeta_spin_flip_has_frobenius_pairing_surface
    (F : FunctionFieldZetaSpinFlipForm) :
    F.frobeniusPairingSurface = true :=
  F.frobeniusPairingSurface_eq_true

/-- The Poincare-duality surface is present as finite data. -/
theorem function_field_zeta_spin_flip_has_poincare_duality_surface
    (F : FunctionFieldZetaSpinFlipForm) :
    F.poincareDualitySurface = true :=
  F.poincareDualitySurface_eq_true

/-- The formulation records a function-field functional-equation shape. -/
theorem function_field_zeta_spin_flip_has_functional_equation_formulation
    (F : FunctionFieldZetaSpinFlipForm) :
    F.functionFieldFunctionalEquationFormulation = true :=
  F.functionFieldFunctionalEquationFormulation_eq_true

/-- This formulation does not import Deligne-Weil theorem authority. -/
theorem function_field_zeta_spin_flip_denies_deligne_weil_import
    (F : FunctionFieldZetaSpinFlipForm) :
    F.deligneWeilTheoremImported = false :=
  F.deligneWeilTheoremImported_eq_false

/-- This formulation does not import Montgomery pair-correlation authority. -/
theorem function_field_zeta_spin_flip_denies_montgomery_pair_correlation_import
    (F : FunctionFieldZetaSpinFlipForm) :
    F.montgomeryPairCorrelationImported = false :=
  F.montgomeryPairCorrelationImported_eq_false

/-- This formulation does not transfer function-field data to the classical Riemann zeta function. -/
theorem function_field_zeta_spin_flip_denies_classical_riemann_zeta_transfer
    (F : FunctionFieldZetaSpinFlipForm) :
    F.classicalRiemannZetaTransferClaim = false :=
  F.classicalRiemannZetaTransferClaim_eq_false

/-- This formulation does not claim RH. -/
theorem function_field_zeta_spin_flip_denies_rh
    (F : FunctionFieldZetaSpinFlipForm) :
    F.rhClaim = false :=
  F.rhClaim_eq_false

/-- This formulation does not promote itself to theorem authority. -/
theorem function_field_zeta_spin_flip_denies_theorem_promotion
    (F : FunctionFieldZetaSpinFlipForm) :
    F.theoremPromotionClaim = false :=
  F.theoremPromotionClaim_eq_false

/-- Minimal constructor for a function-field-style spin/flip form. -/
def mkFunctionFieldZetaSpinFlipForm
    (q genus harmonicSlots : Nat)
    (hslots : harmonicSlots = 2 * genus)
    (reciprocalPairing : HarmonicFlipDualityPairing harmonicSlots)
    (finiteEquation : ZetaSpinFlipFunctionalEquation harmonicSlots) :
    FunctionFieldZetaSpinFlipForm :=
  { q := q
    genus := genus
    harmonicSlots := harmonicSlots
    harmonicSlots_eq_two_genus := hslots
    reciprocalPairing := reciprocalPairing
    finiteEquation := finiteEquation
    frobeniusPairingSurface := true
    frobeniusPairingSurface_eq_true := rfl
    poincareDualitySurface := true
    poincareDualitySurface_eq_true := rfl
    functionFieldFunctionalEquationFormulation := true
    functionFieldFunctionalEquationFormulation_eq_true := rfl
    deligneWeilTheoremImported := false
    deligneWeilTheoremImported_eq_false := rfl
    montgomeryPairCorrelationImported := false
    montgomeryPairCorrelationImported_eq_false := rfl
    classicalRiemannZetaTransferClaim := false
    classicalRiemannZetaTransferClaim_eq_false := rfl
    rhClaim := false
    rhClaim_eq_false := rfl
    theoremPromotionClaim := false
    theoremPromotionClaim_eq_false := rfl }

/-- A Deligne/Montgomery import request surface without theorem absorption. -/
structure MontgomeryDeligneImportRequest where
  requestMontgomeryPairCorrelation : Bool
  requestDeligneFunctionFieldInput : Bool
  importAsExternalAuthorityOnly : Bool
  noClassicalZetaTransferWithoutProof : Bool
deriving Repr, DecidableEq

/-- Default request posture: external inputs are named only, not absorbed as proof. -/
def defaultMontgomeryDeligneImportRequest : MontgomeryDeligneImportRequest :=
  { requestMontgomeryPairCorrelation := true
    requestDeligneFunctionFieldInput := true
    importAsExternalAuthorityOnly := true
    noClassicalZetaTransferWithoutProof := true }

theorem default_montgomery_deligne_request_names_montgomery :
    defaultMontgomeryDeligneImportRequest.requestMontgomeryPairCorrelation =
      true := by
  rfl

theorem default_montgomery_deligne_request_names_deligne :
    defaultMontgomeryDeligneImportRequest.requestDeligneFunctionFieldInput =
      true := by
  rfl

theorem default_montgomery_deligne_request_external_only :
    defaultMontgomeryDeligneImportRequest.importAsExternalAuthorityOnly =
      true := by
  rfl

theorem default_montgomery_deligne_request_denies_unproved_transfer :
    defaultMontgomeryDeligneImportRequest.noClassicalZetaTransferWithoutProof =
      true := by
  rfl

end Think.Analysis
```
