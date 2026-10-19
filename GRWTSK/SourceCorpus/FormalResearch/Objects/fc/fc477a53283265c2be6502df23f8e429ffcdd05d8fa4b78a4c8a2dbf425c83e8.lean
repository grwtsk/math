import Mathematics.Projection.IncidenceCode

/-!
# Compatible Boolean probe stages

An evolving family of incidence coordinates belongs to an inverse system of
finite Boolean stages.  Residues therefore retain their full compatible
coordinates; they are not collapsed to a single undifferentiated infinity.
-/

namespace Mathematics.Projection

universe u v

structure BooleanProbeSystem (Stage : Type u) [Preorder Stage] where
  Probe : Stage → Type v
  restrict :
    ∀ {earlier later : Stage},
      earlier ≤ later →
        IncidenceCode (Probe later) →
          IncidenceCode (Probe earlier)
  restrict_refl :
    ∀ stage code, restrict (show stage ≤ stage from le_rfl) code = code
  restrict_trans :
    ∀ {first second third : Stage}
      (firstToSecond : first ≤ second)
      (secondToThird : second ≤ third)
      (code : IncidenceCode (Probe third)),
      restrict firstToSecond (restrict secondToThird code) =
        restrict (firstToSecond.trans secondToThird) code

/-- A point of the Boolean inverse limit (Stone-stage closure). -/
structure StonePoint
    {Stage : Type u} [Preorder Stage]
    (system : BooleanProbeSystem Stage) where
  coordinate : ∀ stage, IncidenceCode (system.Probe stage)
  compatible :
    ∀ {earlier later : Stage} (relation : earlier ≤ later),
      system.restrict relation (coordinate later) = coordinate earlier

end Mathematics.Projection
