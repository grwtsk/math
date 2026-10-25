# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternalCertificateExamples.Variantaa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `911aebec9f3548eede957b666bc4a930fd4b996c` · SHA-256 `aa1bc2dbe41747bd4e01049205732a9b46d6d358c139ca54895f4a11eeef7d97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Authority.ExternalCertificate

/-!
# Toy trusted-verifier example

This file is deliberately not imported by `Authority.lean`.

It demonstrates the distinction between a raw `ExternalPayload`, a
`TrustedExternalCertificate`, the converted `Authority.Certificate`, and the
application of `certificate_sound` — for the harmless proposition
`2 + 2 = 4`.

The toy verifier accepts exactly those payloads whose claimed statement is
the proposition `2 + 2 = 4`, and its `sound` field proves that proposition.
Nothing here suggests that arbitrary external proof artifacts are trusted:
the raw payload still proves nothing (`toy_payload_not_proof`), and trust
enters only through `toyVerifier.sound`.
This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.
-/

namespace Authority
namespace ExternalCertificateExamples

/-- Raw external payload claiming `2 + 2 = 4`. This proves nothing. -/
def toyPayload : ExternalPayload where
  kind := BoundaryKind.finiteArithmetic
  label := "toy external payload: 2 + 2 = 4"
  publicHash := 0
  payloadHash := 0
  verifierLabel := "toy verifier"
  transcriptHash := 0
  statement := 2 + 2 = 4

/-- The raw payload is not a proof of its claimed statement. -/
theorem toy_payload_not_proof :
    ¬ toyPayload.ProvesStatement :=
  external_payload_not_proof toyPayload

/--
Toy trusted verifier.

It accepts exactly the payloads whose claimed statement is the proposition
`2 + 2 = 4`, and its `sound` field carries the actual proof of that
proposition. This field is the entire trusted computing base of the example.
-/
def toyVerifier : TrustedVerifier where
  label := "toy verifier"
  verifierHash := 0
  Accepts := fun E => E.statement = (2 + 2 = 4)
  sound := fun _E h => Eq.mpr h rfl

/-- Trusted external certificate: the toy verifier accepts the toy payload. -/
def toyTrustedCertificate : TrustedExternalCertificate toyPayload where
  verifier := toyVerifier
  accepted := rfl

/-- The internal authority certificate obtained through verifier soundness. -/
def toyCertificate : Certificate :=
  toyTrustedCertificate.toCertificate

/-- The converted certificate proves the toy statement via
`certificate_sound`. -/
theorem toy_certificate_sound :
    2 + 2 = 4 :=
  certificate_sound toyCertificate

end ExternalCertificateExamples
end Authority
```
