namespace Boolean.Cube

/-- Count the number of `true` entries in a Boolean list. -/
def ListTools.countTrue (xs : List Bool) : Nat :=
  xs.foldl (fun acc b => if b then acc + 1 else acc) 0

/-- Boolean disjunction across a list. -/
def ListTools.anyTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc || b) false

/-- Boolean conjunction across a list. -/
def ListTools.allTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc && b) true

/-- Sum a list of natural numbers. -/
def ListTools.sumNat (xs : List Nat) : Nat :=
  xs.foldl (fun acc x => acc + x) 0

/-- Sum a list of integers. -/
def ListTools.sumInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc + x) 0

/-- Product of a list of integers. -/
def ListTools.prodInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc * x) 1

end Boolean.Cube
