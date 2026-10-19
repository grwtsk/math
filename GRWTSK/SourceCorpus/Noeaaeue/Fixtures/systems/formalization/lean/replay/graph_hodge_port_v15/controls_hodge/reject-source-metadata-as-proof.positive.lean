import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
example : SourceBoundRationalHodgeTheorem Examples.lineHodgeData :=
  Examples.lineSourceTheorem
example : Examples.lineHodgeData.IsSurjective :=
  Examples.lineSourceTheorem.surjective
