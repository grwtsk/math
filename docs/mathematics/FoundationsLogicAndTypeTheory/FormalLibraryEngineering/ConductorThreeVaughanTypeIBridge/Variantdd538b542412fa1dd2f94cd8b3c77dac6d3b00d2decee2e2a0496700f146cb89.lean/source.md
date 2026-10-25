# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeVaughanTypeIBridge.Variantdd538b542412fa1dd2f94cd8b3c77dac6d3b00d2decee2e2a0496700f146cb89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48574b2ed131cb730755aaadd2695882a25e4201` · SHA-256 `f6fca0481fcdd82869096f770c2e2534c42b40b6afa4c68ab425a885c1e4ef67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvolutionTypeIPrefixEqPublic.Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConvolutionTypeIPrefixEqPublic.Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreeVaughanTypeIBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanTypeI
public import Surface.Core.ConductorThreePrimeMomentProgram
import Mathlib.Tactic

/-!
# Type I prefix adapter

This small module connects the elementary expanded Type I estimate to the
public prime-moment predicate.  Its only hypothesis is the exact finite
convolution-reindexing proposition.  In particular, no Type II, packet,
Wang--Zahl, or GRH premise occurs in the bridge.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConvolutionTypeIPrefixEqPublic.Variantc093a3a7549ae38a37e8ddabc892f9c975f5c6885f389d21e66083299026b62a

public section

namespace Surface.Core.ConductorThreeVaughanTypeIBridge

noncomputable section

open Surface.Core.ConductorThreePrimeMoment
open Surface.Core.ConductorThreeVaughanTypeI
open Surface.Core.ConductorThreeWangZahlTTStar

/-- The public convolution prefix is definitionally the same finite formula
as the one isolated by the elementary Type I module. -/
@[surface_adapter, surface_published]
theorem convolutionTypeIPrefix_eq_public (N x : ℕ) :
    conductorThreeConvolutionTypeIPrefix N x =
      conductorThreeVaughanTypeIPrefix N x := by
  rfl

/-- The exact finite expansion adapter is sufficient to inhabit the public
uniform Type I maximal predicate. -/
@[surface_novel, surface_published]
theorem exactTypeIPrefixExpansion_implies_uniformPublic
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    UniformConductorThreeTypeIMaximal := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    exactTypeIPrefixExpansion_implies_uniform hExpansion epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [← convolutionTypeIPrefix_eq_public]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeIBridge
```
