/-
Copyright (c) 2026 grwtsk contributors. MIT.
Original mathematical construction: Noam D. Elkies, Zev Klagsbrun, Samuel Li,
ICARM Elliptic Curve Rank Leaderboard #4239, submitted 2026-10-15.
2-descent technique: John Cremona and Armand Brumer.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. These proposed proof bodies
have not been elaborated or kernel checked in the current environment.
The finite computations below do not establish Mordell–Weil rank 32.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239Curve

/-!
# Rank-32 record #4239: finite two-descent character matrix

For chosen good prime p and root theta of the integral short cubic, the
local bit is the Euler-criterion nonresidue indicator for X(P)-theta; when
the difference vanishes mod p, evaluate f'(theta). The 32 columns contain
1024 exact finite source evaluations. These arithmetic rules are NOT yet
proved to define group homomorphisms E(Q)/2E(Q) -> ZMod 2.

An explicit left inverse checks the full 32-dimensional GF(2) matrix;
this finite statement is not a Mordell–Weil rank lower-bound theorem.
-/

set_option maxRecDepth 65536
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- Short equation Y² = X³ + shortA*X + shortB. -/
def shortA : ℤ := -37096611972852999238488605234523963178103092609105165894413531630061639275
def shortB : ℤ := 76358987054659736642898417989682546776692102018928001307426168848663338020996943087257548997707433748641083750

/-- Selected primes and simple roots of the short cubic modulo those primes. -/
def primeLabel : Fin 32 → ℕ := ![
    29,
    29,
    47,
    61,
    61,
    67,
    67,
    71,
    71,
    83,
    97,
    101,
    107,
    109,
    113,
    113,
    127,
    137,
    137,
    149,
    151,
    151,
    157,
    167,
    173,
    179,
    181,
    181,
    191,
    193,
    197,
    199
  ]
def rootLabel : Fin 32 → ℕ := ![
    0,
    4,
    37,
    15,
    21,
    5,
    8,
    15,
    27,
    78,
    49,
    49,
    62,
    53,
    1,
    37,
    113,
    13,
    42,
    147,
    47,
    114,
    154,
    45,
    107,
    1,
    17,
    36,
    2,
    10,
    31,
    98
  ]

/-- Bit i of column j is the quadratic-character output on source point i. -/
def characterMasks : Fin 32 → ℕ := ![
    1065482566,
    3754858807,
    414456816,
    808816088,
    2104706649,
    4272251078,
    877452869,
    2069221883,
    1548208116,
    3775671520,
    2811225754,
    742866402,
    3057232290,
    2750315254,
    96329554,
    1900223607,
    467219687,
    3083202782,
    711861601,
    3470624593,
    3826240659,
    411009034,
    2299123316,
    2614440451,
    3275320667,
    4059813932,
    921591485,
    1144127248,
    503287970,
    2015867168,
    1781184878,
    3884564734
  ]

/-- Row masks of an independently recomputed GF(2) left inverse. -/
def dualMasks : Fin 32 → ℕ := ![
    981968740,
    434504932,
    1722115896,
    3588923258,
    333531408,
    2852168494,
    71905143,
    3302629850,
    3111227027,
    1766542588,
    3623724436,
    4084515854,
    4011874123,
    3280800418,
    2967445173,
    2903335076,
    2295785589,
    840759372,
    2132311550,
    4133329881,
    561709646,
    4178759391,
    2466583523,
    4235274078,
    1832168493,
    1698131190,
    3593774227,
    600750008,
    1807660088,
    1695843272,
    3819275777,
    598771446
  ]

def bit (m : ℕ) (i : Fin 32) : ZMod 2 :=
  if m.testBit i.val then 1 else 0

def characterMatrix : Matrix (Fin 32) (Fin 32) (ZMod 2) :=
  Matrix.of (fun i j => bit (characterMasks j) i)

def dualMatrix : Matrix (Fin 32) (Fin 32) (ZMod 2) :=
  Matrix.of (fun i j => bit (dualMasks i) j)

/-- Kernel-checkable 1024-entry finite matrix identity; not a source theorem. -/
theorem dual_mul_character : dualMatrix * characterMatrix = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;> decide

/-- Finite GF(2) full-column-rank result obtained from the explicit inverse. -/
theorem characterMatrix_mulVec_injective :
    Function.Injective (Matrix.mulVec characterMatrix) := by
  intro x y h
  have h' := congrArg (Matrix.mulVec dualMatrix) h
  simpa only [Matrix.mulVec_mulVec, dual_mul_character, Matrix.one_mulVec] using h'

/-- Arithmetic preconditions on each source-labelled prime and root. -/
theorem primeLabels_valid :
    ∀ j : Fin 32, Nat.Prime (primeLabel j) ∧ 3 < primeLabel j := by
  decide

theorem rootLabels_valid : ∀ j : Fin 32,
    ((rootLabel j : ℤ) ^ 3 + shortA * (rootLabel j : ℤ) + shortB) %
      (primeLabel j : ℤ) = 0 ∧
    (3 * (rootLabel j : ℤ) ^ 2 + shortA) % (primeLabel j : ℤ) ≠ 0 := by
  decide

theorem goodPrimeLabels :
    ∀ j : Fin 32, recordDiscriminant % (primeLabel j : ℤ) ≠ 0 := by
  decide

/-- An exact finite Legendre bit on the bound integral short-model X. -/
def localBit (j i : Fin 32) : ZMod 2 :=
  let p := primeLabel j
  let theta : ℤ := rootLabel j
  let diff := (shortXInt i - theta) % (p : ℤ)
  let value := if diff = 0 then 3 * theta ^ 2 + shortA else diff
  if (((value % (p : ℤ)).toNat) ^ ((p - 1) / 2)) % p = p - 1
  then 1 else 0

/-- Each bit is recomputed from an actual source coordinate, not accepted as
an arbitrary matrix label. A *group homomorphism* supplier is still missing. -/
theorem localBit_eq_characterMatrix :
    ∀ j i : Fin 32, localBit j i = characterMatrix i j := by
  decide

/-- Hostile control: duplicate column 0 at column 31. -/
def duplicatedMatrix : Matrix (Fin 32) (Fin 32) (ZMod 2) :=
  Matrix.of (fun i j =>
    if j.val = 31 then characterMatrix i ⟨0, by decide⟩ else characterMatrix i j)

theorem duplicatedMatrix_ne_characterMatrix :
    duplicatedMatrix ≠ characterMatrix := by
  decide

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
