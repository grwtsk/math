import Formal.Blueprint.Analytic.Foundation
import Formal.Blueprint.Analytic.Geometry
import Formal.Blueprint.Analytic.ComplexZeta
import Formal.Blueprint.Analytic.MellinPerron
import Formal.Blueprint.Analytic.FourierTauberian
import Formal.Blueprint.Analytic.PrimeAsymptotics
import Formal.Blueprint.Analytic.ArithmeticConstants

/-!
Analytic blueprint surface.

This module exposes the conceptual boundaries of the analytic blueprint layer.
It deliberately imports only marker modules, not the unresolved theorem corpus.
-/

namespace Formal.Blueprint.Analytic

def conceptualBoundaries : List String :=
  [ "Foundation"
  , "Geometry"
  , "ComplexZeta"
  , "MellinPerron"
  , "FourierTauberian"
  , "PrimeAsymptotics"
  , "ArithmeticConstants"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 7 := by
  rfl

end Formal.Blueprint.Analytic
