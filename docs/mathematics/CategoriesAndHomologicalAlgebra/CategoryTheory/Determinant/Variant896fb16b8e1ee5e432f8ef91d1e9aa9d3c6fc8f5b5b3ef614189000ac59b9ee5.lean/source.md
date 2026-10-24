# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Determinant.Variant896fb16b8e1ee5e432f8ef91d1e9aa9d3c6fc8f5b5b3ef614189000ac59b9ee5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3f225db0220f8fe779ca0d632248a9f71165079` · SHA-256 `21a5060c5d2c71fb4c30458b9d73bbf315e614562e3e53729d838eccdaa60e5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DeterminantLineSymbol.Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DeterminantLineSymbol.Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.Determinant
import AnalyticNumber.Certificate
import Authority.BoundaryCalculus

/-!
# Analytic determinant authority

This file provides the certificate-gated determinant calculus above
`Number.Determinant`.

Finite determinant matrices, coefficient lists, and trace power sums live in
`Number`. The analytic determinant claims — determinant-line existence and
functoriality, determinant-line comparison, zeta-regularized determinant
existence, Fredholm determinant convergence, trace-log expansion soundness,
and anomaly formulas — are usable only through explicit authority records, and
each authority record converts into a generic `AnalyticCertificate` routed by
`Authority.BoundaryKind`.

This is the canonical determinant interface for the analytic-number layer. It
is independent of the Boolean/Cube Fredholm authority surface and imports no
Boolean module.

No analytic determinant theorem is proved here.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DeterminantLineSymbol.Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef

namespace AnalyticNumber
namespace Determinant

/-- Formal determinant-line symbol. -/
structure DeterminantLineSymbol where
  label : String
  objectHash : Nat
  baseCategoryLabel : String

/-- Formal morphism symbol between determinant lines. -/
structure DeterminantLineMorphismSymbol where
  source : DeterminantLineSymbol
  target : DeterminantLineSymbol
  morphismHash : Nat
  label : String

/-- Formal zeta-regularized determinant symbol. -/
structure ZetaRegularizedDeterminantSymbol where
  operatorLabel : String
  operatorHash : Nat
  spectralCutLabel : String
  determinantLabel : String

/-- Formal Fredholm determinant symbol. -/
structure FredholmDeterminantSymbol where
  operatorLabel : String
  identityPlusTraceClassLabel : String
  perturbationHash : Nat
  determinantLabel : String

/-- Formal trace-log expansion symbol. -/
structure TraceLogExpansionSymbol where
  fredholm : FredholmDeterminantSymbol
  tracePowerSumsHash : Nat
  expansionLabel : String

/-- Formal anomaly formula symbol. -/
structure AnomalyFormulaSymbol where
  leftDeterminantLabel : String
  rightDeterminantLabel : String
  comparisonHash : Nat
  anomalyLabel : String

/-- Authority for the existence of a determinant line. -/
structure DeterminantLineAuthority where
  line : DeterminantLineSymbol
  determinantLineConstructed : Prop
  determinantLineProof : determinantLineConstructed

/-- Authority for determinant-line functoriality. -/
structure DeterminantLineFunctorialityAuthority where
  sourceLine : DeterminantLineSymbol
  targetLine : DeterminantLineSymbol
  morphism : DeterminantLineMorphismSymbol
  functorialitySound : Prop
  functorialityProof : functorialitySound
  compositionCompatible : Prop
  compositionCompatibleProof : compositionCompatible
  identityCompatible : Prop
  identityCompatibleProof : identityCompatible

/-- Authority for a zeta-regularized determinant. -/
structure ZetaRegularizedDeterminantAuthority where
  determinant : ZetaRegularizedDeterminantSymbol
  regularizationDefined : Prop
  regularizationDefinedProof : regularizationDefined
  spectralZetaContinuationSound : Prop
  spectralZetaContinuationProof : spectralZetaContinuationSound
  determinantValueSound : Prop
  determinantValueProof : determinantValueSound

/-- Authority for Fredholm determinant convergence. -/
structure FredholmDeterminantConvergenceAuthority where
  determinant : FredholmDeterminantSymbol
  traceClassPerturbationSound : Prop
  traceClassPerturbationProof : traceClassPerturbationSound
  determinantConvergesSound : Prop
  determinantConvergesProof : determinantConvergesSound
  finiteApproximationSound : Prop
  finiteApproximationProof : finiteApproximationSound

/-- Authority for a trace-log expansion. -/
structure TraceLogExpansionAuthority where
  expansion : TraceLogExpansionSymbol
  tracePowersDefined : Prop
  tracePowersDefinedProof : tracePowersDefined
  expansionConvergesSound : Prop
  expansionConvergesProof : expansionConvergesSound
  traceLogIdentitySound : Prop
  traceLogIdentityProof : traceLogIdentitySound

/-- Authority for an anomaly formula. -/
structure AnomalyFormulaAuthority where
  anomaly : AnomalyFormulaSymbol
  determinantComparisonSound : Prop
  determinantComparisonProof : determinantComparisonSound
  anomalyTermSound : Prop
  anomalyTermProof : anomalyTermSound
  anomalyFormulaSound : Prop
  anomalyFormulaProof : anomalyFormulaSound

theorem determinant_line_authorized
    (A : DeterminantLineAuthority) :
    A.determinantLineConstructed :=
  A.determinantLineProof

theorem determinant_line_functoriality_authorized
    (A : DeterminantLineFunctorialityAuthority) :
    A.functorialitySound ∧
      A.compositionCompatible ∧
      A.identityCompatible :=
  ⟨A.functorialityProof,
    A.compositionCompatibleProof,
    A.identityCompatibleProof⟩

theorem zeta_regularized_determinant_authorized
    (A : ZetaRegularizedDeterminantAuthority) :
    A.regularizationDefined ∧
      A.spectralZetaContinuationSound ∧
      A.determinantValueSound :=
  ⟨A.regularizationDefinedProof,
    A.spectralZetaContinuationProof,
    A.determinantValueProof⟩

theorem fredholm_determinant_convergence_authorized
    (A : FredholmDeterminantConvergenceAuthority) :
    A.traceClassPerturbationSound ∧
      A.determinantConvergesSound ∧
      A.finiteApproximationSound :=
  ⟨A.traceClassPerturbationProof,
    A.determinantConvergesProof,
    A.finiteApproximationProof⟩

theorem trace_log_expansion_authorized
    (A : TraceLogExpansionAuthority) :
    A.tracePowersDefined ∧
      A.expansionConvergesSound ∧
      A.traceLogIdentitySound :=
  ⟨A.tracePowersDefinedProof,
    A.expansionConvergesProof,
    A.traceLogIdentityProof⟩

theorem anomaly_formula_authorized
    (A : AnomalyFormulaAuthority) :
    A.determinantComparisonSound ∧
      A.anomalyTermSound ∧
      A.anomalyFormulaSound :=
  ⟨A.determinantComparisonProof,
    A.anomalyTermProof,
    A.anomalyFormulaProof⟩

/-- A determinant-line symbol alone does not own functoriality. -/
def DeterminantLineSymbolOwnsFunctoriality
    (_L : DeterminantLineSymbol) : Prop :=
  False

/-- A determinant-line symbol alone does not own analytic comparison. -/
def DeterminantLineSymbolOwnsAnalyticComparison
    (_L : DeterminantLineSymbol) : Prop :=
  False

/-- A zeta-regularized determinant symbol alone does not own regularization. -/
def ZetaRegularizedDeterminantSymbolOwnsRegularization
    (_D : ZetaRegularizedDeterminantSymbol) : Prop :=
  False

/-- A Fredholm determinant symbol alone does not own convergence. -/
def FredholmDeterminantSymbolOwnsConvergence
    (_D : FredholmDeterminantSymbol) : Prop :=
  False

/-- A trace-log expansion symbol alone does not own the expansion. -/
def TraceLogExpansionSymbolOwnsExpansion
    (_E : TraceLogExpansionSymbol) : Prop :=
  False

/-- An anomaly formula symbol alone does not own the formula. -/
def AnomalyFormulaSymbolOwnsFormula
    (_A : AnomalyFormulaSymbol) : Prop :=
  False

theorem determinant_line_symbol_not_functoriality_authority
    (L : DeterminantLineSymbol) :
    ¬ DeterminantLineSymbolOwnsFunctoriality L := by
  intro h
  exact h

theorem determinant_line_symbol_not_analytic_comparison_authority
    (L : DeterminantLineSymbol) :
    ¬ DeterminantLineSymbolOwnsAnalyticComparison L := by
  intro h
  exact h

theorem zeta_regularized_symbol_not_regularization_authority
    (D : ZetaRegularizedDeterminantSymbol) :
    ¬ ZetaRegularizedDeterminantSymbolOwnsRegularization D := by
  intro h
  exact h

theorem fredholm_symbol_not_convergence_authority
    (D : FredholmDeterminantSymbol) :
    ¬ FredholmDeterminantSymbolOwnsConvergence D := by
  intro h
  exact h

theorem trace_log_symbol_not_expansion_authority
    (E : TraceLogExpansionSymbol) :
    ¬ TraceLogExpansionSymbolOwnsExpansion E := by
  intro h
  exact h

theorem anomaly_symbol_not_formula_authority
    (A : AnomalyFormulaSymbol) :
    ¬ AnomalyFormulaSymbolOwnsFormula A := by
  intro h
  exact h

/--
Boundary summary for the formal determinant symbol layer.

Formal determinant symbols own none of the analytic determinant boundary
claims.
-/
theorem determinant_symbol_boundary_summary
    (L : DeterminantLineSymbol)
    (Z : ZetaRegularizedDeterminantSymbol)
    (F : FredholmDeterminantSymbol)
    (T : TraceLogExpansionSymbol)
    (A : AnomalyFormulaSymbol) :
    ¬ DeterminantLineSymbolOwnsFunctoriality L ∧
      ¬ DeterminantLineSymbolOwnsAnalyticComparison L ∧
      ¬ ZetaRegularizedDeterminantSymbolOwnsRegularization Z ∧
      ¬ FredholmDeterminantSymbolOwnsConvergence F ∧
      ¬ TraceLogExpansionSymbolOwnsExpansion T ∧
      ¬ AnomalyFormulaSymbolOwnsFormula A :=
  ⟨determinant_line_symbol_not_functoriality_authority L,
    determinant_line_symbol_not_analytic_comparison_authority L,
    zeta_regularized_symbol_not_regularization_authority Z,
    fredholm_symbol_not_convergence_authority F,
    trace_log_symbol_not_expansion_authority T,
    anomaly_symbol_not_formula_authority A⟩

/-- Convert a determinant-line authority into an analytic certificate. -/
def determinantLineCertificate
    (A : DeterminantLineAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.determinantLine
  label := "determinant-line certificate"
  publicHash := 0
  sound := A.determinantLineConstructed
  soundProof := determinant_line_authorized A

/-- Convert a determinant-line functoriality authority into an analytic certificate. -/
def determinantLineFunctorialityCertificate
    (A : DeterminantLineFunctorialityAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.determinantLineFunctoriality
  label := "determinant-line functoriality certificate"
  publicHash := 0
  sound :=
    A.functorialitySound ∧
      A.compositionCompatible ∧
      A.identityCompatible
  soundProof := determinant_line_functoriality_authorized A

/-- Convert a zeta-regularized determinant authority into an analytic certificate. -/
def zetaRegularizedDeterminantCertificate
    (A : ZetaRegularizedDeterminantAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.zetaRegularizedDeterminant
  label := "zeta-regularized determinant certificate"
  publicHash := 0
  sound :=
    A.regularizationDefined ∧
      A.spectralZetaContinuationSound ∧
      A.determinantValueSound
  soundProof := zeta_regularized_determinant_authorized A

/-- Convert a Fredholm determinant convergence authority into an analytic certificate. -/
def fredholmDeterminantConvergenceCertificate
    (A : FredholmDeterminantConvergenceAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.fredholmDeterminantConvergence
  label := "Fredholm determinant convergence certificate"
  publicHash := 0
  sound :=
    A.traceClassPerturbationSound ∧
      A.determinantConvergesSound ∧
      A.finiteApproximationSound
  soundProof := fredholm_determinant_convergence_authorized A

/-- Convert a trace-log expansion authority into an analytic certificate. -/
def traceLogExpansionCertificate
    (A : TraceLogExpansionAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.traceLogExpansion
  label := "trace-log expansion certificate"
  publicHash := 0
  sound :=
    A.tracePowersDefined ∧
      A.expansionConvergesSound ∧
      A.traceLogIdentitySound
  soundProof := trace_log_expansion_authorized A

/-- Convert an anomaly formula authority into an analytic certificate. -/
def anomalyFormulaCertificate
    (A : AnomalyFormulaAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.anomalyFormula
  label := "anomaly formula certificate"
  publicHash := 0
  sound :=
    A.determinantComparisonSound ∧
      A.anomalyTermSound ∧
      A.anomalyFormulaSound
  soundProof := anomaly_formula_authorized A

end Determinant
end AnalyticNumber
```
