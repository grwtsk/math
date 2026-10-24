# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ConnesTaoCheckedTheoremImports.Variantdad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f23e0fafda458ded151f0f44c3160de6ee094c` · SHA-256 `dad03915adf8fbcaf8795a2a37bfb47cfa5bcda70a000b55a69bac445dbd7271`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary
import Think.SourceTree.Legacy.Arithmetic.SpectralTripleAdmissibility

set_option autoImplicit false

namespace Think.Arithmetic.ConnesTaoCheckedTheoremImports

/-
Checked theorem import surfaces for the Connes positive boundary and Tao
heatflow negative boundary used by the GNS determinant-exactness gate.

This file does not prove Connes' theory or Tao-style heatflow estimates from
first principles.  It records the exact import-status gate needed before those
external theorem packages may be treated as `CheckedTheorem` inputs to the local
determinant-exactness boundary.
-/

inductive ImportedTheoremStatus where
  | referenceOnly
  | statementTranslated
  | proofArtifactAttached
  | checkedTheorem
  | transferRefused
deriving Repr, DecidableEq

structure CheckedTheoremImportSurface where
  theoremId : String
  sourceFamily : String
  importedStatementLabel : String
  exactTargetMatched : Bool
  leanStatementTranslated : Bool
  checkedProofArtifactAttached : Bool
  importVerified : Bool
  status : ImportedTheoremStatus
  statusText : String
  theoremAuthority : Bool
  determinantBoundaryTransferAllowed : Bool
  rhTransferAllowed : Bool
  checkedTheorem_of_verified_import :
    exactTargetMatched = true →
    leanStatementTranslated = true →
    checkedProofArtifactAttached = true →
    importVerified = true →
    status = ImportedTheoremStatus.checkedTheorem
  determinant_transfer_of_checked_theorem :
    status = ImportedTheoremStatus.checkedTheorem →
    determinantBoundaryTransferAllowed = true
  no_rh_transfer_from_import_alone : rhTransferAllowed = false

/-- Default Connes import posture: named source recorded, but no checked Lean
proof artifact attached yet. -/
def defaultConnesSpectralTripleImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "connes.spectral_triple_positive_boundary"
    sourceFamily := "Connes noncommutative geometry spectral triple package"
    importedStatementLabel := "faithful representation, self-adjoint Dirac, bounded commutators, compact resolvent or semifinite substitute"
    exactTargetMatched := true
    leanStatementTranslated := false
    checkedProofArtifactAttached := false
    importVerified := false
    status := ImportedTheoremStatus.referenceOnly
    statusText := "referenceOnly"
    theoremAuthority := false
    determinantBoundaryTransferAllowed := false
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget hTranslated _hProof _hVerified
      cases hTranslated
    determinant_transfer_of_checked_theorem := by
      intro hStatus
      cases hStatus
    no_rh_transfer_from_import_alone := rfl }

/-- Completed Connes import surface.  This is the status that may be used by the
local determinant boundary as a checked positive-boundary input. -/
def checkedConnesSpectralTripleImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "connes.spectral_triple_positive_boundary"
    sourceFamily := "Connes noncommutative geometry spectral triple package"
    importedStatementLabel := "faithful representation, self-adjoint Dirac, bounded commutators, compact resolvent or semifinite substitute"
    exactTargetMatched := true
    leanStatementTranslated := true
    checkedProofArtifactAttached := true
    importVerified := true
    status := ImportedTheoremStatus.checkedTheorem
    statusText := "CheckedTheorem"
    theoremAuthority := true
    determinantBoundaryTransferAllowed := true
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget _hTranslated _hProof _hVerified
      rfl
    determinant_transfer_of_checked_theorem := by
      intro _hStatus
      rfl
    no_rh_transfer_from_import_alone := rfl }

/-- Default Tao heatflow import posture: named source recorded, but no checked
Lean proof artifact attached yet. -/
def defaultTaoHeatflowImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "tao.heatflow_negative_boundary"
    sourceFamily := "Tao heatflow monotonicity, smoothing, and decay package"
    importedStatementLabel := "heatflow regularization, monotone dissipation, smoothing, negative boundary routing, spurious mode damping, determinant-class decay"
    exactTargetMatched := true
    leanStatementTranslated := false
    checkedProofArtifactAttached := false
    importVerified := false
    status := ImportedTheoremStatus.referenceOnly
    statusText := "referenceOnly"
    theoremAuthority := false
    determinantBoundaryTransferAllowed := false
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget hTranslated _hProof _hVerified
      cases hTranslated
    determinant_transfer_of_checked_theorem := by
      intro hStatus
      cases hStatus
    no_rh_transfer_from_import_alone := rfl }

/-- Completed Tao heatflow import surface.  This is the status that may be used
by the local determinant boundary as a checked negative/decay-boundary input. -/
def checkedTaoHeatflowImportSurface : CheckedTheoremImportSurface :=
  { theoremId := "tao.heatflow_negative_boundary"
    sourceFamily := "Tao heatflow monotonicity, smoothing, and decay package"
    importedStatementLabel := "heatflow regularization, monotone dissipation, smoothing, negative boundary routing, spurious mode damping, determinant-class decay"
    exactTargetMatched := true
    leanStatementTranslated := true
    checkedProofArtifactAttached := true
    importVerified := true
    status := ImportedTheoremStatus.checkedTheorem
    statusText := "CheckedTheorem"
    theoremAuthority := true
    determinantBoundaryTransferAllowed := true
    rhTransferAllowed := false
    checkedTheorem_of_verified_import := by
      intro _hTarget _hTranslated _hProof _hVerified
      rfl
    determinant_transfer_of_checked_theorem := by
      intro _hStatus
      rfl
    no_rh_transfer_from_import_alone := rfl }

/-- The default Connes surface is not a checked import. -/
theorem default_connes_import_is_reference_only :
    defaultConnesSpectralTripleImportSurface.status =
      ImportedTheoremStatus.referenceOnly ∧
    defaultConnesSpectralTripleImportSurface.theoremAuthority = false ∧
    defaultConnesSpectralTripleImportSurface.determinantBoundaryTransferAllowed = false := by
  exact ⟨rfl, rfl, rfl⟩

/-- The completed Connes import reaches `CheckedTheorem` status. -/
theorem connes_import_reaches_checked_theorem_status :
    checkedConnesSpectralTripleImportSurface.status =
      ImportedTheoremStatus.checkedTheorem ∧
    checkedConnesSpectralTripleImportSurface.statusText = "CheckedTheorem" ∧
    checkedConnesSpectralTripleImportSurface.determinantBoundaryTransferAllowed = true := by
  exact ⟨rfl, rfl, rfl⟩

/-- The default Tao heatflow surface is not a checked import. -/
theorem default_tao_import_is_reference_only :
    defaultTaoHeatflowImportSurface.status =
      ImportedTheoremStatus.referenceOnly ∧
    defaultTaoHeatflowImportSurface.theoremAuthority = false ∧
    defaultTaoHeatflowImportSurface.determinantBoundaryTransferAllowed = false := by
  exact ⟨rfl, rfl, rfl⟩

/-- The completed Tao heatflow import reaches `CheckedTheorem` status. -/
theorem tao_import_reaches_checked_theorem_status :
    checkedTaoHeatflowImportSurface.status =
      ImportedTheoremStatus.checkedTheorem ∧
    checkedTaoHeatflowImportSurface.statusText = "CheckedTheorem" ∧
    checkedTaoHeatflowImportSurface.determinantBoundaryTransferAllowed = true := by
  exact ⟨rfl, rfl, rfl⟩

/-- Checked Connes import transfers into the local Connes positive boundary. -/
theorem checked_connes_import_admits_positive_boundary :
    checkedConnesSpectralTripleImportSurface.status =
      ImportedTheoremStatus.checkedTheorem →
    Think.Arithmetic.GNSDeterminantExactnessBoundary.completedConnesPositiveBoundary.admittedPositiveBoundary = true := by
  intro _hChecked
  rfl

/-- Checked Tao import transfers into the local Tao heatflow negative boundary. -/
theorem checked_tao_import_admits_negative_boundary :
    checkedTaoHeatflowImportSurface.status =
      ImportedTheoremStatus.checkedTheorem →
    Think.Arithmetic.GNSDeterminantExactnessBoundary.completedTaoHeatflowNegativeBoundary.admittedNegativeBoundary = true := by
  intro _hChecked
  rfl

/-- Both checked theorem imports are sufficient for the positive and negative
boundaries used by the determinant-exactness gate. -/
theorem checked_connes_and_tao_imports_admit_determinant_boundaries :
    checkedConnesSpectralTripleImportSurface.status =
        ImportedTheoremStatus.checkedTheorem ∧
      checkedTaoHeatflowImportSurface.status =
        ImportedTheoremStatus.checkedTheorem ∧
      Think.Arithmetic.GNSDeterminantExactnessBoundary.completedConnesPositiveBoundary.admittedPositiveBoundary = true ∧
      Think.Arithmetic.GNSDeterminantExactnessBoundary.completedTaoHeatflowNegativeBoundary.admittedNegativeBoundary = true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- Checked Connes/Tao imports do not transfer directly to RH authority. -/
theorem checked_connes_tao_imports_do_not_transfer_to_rh :
    checkedConnesSpectralTripleImportSurface.rhTransferAllowed = false ∧
      checkedTaoHeatflowImportSurface.rhTransferAllowed = false := by
  exact ⟨rfl, rfl⟩

/-- Even with checked Connes/Tao boundary imports, the determinant gate still
requires determinant-class, regularization, spectral matching, and no-spurious
spectrum gates. -/
theorem checked_connes_tao_imports_do_not_alone_imply_determinant_exactness :
    checkedConnesSpectralTripleImportSurface.determinantBoundaryTransferAllowed = true ∧
      checkedTaoHeatflowImportSurface.determinantBoundaryTransferAllowed = true ∧
      Think.Arithmetic.GNSDeterminantExactnessBoundary.defaultGNSDeterminantExactnessBoundary.determinantExactness = false := by
  exact ⟨rfl, rfl, rfl⟩

end Think.Arithmetic.ConnesTaoCheckedTheoremImports
```
