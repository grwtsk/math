# Complete source: GRWTSK.Algebra.GroupTheory.PrincipalFiniteCover.Variantaa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0832e5a13c9ca79ccac1b74578be13aacdadca99` · SHA-256 `aa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.LocalSystem

/-!
# Principal finite abelian cover realizations

`H¹(K; A)` classifies principal covers for a fixed finite discrete abelian
group `A`.  It does not classify arbitrary finite covers.  Connectedness is a
separate surjectivity condition on monodromy.
-/

namespace Mathematics.Homology

universe u v w

/-- One certified realization of a principal finite abelian cover class. -/
structure PrincipalFiniteCoverRealization
    (Loop : Type u) [Group Loop]
    (DeckGroup : Type v)
    [AddCommGroup DeckGroup] [Fintype DeckGroup]
    (H1Class : Type w)
    (Cover : Type*) where
  cohomologyClass : H1Class
  cover : Cover
  monodromy : Loop →* Multiplicative DeckGroup
  connected : Prop
  connected_iff_monodromy_surjective :
    connected ↔ Function.Surjective monodromy
  realizesClass : Prop
  realizationProof : realizesClass
  classDigest : Digest
  realizationCertificate : ObjectAddress

end Mathematics.Homology
```
