import Folder.DerivedSheaf.DiracKTraceFormula

/-!
# Folder.Theorem.DerivedSheaf.DiracKTraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Dirac/K trace bridge facts, not BinaryMatrix traces.
Ontology: derived.dirac_k_trace_formula
Pivot role: spectral
Zero typology: trace-zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem dirac_spectral_trace_regularized
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.DiracSpectralTrace T) :
    τ.regularized :=
  Folder.DerivedSheaf.dirac_spectral_trace_regularized τ

theorem dirac_spectral_trace_respects_multiplicity
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.DiracSpectralTrace T) :
    τ.respectsMultiplicity :=
  Folder.DerivedSheaf.dirac_spectral_trace_respects_multiplicity τ

theorem k_index_trace_additive
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.KIndexTrace M T) :
    τ.additive :=
  Folder.DerivedSheaf.k_index_trace_additive τ

theorem k_index_trace_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    (τ : Folder.DerivedSheaf.KIndexTrace M T) :
    τ.compatibleWithPerfectComplexes :=
  Folder.DerivedSheaf.k_index_trace_compatible τ

theorem dirac_k_index_trace_formula
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Folder.DerivedSheaf.dirac_k_index_trace_formula Φ

theorem spectral_trace_eq_k_index_trace
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Folder.DerivedSheaf.spectral_trace_eq_k_index_trace Φ

theorem dirac_k_index_witt_trace_formula
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexWittTraceFormula M W T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.wittTrace Φ.wittImage.image :=
  Folder.DerivedSheaf.dirac_k_index_witt_trace_formula Φ

end DerivedSheaf
end Theorem
end Folder
