# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpinDivisibilityCover.Variant570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0ea0a38c95b3f56a1d78a5ab153618b3698ea9c` · SHA-256 `570b60a7e09e88f61790b5c277ac7843b7b7cc3342d1bc61000f7d277358828c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.PoleBoundaryNormalization

set_option autoImplicit false

namespace Think.Arithmetic.SpinDivisibilityCover

structure CyclicSpinCover where
  modulus : Nat
  modulusPositive : Bool
deriving Repr, DecidableEq

def coverOne : CyclicSpinCover :=
  { modulus := 1, modulusPositive := true }

def coverTwo : CyclicSpinCover :=
  { modulus := 2, modulusPositive := true }

def coverThree : CyclicSpinCover :=
  { modulus := 3, modulusPositive := true }

def residueAfterFlips (cover : CyclicSpinCover) (flips : Nat) : Nat :=
  if cover.modulus = 0 then 0 else flips % cover.modulus

def closesAfter (cover : CyclicSpinCover) (flips : Nat) : Bool :=
  residueAfterFlips cover flips = 0

def fundamentalFlipCount (cover : CyclicSpinCover) : Nat :=
  if cover.modulus = 0 then 0 else cover.modulus

def completeCoverCount (cover : CyclicSpinCover) (flips : Nat) : Nat :=
  if cover.modulus = 0 then 0 else flips / cover.modulus

def halfPoleLiftNumerators (m : Nat) : List Nat :=
  (List.range m).map (fun k => 2 * k + 1)

structure MultiplicativeCoverSurface where
  divisor : Nat
  flips : Nat
  residue : Nat
  closes : Bool
  completeCovers : Nat
  fundamentalPeriod : Nat
  halfPoleLiftCount : Nat
  newPrimalityTheoremClaim : Bool
deriving Repr, DecidableEq

def multiplicativeCoverSurface (cover : CyclicSpinCover) (flips : Nat) :
    MultiplicativeCoverSurface :=
  { divisor := cover.modulus
    flips := flips
    residue := residueAfterFlips cover flips
    closes := closesAfter cover flips
    completeCovers := completeCoverCount cover flips
    fundamentalPeriod := fundamentalFlipCount cover
    halfPoleLiftCount := (halfPoleLiftNumerators cover.modulus).length
    newPrimalityTheoremClaim := false }

def nontrivialDivisorCoverClosures (N : Nat) : List Nat :=
  (List.range (N + 1)).filter
    (fun m => decide (2 <= m) && decide (m < N) && decide (N % m = 0))

structure PrimeCoverScanSurface where
  number : Nat
  closedNontrivialDivisorCovers : List Nat
  primeByFiniteDivisorScan : Bool
  newPrimalityTheoremClaim : Bool
deriving Repr, DecidableEq

def primeCoverScanSurface (N : Nat) : PrimeCoverScanSurface :=
  let closures := nontrivialDivisorCoverClosures N
  { number := N
    closedNontrivialDivisorCovers := closures
    primeByFiniteDivisorScan := decide (1 < N) && decide (closures = [])
    newPrimalityTheoremClaim := false }

theorem cover_one_positive_period :
    fundamentalFlipCount coverOne = 1 := by
  rfl

theorem cover_two_first_return :
    closesAfter coverTwo 1 = false ∧ closesAfter coverTwo 2 = true := by
  exact ⟨rfl, rfl⟩

theorem cover_three_first_return :
    residueAfterFlips coverThree 2 = 2 ∧ closesAfter coverThree 3 = true := by
  exact ⟨rfl, rfl⟩

theorem halfPoleLift_count (m : Nat) :
    (halfPoleLiftNumerators m).length = m := by
  simp [halfPoleLiftNumerators]

theorem cover_surface_twenty_over_five :
    multiplicativeCoverSurface
      { modulus := 5, modulusPositive := true }
      20 =
    { divisor := 5
      flips := 20
      residue := 0
      closes := true
      completeCovers := 4
      fundamentalPeriod := 5
      halfPoleLiftCount := 5
      newPrimalityTheoremClaim := false } := by
  native_decide

theorem prime_seven_has_no_nontrivial_cover_closure :
    (primeCoverScanSurface 7).closedNontrivialDivisorCovers = [] ∧
      (primeCoverScanSurface 7).primeByFiniteDivisorScan = true := by
  native_decide

theorem composite_twelve_has_nontrivial_cover_closures :
    (primeCoverScanSurface 12).closedNontrivialDivisorCovers = [2, 3, 4, 6] ∧
      (primeCoverScanSurface 12).primeByFiniteDivisorScan = false := by
  native_decide

theorem prime_cover_scan_is_not_new_primality_theorem (N : Nat) :
    (primeCoverScanSurface N).newPrimalityTheoremClaim = false := by
  rfl

end Think.Arithmetic.SpinDivisibilityCover
```
