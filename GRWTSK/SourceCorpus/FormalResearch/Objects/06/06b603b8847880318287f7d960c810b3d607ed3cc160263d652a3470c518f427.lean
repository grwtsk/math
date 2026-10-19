import Mathematics.Orbit.FiniteCyclic

/-! # Stabilizers remain separate from orbit size -/

namespace Mathematics.Orbit

universe u v

def Stabilizes
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (groupElement : G)
    (point : Point) : Prop :=
  action groupElement point = point

def Stabilizer
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (point : Point) : Set G :=
  {groupElement | Stabilizes action groupElement point}

end Mathematics.Orbit
