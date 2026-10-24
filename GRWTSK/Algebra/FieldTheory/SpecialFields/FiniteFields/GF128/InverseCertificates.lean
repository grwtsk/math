import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv9
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv10
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv12
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv14
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv18
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv24
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv27
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv28
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv30
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv36
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv40
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv45
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv54
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv56
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv60
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv72
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv90
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Inv108
namespace GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000
/-- The complete set of nonzero denominators occurring in four-node RS interpolation at nodes 1..6. -/
def runtimeDenominators : List Nat := [9, 10, 12, 14, 18, 24, 27, 28, 30, 36, 40, 45, 54, 56, 60, 72, 90, 108]
/-- A finite lookup certificate; not a replacement for the runtime exponentiation implementation. -/
def lookupInv : Nat → Option Word
  | 9 => some 48611766702991209066196372490252601654
  | 10 => some 56713727820156410577229101238628035263
  | 12 => some 255211775190703847597530955573826158499
  | 14 => some 72917650054486813599294558735378902445
  | 18 => some 24305883351495604533098186245126300827
  | 24 => some 297747071055821155530452781502797184914
  | 27 => some 37809151880104273718152734159085356818
  | 28 => some 206600008487712638531334583083573556885
  | 30 => some 34028236692093846346337460743176821141
  | 36 => some 182294125136217033998236396838447256078
  | 40 => some 99249023685273718510150927167599061646
  | 45 => some 15705340011735621390617289573773917454
  | 54 => some 18904575940052136859076367079542678409
  | 56 => some 273441187704325550997354595257670884105
  | 60 => some 187155301806516154904856034087472516233
  | 72 => some 91147062568108516999118198419223628039
  | 90 => some 7852670005867810695308644786886958727
  | 108 => some 179593471430495300161225487255655444871
  | _ => none

theorem inv_eq_lookupInv (d : Nat) (h : d ∈ runtimeDenominators) :
    inv (BitVec.ofNat 128 d) = lookupInv d := by
  simp only [runtimeDenominators, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact inv9_exact
  · exact inv10_exact
  · exact inv12_exact
  · exact inv14_exact
  · exact inv18_exact
  · exact inv24_exact
  · exact inv27_exact
  · exact inv28_exact
  · exact inv30_exact
  · exact inv36_exact
  · exact inv40_exact
  · exact inv45_exact
  · exact inv54_exact
  · exact inv56_exact
  · exact inv60_exact
  · exact inv72_exact
  · exact inv90_exact
  · exact inv108_exact


/-- The computed runtime inverse is a two-sided multiplicative inverse on every RS denominator. -/
theorem runtime_inverse_laws (d : Nat) (h : d ∈ runtimeDenominators) :
    ∃ value : Word, inv (BitVec.ofNat 128 d) = some value ∧
      mul (BitVec.ofNat 128 d) value = 1 ∧ mul value (BitVec.ofNat 128 d) = 1 := by
  simp only [runtimeDenominators, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨48611766702991209066196372490252601654, inv9_exact, by rfl, by rfl⟩
  · exact ⟨56713727820156410577229101238628035263, inv10_exact, by rfl, by rfl⟩
  · exact ⟨255211775190703847597530955573826158499, inv12_exact, by rfl, by rfl⟩
  · exact ⟨72917650054486813599294558735378902445, inv14_exact, by rfl, by rfl⟩
  · exact ⟨24305883351495604533098186245126300827, inv18_exact, by rfl, by rfl⟩
  · exact ⟨297747071055821155530452781502797184914, inv24_exact, by rfl, by rfl⟩
  · exact ⟨37809151880104273718152734159085356818, inv27_exact, by rfl, by rfl⟩
  · exact ⟨206600008487712638531334583083573556885, inv28_exact, by rfl, by rfl⟩
  · exact ⟨34028236692093846346337460743176821141, inv30_exact, by rfl, by rfl⟩
  · exact ⟨182294125136217033998236396838447256078, inv36_exact, by rfl, by rfl⟩
  · exact ⟨99249023685273718510150927167599061646, inv40_exact, by rfl, by rfl⟩
  · exact ⟨15705340011735621390617289573773917454, inv45_exact, by rfl, by rfl⟩
  · exact ⟨18904575940052136859076367079542678409, inv54_exact, by rfl, by rfl⟩
  · exact ⟨273441187704325550997354595257670884105, inv56_exact, by rfl, by rfl⟩
  · exact ⟨187155301806516154904856034087472516233, inv60_exact, by rfl, by rfl⟩
  · exact ⟨91147062568108516999118198419223628039, inv72_exact, by rfl, by rfl⟩
  · exact ⟨7852670005867810695308644786886958727, inv90_exact, by rfl, by rfl⟩
  · exact ⟨179593471430495300161225487255655444871, inv108_exact, by rfl, by rfl⟩

/-- Zero is explicitly rejected by the actual inversion model. -/
theorem inv_zero_refused : inv 0 = none := rfl

#print axioms inv_eq_lookupInv
#print axioms runtime_inverse_laws
#print axioms inv_zero_refused
end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128
