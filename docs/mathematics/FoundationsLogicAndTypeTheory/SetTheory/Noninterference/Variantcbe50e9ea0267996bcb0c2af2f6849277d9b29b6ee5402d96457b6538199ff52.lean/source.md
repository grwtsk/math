# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Noninterference.Variantcbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `995093fc5f04962558044bd531cb8ede1ca06173` · SHA-256 `cbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Resolver
import Mathematics.StratifiedBoundary.Presentation.Noninterference

/-!
# Ordinal authority noninterference

An ordinal address is position data only.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalIndexAuthorityBoundary where
  ordinalIndexRef : String
  persistentIdentityRef : String
  theoremAuthorityRef : String
  runtimeAuthority : Bool := false
  mutationAuthority : Bool := false
  theoremAuthorityCreated : Bool := false
  runtimeAuthority_exact : runtimeAuthority = false
  mutationAuthority_exact : mutationAuthority = false
  theoremAuthorityCreated_exact :
    theoremAuthorityCreated = false

theorem ordinal_index_does_not_create_authority
    (boundary : OrdinalIndexAuthorityBoundary) :
    boundary.runtimeAuthority = false ∧
      boundary.mutationAuthority = false ∧
      boundary.theoremAuthorityCreated = false :=
  ⟨boundary.runtimeAuthority_exact,
    boundary.mutationAuthority_exact,
    boundary.theoremAuthorityCreated_exact⟩

end Mathematics.StratifiedBoundary
```
