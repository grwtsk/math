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
