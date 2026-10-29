-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedMomentEngine.Variant8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PolarizedMomentEngine.Variant8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910","mathematical_subject":"Foundations.Unclassified","original_sha256":"8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:a2f9e71745958989db370315/workspace/lib/Surface/Core/ConductorThreeWangZahlTTStar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeMomentPackets

/-!
# Named Wang--Zahl / polarized TT* research boundary

These predicates expose the irreducible analytic work.  The local interaction
certificate contains overlap estimates; the global Gram and maximal bounds
must be proved from it together with the fixed geometry and an exact
Vaughan/Heath--Brown decomposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedMomentEngine.Variant8a0189c759109b25d128bbba14cb003369bbd088832974959d744ceef4b64910

public section

namespace Surface.Core.ConductorThreeWangZahlTTStar

open Surface.Core.ConductorThreeMomentPackets
open Surface.Core.PrimeLattice.PolarizedGram

/-- Local packet-interaction evidence for a fixed moment route.

The exact coefficient collapse is already a theorem-bearing field of every
`ConductorThreeCoefficientPacketFrame`; it is deliberately not repeated here
as a free-standing proposition.  Likewise, no Type I, Type II, Gram, maximal,
or arithmetic decay conclusion is stored in this structure. -/
structure PolarizedMomentEngine
    (route : ConductorThreePrimeMomentRoute) where
  interaction : ∀ N, PolarizedInteractionControl (route.frame N)

/-- The desired implication from local geometry/interaction to the uniform
Gram bound.  It remains a named research proposition. -/
@[expose]
def WangZahlGeometryImpliesPolarizedGramBound : Prop :=
  ∀ route : ConductorThreePrimeMomentRoute,
    PolarizedMomentEngine route →
      PacketGramPowerBound route.frame

end Surface.Core.ConductorThreeWangZahlTTStar
