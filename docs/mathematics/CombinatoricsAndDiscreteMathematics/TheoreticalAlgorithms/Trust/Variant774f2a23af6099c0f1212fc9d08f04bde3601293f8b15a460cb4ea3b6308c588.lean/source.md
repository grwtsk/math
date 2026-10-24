# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trust.Variant774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `243800b7d9c53491ceb91a2c2da82b3c14ed3259` · SHA-256 `774f2a23af6099c0f1212fc9d08f04bde3601293f8b15a460cb4ea3b6308c588`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Lease

/-!
# Explicit human trust

Trust is a human-issued, scoped, revocable lease.  It is not inferred from
competence, operating-system permission, performance evidence, or recognition.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure TrustGrant where
  lease : Lease
  issuer_is_human :
    lease.grant.issuer.kind = .human

def TrustGrant.ActiveAt
    (trust : TrustGrant)
    (revocations : List Revocation)
    (time : Nat) : Prop :=
  trust.lease.ValidAt revocations time

end Mathematics.Juris
```
