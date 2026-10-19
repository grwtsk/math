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
