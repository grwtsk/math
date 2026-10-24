import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate0
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate1
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate2
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate3
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate4
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate5
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate6
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate7
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate8
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate9
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate10
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate11
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate12
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate13
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Certificate14

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes

structure Nodes where
  a : Fin 6
  b : Fin 6
  c : Fin 6
  d : Fin 6
deriving DecidableEq

def getNode (n : Nodes) (j : Fin 4) : Fin 6 :=
  if j = 0 then n.a else if j = 1 then n.b else if j = 2 then n.c else n.d

abbrev Sorted (n : Nodes) : Prop := n.a < n.b ∧ n.b < n.c ∧ n.c < n.d

def selectedNodes (k : Fin 15) : Nodes :=
  if k = 0 then ⟨0, 1, 2, 3⟩ else
  if k = 1 then ⟨0, 1, 2, 4⟩ else
  if k = 2 then ⟨0, 1, 2, 5⟩ else
  if k = 3 then ⟨0, 1, 3, 4⟩ else
  if k = 4 then ⟨0, 1, 3, 5⟩ else
  if k = 5 then ⟨0, 1, 4, 5⟩ else
  if k = 6 then ⟨0, 2, 3, 4⟩ else
  if k = 7 then ⟨0, 2, 3, 5⟩ else
  if k = 8 then ⟨0, 2, 4, 5⟩ else
  if k = 9 then ⟨0, 3, 4, 5⟩ else
  if k = 10 then ⟨1, 2, 3, 4⟩ else
  if k = 11 then ⟨1, 2, 3, 5⟩ else
  if k = 12 then ⟨1, 2, 4, 5⟩ else
  if k = 13 then ⟨1, 3, 4, 5⟩ else
  ⟨2, 3, 4, 5⟩

def dataNodes : Nodes := ⟨0, 1, 2, 3⟩

def encoding (k : Fin 15) : Matrix :=
  if k = 0 then encode0 else
  if k = 1 then encode1 else
  if k = 2 then encode2 else
  if k = 3 then encode3 else
  if k = 4 then encode4 else
  if k = 5 then encode5 else
  if k = 6 then encode6 else
  if k = 7 then encode7 else
  if k = 8 then encode8 else
  if k = 9 then encode9 else
  if k = 10 then encode10 else
  if k = 11 then encode11 else
  if k = 12 then encode12 else
  if k = 13 then encode13 else
  encode14

def recovery (k : Fin 15) : Matrix :=
  if k = 0 then recover0 else
  if k = 1 then recover1 else
  if k = 2 then recover2 else
  if k = 3 then recover3 else
  if k = 4 then recover4 else
  if k = 5 then recover5 else
  if k = 6 then recover6 else
  if k = 7 then recover7 else
  if k = 8 then recover8 else
  if k = 9 then recover9 else
  if k = 10 then recover10 else
  if k = 11 then recover11 else
  if k = 12 then recover12 else
  if k = 13 then recover13 else
  recover14

set_option maxHeartbeats 50000000 in
theorem selectedNodes_sorted : ∀ k : Fin 15, Sorted (selectedNodes k) := by decide

set_option maxHeartbeats 50000000 in
theorem sorted_profiles_complete : ∀ a b c d : Fin 6,
    a < b → b < c → c < d → ∃ k : Fin 15, selectedNodes k = ⟨a,b,c,d⟩ := by decide

theorem any_sorted_profile (n : Nodes) (h : Sorted n) :
    ∃ k : Fin 15, selectedNodes k = n := by
  cases n with
  | mk a b c d => exact sorted_profiles_complete a b c d h.1 h.2.1 h.2.2



def fullEncodingRow (node : Fin 6) : Row :=
  if node = 0 then slot 0 1 else if node = 1 then slot 1 1 else
  if node = 2 then slot 2 1 else if node = 3 then slot 3 1 else
  if node = 4 then encode5 2 else encode5 3

def fullEncode (x : Four) : Fin 6 → GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Word :=
  fun node => rowEval (fullEncodingRow node) x

def selectProfile (k : Fin 15)
    (samples : Fin 6 → GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128.Word) : Four :=
  ⟨samples (getNode (selectedNodes k) 0), samples (getNode (selectedNodes k) 1),
    samples (getNode (selectedNodes k) 2), samples (getNode (selectedNodes k) 3)⟩

set_option maxHeartbeats 50000000 in
theorem fullEncodingRow_selected : ∀ (k : Fin 15) (j : Fin 4),
    fullEncodingRow (getNode (selectedNodes k) j) = encoding k j := by decide

theorem selectProfile_fullEncode (k : Fin 15) (x : Four) :
    selectProfile k (fullEncode x) = transform (encoding k) x := by
  apply Four.ext <;>
    exact congrArg (fun row => rowEval row x) (fullEncodingRow_selected k _)

theorem erasure_roundtrip (k : Fin 15) (x : Four) :
    transform (recovery k) (transform (encoding k) x) = x := by
  have hk : k = 0 ∨ k = 1 ∨ k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 5 ∨ k = 6 ∨
      k = 7 ∨ k = 8 ∨ k = 9 ∨ k = 10 ∨ k = 11 ∨ k = 12 ∨ k = 13 ∨ k = 14 := by omega
  rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl
  · exact roundTrip0_exact x
  · exact roundTrip1_exact x
  · exact roundTrip2_exact x
  · exact roundTrip3_exact x
  · exact roundTrip4_exact x
  · exact roundTrip5_exact x
  · exact roundTrip6_exact x
  · exact roundTrip7_exact x
  · exact roundTrip8_exact x
  · exact roundTrip9_exact x
  · exact roundTrip10_exact x
  · exact roundTrip11_exact x
  · exact roundTrip12_exact x
  · exact roundTrip13_exact x
  · exact roundTrip14_exact x

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
