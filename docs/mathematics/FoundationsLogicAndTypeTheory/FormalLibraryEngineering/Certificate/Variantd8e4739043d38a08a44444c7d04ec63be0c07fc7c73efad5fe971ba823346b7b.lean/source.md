# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variantd8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4d31e5752b6e9e3486b71c655a57e9df58a4e4d` · SHA-256 `d8e4739043d38a08a44444c7d04ec63be0c07fc7c73efad5fe971ba823346b7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.Knowledge.Sheaf

/-!
Encoded bridge certificate schema for Rust-generated Knowledge sheaf receipts.

The formal sheaf gluing certificate lives in `Think.Knowledge.Sheaf.Gluing`.
This file only provides the compact encoded boundary consumed by the runtime
artifact generator.
-/

structure EncodedGluingCert where
  certHash : String
  noBypass : Bool
deriving Repr, DecidableEq

def checkGluingCertificate (cert : EncodedGluingCert) : Bool :=
  cert.noBypass && !cert.certHash.isEmpty

end Think.Knowledge.Sheaf
```
