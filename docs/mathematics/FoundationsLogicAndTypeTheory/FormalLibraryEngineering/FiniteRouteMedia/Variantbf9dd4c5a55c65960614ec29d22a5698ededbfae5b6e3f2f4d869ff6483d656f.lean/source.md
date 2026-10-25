# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteRouteMedia.Variantbf9dd4c5a55c65960614ec29d22a5698ededbfae5b6e3f2f4d869ff6483d656f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d11b8d8ec88a607be2193e4638161e47c9ca06e8` · SHA-256 `c1c39de98ecfa1c66a42d42059478c980cdd71fb62267a945fcde5469669e6f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequiresPostJson.Variant7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RequiresPostJson.Variant7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/FiniteRouteMedia.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import GatewayProof.Route
import GatewayProof.Http


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequiresPostJson.Variant7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0

namespace GatewayProof
namespace FiniteRouteMedia

open GatewayProof.Route
open GatewayProof.Http

/-- A checked route requiring the shared POST JSON content-type contract. -/
def requiresPostJson (r : RelayRoute) : Bool :=
  isPostRelayJsonRoute r

/-- A checked route requiring the shared JSON Accept contract for GET surfaces. -/
def requiresSharedJsonAccept (r : RelayRoute) : Bool :=
  isSharedJsonAcceptRelayGetRoute r

/-- A checked route handled as assistive read-only prose carriage. -/
def assistiveReadOnly (r : RelayRoute) : Bool :=
  isAssistiveRoute r

theorem post_json_routes_are_post_native_repo_list :
    methodOf RelayRoute.nativeRepoList = Method.POST ∧
    requiresPostJson RelayRoute.nativeRepoList = true := by
  exact ⟨rfl, rfl⟩

theorem post_json_routes_are_post_native_repo_read :
    methodOf RelayRoute.nativeRepoRead = Method.POST ∧
    requiresPostJson RelayRoute.nativeRepoRead = true := by
  exact ⟨rfl, rfl⟩

theorem post_json_routes_are_post_arrow_envelopes :
    methodOf RelayRoute.arrowEnvelopes = Method.POST ∧
    requiresPostJson RelayRoute.arrowEnvelopes = true := by
  exact ⟨rfl, rfl⟩

theorem assistive_prose_route_is_get_not_shared_get_accept :
    methodOf RelayRoute.assistiveProse = Method.GET ∧
    requiresSharedJsonAccept RelayRoute.assistiveProse = false ∧
    assistiveReadOnly RelayRoute.assistiveProse = true := by
  exact ⟨rfl, ⟨rfl, rfl⟩⟩

theorem removed_assistive_chain_does_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.assistiveChain := by
  exact assistive_chain_does_not_materialize

theorem removed_scout_refinement_attempts_do_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.scoutRefinementAttempts := by
  exact scout_refinement_attempts_do_not_materialize

theorem removed_scout_refinement_submit_does_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.scoutRefinementSubmit := by
  exact scout_refinement_submit_does_not_materialize

theorem openapi_route_requires_shared_json_accept :
    methodOf RelayRoute.openapiJson = Method.GET ∧
    requiresSharedJsonAccept RelayRoute.openapiJson = true := by
  exact ⟨rfl, rfl⟩

theorem media_contract_admits_only_json_or_json_utf8_examples :
    relayJsonContentTypeAllowed MediaType.applicationJson = true ∧
    relayJsonContentTypeAllowed MediaType.applicationJsonUtf8 = true ∧
    relayJsonContentTypeAllowed MediaType.textPlain = false ∧
    relayJsonContentTypeAllowed MediaType.other = false := by
  exact ⟨rfl, ⟨rfl, ⟨rfl, rfl⟩⟩⟩

theorem json_accept_contract_admits_missing_json_and_any_examples :
    jsonAcceptAllowed Accept.missing = true ∧
    jsonAcceptAllowed Accept.applicationJson = true ∧
    jsonAcceptAllowed Accept.any = true ∧
    jsonAcceptAllowed Accept.incompatible = false := by
  exact ⟨rfl, ⟨rfl, ⟨rfl, rfl⟩⟩⟩

theorem sse_accept_contract_is_distinct_from_json_accept_examples :
    sseAcceptAllowed Accept.textEventStream = true ∧
    jsonAcceptAllowed Accept.textEventStream = false ∧
    sseAcceptAllowed Accept.applicationJson = false := by
  exact ⟨rfl, ⟨rfl, rfl⟩⟩

end FiniteRouteMedia
end GatewayProof
```
