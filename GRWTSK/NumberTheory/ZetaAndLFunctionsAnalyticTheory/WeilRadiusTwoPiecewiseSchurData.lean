/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimePrices
import Mathlib

/-!
# An improved exact piecewise Doob--Schur prime diffuser, at physical T=2

This is a new positive ground-state bound on the SAME original
LowSchur.activePrimePowers 2 and LowSchur.primeWeight, with the SAME
rational upper tables of WeilRadiusTwoPolynomialSchurData.

For every physical |t|<=2, use 512 bins of width 1/256 in |t|,
j=min(511,floor(256*|t|)), and set h(t) to the integer hWord j.
The 512 source-bound positive integers below are the ground state.
Outside [-2,2], extend h by one. No existing source value depends
on this exterior choice. h is even, bounded, measurable and
strictly positive; it need not be continuous or differentiable.

At each j, each original prime-power q=2,...,54 and both signs,
the exact dyadic logLower/logUpper interval bounds the possibly
shifted |t+/-log q|. Each source-supported shifted interval meets
only the cells included in plusCells/minusCells below. Both
ranges deliberately include an extra neighboring bin at either
endpoint, so support/activation boundary equalities are retained.
The max of hWord on those cells is an EXACT upper bound on the
original physical shifted h, not a sampled estimate.
For the original source positive weight,
  primeWeight q <= (weightNumerator q)/10000
by WeilRadiusTwoPrimePrices.primeWeight_le.
Thus every literal positive prime row satisfies
  (K h)(t) <= rowNum(j)/10000.
The exact data check proves for ALL j in Fin 512:
  25*rowNum(j) <= 202*(10000*hWord(j)).
Hence for every source |t|<=2:
                K h(t) <= (202/25)*h(t).

Since K is symmetric under physical translation and has
nonnegative source weights, the weighted Schur inequality gives
  |twistedPrime 2 chi (C_f o log)| <= (202/25)*energy f
for EVERY complex Dirichlet character chi and every supported
physical complex L2 test f. This preserves the individual chi
phase until the justified absolute value. A positive K does not
identify with the original signed arithmetic operator.

This source file encodes the complete finite original-source row
certificate; the full interval-to-real-axis and weighted-integral
Lean theorems are separate pending formalizations. The written
argument above supplies the mathematical proof. Native compilation,
fresh kernel replay, transitive axiom audit and independent analytic
review of this Lean file remain NOT_RUN. The exact 512-cell
integer/rational replay was executed independently; its executable
verifier and bytes remain outside the pure math repository.

Comparison with preceding octic h: its outward maximum was 8.5880,
whereas this piecewise h has outward maximum 8.07039449. The
strict mathematical improvement comes from the source row majorant,
not from reversible finite-coordinate heat. The complete signed
zeta pole, full 399936-row middle Schur return, N=64 high floor,
paid 65x65 source matrix, cofinal windows and GRH remain open.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20).
Authoring source baseline:
grwtsk/math@56e17f24cef3ffaab1ca4cee85cdc439a713092f.
SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPiecewiseSchurData

open RadiusTwoPolynomialSchurData RadiusTwoPrimePrices

/-- Source-independent positive integer values of the piecewise
physical Schur ground state, one per half-window cell. -/
def groundWords : Array ℕ := #[
  10000, 10002, 9876, 9875, 9980, 9981, 9934, 10031, 10025, 10022, 10047, 10122, 10124, 10124, 8357, 8345,
  8286, 8244, 8376, 8396, 8988, 9010, 9010, 9000, 9097, 9067, 9075, 8953, 8955, 9023, 8982, 8981,
  8970, 8965, 9074, 8976, 9087, 9102, 9103, 9084, 9083, 9063, 8922, 8931, 8907, 8922, 8924, 8810,
  8841, 8959, 9711, 9731, 9746, 9748, 9759, 9583, 9656, 9652, 9649, 9758, 9709, 9663, 9658, 9650,
  9512, 9504, 9452, 9568, 9573, 9592, 9525, 9525, 9527, 9521, 9515, 9496, 9585, 9600, 9596, 9621,
  9579, 9573, 9630, 9602, 9662, 9664, 9641, 9651, 9524, 9529, 9636, 9582, 9612, 9613, 9664, 9675,
  9647, 9628, 9623, 9621, 7887, 9622, 9556, 9562, 9564, 9578, 9592, 9610, 9615, 9619, 9615, 9584,
  9574, 9573, 9525, 9456, 9459, 9518, 9530, 9525, 9548, 9542, 9619, 9615, 9493, 9465, 9423, 9413,
  9439, 9516, 9524, 9467, 9458, 9387, 9385, 9384, 9398, 9427, 9429, 9307, 9299, 9335, 9225, 9176,
  10893, 10890, 10891, 10900, 10927, 10925, 10791, 10790, 10763, 10772, 10684, 10779, 10796, 10799, 9966, 9847,
  9859, 9848, 10062, 10059, 10059, 9940, 9939, 9995, 9996, 9993, 9991, 10095, 10089, 9936, 9883, 9880,
  9885, 9778, 9777, 9783, 9918, 9922, 9930, 9938, 9904, 9791, 9803, 9814, 9825, 9820, 9917, 9906,
  9907, 9804, 9815, 9852, 9931, 10296, 10307, 10300, 10318, 10228, 10239, 10125, 10120, 10127, 10120, 10107,
  10010, 10008, 9923, 9923, 9872, 11526, 11455, 11457, 11459, 11427, 11427, 11427, 11329, 11422, 11407, 11314,
  11308, 11319, 11421, 11432, 11435, 11439, 11446, 9918, 9916, 9921, 9869, 9904, 9911, 9916, 9923, 9924,
  9915, 11551, 11546, 11484, 11442, 11454, 11343, 11341, 11225, 11226, 11235, 11149, 11118, 11208, 11106, 11117,
  11134, 11137, 11154, 11077, 11080, 11067, 11054, 11017, 11031, 10903, 11189, 11178, 11178, 11183, 11049, 11080,
  11088, 11068, 11005, 11002, 10995, 10985, 11012, 11025, 11034, 11044, 10944, 10948, 10915, 10901, 10903, 10797,
  10801, 10709, 12282, 12173, 12167, 12121, 12209, 12221, 12240, 12103, 12110, 12097, 12098, 12109, 12113, 11989,
  12014, 11950, 11921, 11937, 11800, 11831, 11821, 11825, 12614, 12621, 12641, 12554, 12556, 12463, 12456, 12454,
  12592, 12552, 12511, 12450, 12475, 12422, 12427, 12393, 12396, 12385, 12526, 12932, 12960, 12972, 12980, 11800,
  11768, 11711, 11697, 11859, 11866, 11842, 11830, 11707, 11668, 11669, 11596, 11664, 11683, 11679, 13195, 13132,
  13113, 13066, 12964, 12955, 12843, 12840, 12887, 12890, 12693, 12655, 12656, 12649, 12624, 12625, 12551, 14020,
  13904, 13920, 13862, 13856, 13827, 13961, 13807, 14134, 14092, 13874, 13867, 13860, 13767, 13926, 13926, 13936,
  13951, 13947, 13954, 13969, 13799, 13996, 13945, 13852, 13767, 13762, 13709, 13683, 13668, 13767, 13770, 13775,
  13786, 13805, 13685, 13756, 13766, 13632, 13630, 13595, 13512, 13584, 13508, 13530, 14963, 14961, 14807, 14731,
  14709, 14763, 14752, 14757, 14684, 14660, 14575, 14565, 14801, 14785, 14697, 14721, 14573, 14571, 14581, 14538,
  14540, 14522, 14528, 14548, 14557, 14364, 15761, 15754, 15751, 15697, 15676, 15517, 15515, 15387, 15397, 15453,
  15366, 15371, 16702, 16683, 16590, 16485, 16462, 16493, 16478, 16463, 16475, 16414, 16336, 16362, 16378, 16396,
  16410, 16303, 16476, 16484, 16426, 16318, 16336, 16210, 16217, 17562, 17551, 17553, 17404, 17440, 17412, 17332,
  17250, 17265, 17295, 17371, 18013, 18021, 17877, 17872, 17892, 17863, 17878, 17783, 17726, 17992, 17938, 17894,
  17897, 17934, 17929, 17933, 17928, 17971, 17875, 17836, 19170, 19189, 19204, 19275, 19306, 19337, 19360, 19352
]

def groundWord (j : ℕ) : ℕ := groundWords[j]!

theorem groundWords_size : groundWords.size = 512 := by decide

private theorem groundWord_pos_all : ∀ j : Fin 512, 0 < groundWord j.val := by
  decide +kernel

theorem groundWord_pos (j : Fin 512) : 0 < groundWord j.val :=
  groundWord_pos_all j

private def L : ℕ := logScale
private def S : ℕ := cellStride
private def left (j : ℕ) : ℕ := binLower j
private def right (j : ℕ) : ℕ := binUpper j

/-- Exact natural absolute difference; saturation must not erase
a negative translated coordinate. -/
def absDist (a b : ℕ) : ℕ := max (a-b) (b-a)

/-- Conservative adjacent-cell enclosure. The extra two endpoint
neighbors are intentional and must NOT be dropped by rounding. -/
def cells (a b : ℕ) : Finset ℕ :=
  Finset.Icc (a / S - 1) (min 511 (b / S + 1))

/-- Largest stored ground value on the indicated complete finite cells. -/
def maxWord (a b : ℕ) : ℕ :=
  (cells a b).sup groundWord

def plusWord (j q : ℕ) : ℕ :=
  if left j + (logWord q).1 ≤ 2*L then
    maxWord (left j+(logWord q).1)
      (min (2*L) (right j+(logWord q).2))
  else 0

/-- Source interval [left j - upperLog, right j - lowerLog]
passes through zero exactly when its two displayed inequalities hold. -/
def minusMinAbs (j q : ℕ) : ℕ :=
  if left j ≤ (logWord q).2 ∧ (logWord q).1 ≤ right j then 0
  else min (absDist (left j) (logWord q).2)
           (absDist (right j) (logWord q).1)

def minusMaxAbs (j q : ℕ) : ℕ :=
  min (2*L) (max (absDist (left j) (logWord q).2)
                  (absDist (right j) (logWord q).1))

def minusWord (j q : ℕ) : ℕ :=
  if (logWord q).1 ≤ right j + 2*L then
    maxWord (minusMinAbs j q) (minusMaxAbs j q)
  else 0

/-- Every q from 2 through 54, retaining the source zero weight at
non-prime powers. The two original shift directions remain distinct. -/
def rowNumerator (j : ℕ) : ℕ :=
  ∑ q ∈ Finset.Icc 2 54,
    weightNumerator q * (plusWord j q + minusWord j q)

def rowDenominator (j : ℕ) : ℕ := 10000*groundWord j

def checked (j : Fin 512) : Bool :=
  decide (25*rowNumerator j.val ≤ 202*rowDenominator j.val)

/-- All 512 exact outward source-row inequalities: NO numerical sample
or source-sign assumption enters this finite arithmetic statement. -/
theorem all_rows_checked : ∀ j : Fin 512, checked j = true := by
  decide +kernel

theorem row_price_le (j : Fin 512) :
    25*rowNumerator j.val ≤ 202*rowDenominator j.val :=
  of_decide_eq_true (all_rows_checked j)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPiecewiseSchurData
