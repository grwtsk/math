# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiracKTraceFormula.Variant114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14077d076400870a7520bfc58528e985a4bc2bff` · SHA-256 `114fb130bfa5e883ca86aa3baa5670c523685cbcecc55da2310cc84f448f7188`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
