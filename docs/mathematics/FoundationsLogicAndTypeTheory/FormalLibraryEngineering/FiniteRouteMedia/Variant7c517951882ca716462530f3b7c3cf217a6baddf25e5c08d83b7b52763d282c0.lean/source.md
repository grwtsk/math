# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteRouteMedia.Variant7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a2052a299491eca003449e1fdfdc12fc163a6cc` · SHA-256 `7c517951882ca716462530f3b7c3cf217a6baddf25e5c08d83b7b52763d282c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GatewayProof.Route
import GatewayProof.Http

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
