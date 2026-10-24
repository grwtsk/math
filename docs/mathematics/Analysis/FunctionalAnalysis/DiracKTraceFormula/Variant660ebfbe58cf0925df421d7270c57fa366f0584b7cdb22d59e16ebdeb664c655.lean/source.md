# Complete source: GRWTSK.Analysis.FunctionalAnalysis.DiracKTraceFormula.Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f74838a12350fd0845537744a831871a75fb4096` · SHA-256 `9209886d572fe5f75d58dd73858c67f73da52fb10d68a9c623fe632bc0b1d65c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TraceTarget.Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TraceTarget.Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675","mathematical_subject":"Foundations.Unclassified","original_sha256":"20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/DiracKTraceFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.SpectralKTheoryBridge
import Folder.DerivedSheaf.WittRealization

/-!
# Folder.DerivedSheaf.DiracKTraceFormula

Radiation role: research-boundary
BinaryMatrix spine: This module records Dirac/K trace bridge contracts, not BinaryMatrix traces.
Ontology: derived.dirac_k_trace_formula
Pivot role: spectral
Zero typology: trace-zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.TraceTarget.Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675

namespace Folder
namespace DerivedSheaf

/--
A target object for trace values.

This can later be specialized to integers, rationals, a Witt complex,
cohomology classes, distributions, or regularized spectral values.
-/
structure TraceTarget where
  Value : Type _
  zero : Value
  add : Value → Value → Value
  label : String

/--
A regularized trace of a Dirac spectrum.

This is contract-level. It does not assert that the infinite spectral sum
converges or that a heat-kernel/zeta-regularized trace has been constructed.
-/
structure DiracSpectralTrace
    (T : TraceTarget) where
  trace :
    Spectral.DiracSpectrumObject → T.Value
  regularized : Prop
  regularized_certified : regularized
  respectsMultiplicity : Prop
  respectsMultiplicity_certified : respectsMultiplicity
  sourceLabel : String

theorem dirac_spectral_trace_regularized
    {T : TraceTarget}
    (τ : DiracSpectralTrace T) :
    τ.regularized :=
  τ.regularized_certified

theorem dirac_spectral_trace_respects_multiplicity
    {T : TraceTarget}
    (τ : DiracSpectralTrace T) :
    τ.respectsMultiplicity :=
  τ.respectsMultiplicity_certified

/--
A trace or character applied to K-theory classes.

This is also contract-level. It can later be instantiated by Euler
characteristic, Chern character, Witt realization, Hattori-Stallings trace,
or a crystalline trace.
-/
structure KIndexTrace
    (M : MellKTheory)
    (T : TraceTarget) where
  trace :
    KTheoryClass M.K → T.Value
  additive : Prop
  additive_certified : additive
  compatibleWithPerfectComplexes : Prop
  compatibleWithPerfectComplexes_certified :
    compatibleWithPerfectComplexes
  sourceLabel : String

theorem k_index_trace_additive
    {M : MellKTheory}
    {T : TraceTarget}
    (τ : KIndexTrace M T) :
    τ.additive :=
  τ.additive_certified

theorem k_index_trace_compatible
    {M : MellKTheory}
    {T : TraceTarget}
    (τ : KIndexTrace M T) :
    τ.compatibleWithPerfectComplexes :=
  τ.compatibleWithPerfectComplexes_certified

/--
The trace formula relating a Dirac spectrum object to a K-theory index class.

Mathematically:

  Tr_D(Spec(D)) = Tr_K(index(D))

In this project this is a supplied bridge contract, not a proof of the
Atiyah-Singer theorem, a heat trace theorem, or a crystalline trace formula.
-/
structure DiracKIndexTraceFormula
    (M : MellKTheory)
    (T : TraceTarget)
    (I : KTheoryIndex M) where
  spectralBridge :
    DiracSpectrumRealizesKTheoryIndex M I
  spectralTrace :
    DiracSpectralTrace T
  kIndexTrace :
    KIndexTrace M T
  trace_formula :
    spectralTrace.trace spectralBridge.bridge.source =
      kIndexTrace.trace I.indexClass
  sourceLabel : String

theorem dirac_k_index_trace_formula
    {M : MellKTheory}
    {T : TraceTarget}
    {I : KTheoryIndex M}
    (Φ : DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Φ.trace_formula

/--
If the Dirac spectrum realizes the K-index and a trace formula is supplied,
then the spectral side and K-theoretic side have the same trace value.
-/
theorem spectral_trace_eq_k_index_trace
    {M : MellKTheory}
    {T : TraceTarget}
    {I : KTheoryIndex M}
    (Φ : DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Φ.trace_formula

/--
A trace formula whose K-theory side is realized in a Witt complex.

This says:

  spectralTrace(Spec(D)) =
  wittTrace(realize(index(D)))

Again, this is a bridge contract.
-/
structure DiracKIndexWittTraceFormula
    (M : MellKTheory)
    (W : CrystallineIndex.WittComplex)
    (T : TraceTarget)
    (I : KTheoryIndex M) where
  wittRealization :
    WittRealization M W
  wittImage :
    KTheoryIndexWittImage wittRealization I
  spectralBridge :
    DiracSpectrumRealizesKTheoryIndex M I
  spectralTrace :
    DiracSpectralTrace T
  wittTrace :
    CrystallineIndex.WittElement W → T.Value
  trace_formula :
    spectralTrace.trace spectralBridge.bridge.source =
      wittTrace wittImage.image
  sourceLabel : String

theorem dirac_k_index_witt_trace_formula
    {M : MellKTheory}
    {W : CrystallineIndex.WittComplex}
    {T : TraceTarget}
    {I : KTheoryIndex M}
    (Φ : DiracKIndexWittTraceFormula M W T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.wittTrace Φ.wittImage.image :=
  Φ.trace_formula

end DerivedSheaf
end Folder
```
