# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Http.Variantac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13ea8ae63b46f29be82e08d859d55ace8fd02a40` · SHA-256 `ac7b126282fe47a40fd442a2c192c359973fa6503130250ee5fab471d72c1c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace GatewayProof
namespace Http

inductive MediaType
| applicationJson
| applicationJsonUtf8
| textPlain
| other
deriving Repr, DecidableEq

inductive Accept
| missing
| applicationJson
| any
| textEventStream
| incompatible
deriving Repr, DecidableEq

def relayJsonContentTypeAllowed : MediaType -> Bool
| .applicationJson => true
| .applicationJsonUtf8 => true
| _ => false

def jsonAcceptAllowed : Accept -> Bool
| .missing => true
| .applicationJson => true
| .any => true
| _ => false

def sseAcceptAllowed : Accept -> Bool
| .missing => true
| .textEventStream => true
| .any => true
| _ => false

theorem json_content_type_allowed :
    relayJsonContentTypeAllowed MediaType.applicationJson = true := by
  rfl

theorem json_utf8_content_type_allowed :
    relayJsonContentTypeAllowed MediaType.applicationJsonUtf8 = true := by
  rfl

theorem text_plain_not_relay_json :
    relayJsonContentTypeAllowed MediaType.textPlain = false := by
  rfl

theorem other_not_relay_json :
    relayJsonContentTypeAllowed MediaType.other = false := by
  rfl

theorem missing_json_accept_allowed :
    jsonAcceptAllowed Accept.missing = true := by
  rfl

theorem application_json_accept_allowed :
    jsonAcceptAllowed Accept.applicationJson = true := by
  rfl

theorem wildcard_json_accept_allowed :
    jsonAcceptAllowed Accept.any = true := by
  rfl

theorem incompatible_json_accept_refused :
    jsonAcceptAllowed Accept.incompatible = false := by
  rfl

theorem text_event_stream_not_json_accept :
    jsonAcceptAllowed Accept.textEventStream = false := by
  rfl

theorem missing_sse_accept_allowed :
    sseAcceptAllowed Accept.missing = true := by
  rfl

theorem wildcard_sse_accept_allowed :
    sseAcceptAllowed Accept.any = true := by
  rfl

theorem application_json_not_sse_accept :
    sseAcceptAllowed Accept.applicationJson = false := by
  rfl

theorem incompatible_sse_accept_refused :
    sseAcceptAllowed Accept.incompatible = false := by
  rfl

theorem text_event_stream_sse_accept_allowed :
    sseAcceptAllowed Accept.textEventStream = true := by
  rfl

end Http
end GatewayProof
```
