namespace GRWTSK.Fixture
def fixtureValue : Nat := 1
theorem fixtureValue_eq_one : fixtureValue = 1 := rfl
private theorem privateTruth : True := True.intro
def patternedValue : Nat → Nat
  | 0 => 0
  | n + 1 => n
theorem patternedValue_zero : patternedValue 0 = 0 := patternedValue.eq_1
theorem patternedValue_succ (n : Nat) : patternedValue (Nat.succ n) = n :=
  patternedValue.eq_2 n
end GRWTSK.Fixture
