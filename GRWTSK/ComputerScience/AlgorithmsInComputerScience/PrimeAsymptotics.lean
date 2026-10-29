/-!
Prime-asymptotic analytic blueprint boundary.

This marker groups PNT-adjacent asymptotic blueprint material without importing
the unresolved corpus.
-/

namespace Formal.Blueprint.Analytic.PrimeAsymptotics

def files : List String :=
  [ "BrunTitchmarsh"
  , "Consequences"
  , "HoffsteinLockhart"
  , "IwaniecKowalskiCh1"
  , "MediumPNT"
  , "StrongPNT"
  ]

theorem files_count : files.length = 6 := by
  rfl

end Formal.Blueprint.Analytic.PrimeAsymptotics
