-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusDecoderCertificate.Variant06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MobiusDecoderCertificate.Variant06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d","mathematical_subject":"Computation.DataStructures","original_sha256":"06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Decoder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Boundary
import Mathematics.TensorNetwork.MappingTorus

/-!
# Typed boundary decoding and confinement

Carrier round-trip and semantic correspondence are separate certificates.
Cross-snapshot or cross-decoder consumption additionally requires the existing
directional boundary-transport path.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusDecoderCertificate.Variant06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d

namespace Mathematics.TensorNetwork

universe u v w x

/-- Commuting server/client decoder square for the typed protocol involution. -/
structure MobiusDecoderCertificate
    (Carrier : Type u)
    (ServerSemantics : Type v)
    (ClientSemantics : Type w)
    (Observation : Type x) where
  twist : Carrier → Carrier
  decodeServer : Carrier → ServerSemantics
  decodeClient : Carrier → ClientSemantics
  semanticTransport : ServerSemantics → ClientSemantics
  semanticCommutes :
    ∀ carrier,
      decodeClient (twist carrier) =
        semanticTransport (decodeServer carrier)
  observeServer : Observation → ServerSemantics → ℂ
  observeClient : Observation → ClientSemantics → ℂ
  observationTransport : Observation → ℂ → ℂ
  observationCommutes :
    ∀ observation carrier,
      observeClient observation (decodeClient (twist carrier)) =
        observationTransport observation
          (observeServer observation (decodeServer carrier))

/-- Typed transport is required before a decoded artifact may cross boundaries. -/
structure ConfinedDecoderCertificate
    (Carrier : Type u)
    (ServerSemantics : Type v)
    (ClientSemantics : Type w)
    (Observation : Type x) where
  decoder :
    MobiusDecoderCertificate
      Carrier ServerSemantics ClientSemantics Observation
  source : Mathematics.AbelReynolds.BoundaryKey
  target : Mathematics.AbelReynolds.BoundaryKey
  transports : List Mathematics.AbelReynolds.BoundaryTransport
  mayConsume :
    Mathematics.AbelReynolds.MayConsume source target transports

end Mathematics.TensorNetwork
