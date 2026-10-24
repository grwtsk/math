import GRWTSK.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
