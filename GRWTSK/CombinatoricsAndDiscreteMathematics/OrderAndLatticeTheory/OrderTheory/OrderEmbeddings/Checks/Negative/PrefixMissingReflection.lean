import GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderTheory.OrderEmbeddings.PrefixObstruction

open GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderTheory.OrderEmbeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
