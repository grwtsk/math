import Mathematics.Progression.Tower

/-! # Progression validation -/

namespace Mathematics.Progression

def RevisionsIncrease (tower : Tower Payload) : Prop :=
  tower.states.Pairwise fun earlier later ↦ earlier.revision < later.revision

def LinksAgree (tower : Tower Payload) : Prop :=
  ∀ earlier later,
    earlier ∈ tower.states →
    later ∈ tower.states →
    earlier.revision + 1 = later.revision →
    later.predecessor = some earlier.id

structure Valid (tower : Tower Payload) : Prop where
  idValid : tower.id.Valid
  revisionsIncrease : RevisionsIncrease tower
  linksAgree : LinksAgree tower
  digestValid : tower.progressionDigest.Valid

end Mathematics.Progression
