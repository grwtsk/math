# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recaman.Variantf7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adb4583581e94c3b4b6dba36ee0f22719a19d362` · SHA-256 `f7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Proposal-only Recamán diversification
-/

namespace Mathematics.GraphAccess

structure RecamanProposal where
  step : Nat
  value : Nat
  actionRef : String
  plateauDeclared : Prop
  plateauEvidence : plateauDeclared
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem recaman_proposal_has_no_authority
    (proposal : RecamanProposal) :
    proposal.authoritativeEffect = false :=
  proposal.authoritativeEffect_exact

theorem recaman_requires_declared_plateau
    (proposal : RecamanProposal) :
    proposal.plateauDeclared :=
  proposal.plateauEvidence

end Mathematics.GraphAccess
```
