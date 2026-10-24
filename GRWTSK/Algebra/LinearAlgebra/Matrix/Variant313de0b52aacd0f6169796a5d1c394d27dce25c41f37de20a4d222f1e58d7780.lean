import Think.Kakeya.Berkovich.Skeleton

namespace Think.Kakeya.ForceDensity

structure ForceDensityMatrixLayout where
  rowCount : Nat
  columnCount : Nat
  storageFormat : String
deriving Repr, DecidableEq

def defaultBridgeMatrixLayout : ForceDensityMatrixLayout :=
  { rowCount := 2, columnCount := 2, storageFormat := "dense-128" }

def forceDensityEquilibriumLaw : String :=
  "A_fd q = r"

end Think.Kakeya.ForceDensity
