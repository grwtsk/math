/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Tenth retained run against the eighth

These are the original global rows 8652 through 8758 and columns 5271 through 5331.
Reuse the certified eighth-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3321, 3487] and the sum window is [13924, 14090].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 3488 then
    (digit 0x3c0ab278e05e06814ffbef03d2ef88178231b92663c13c8b7231e0afe3eff2f060a44fb778349cde6c3c1c6c86365e0f41a7b50f0824b059e784535a5c3bc249b7aa71e134a57d12f0a219a36a7854e13ae63c2c5344ac1e17172af12f0c007223f78639b2896bc3391b0c8de1aa70aeccf0dc0aedb378715f331dbc3a54a86a5e1df8f0238f0f61ce62f787e295979bc409a327cde210be1c6cf10e35633a7889f5d67cbc466073fa9e23def61fcf1244d35a37894c121e23c4ba5b0725e267152d30f1385da995789e87f151bc50684a891e28c22d1f4f14a60888678a74739553c54a6c4725e2ad0ca18ef15a501b0b78aefc2e3dbc585fc060de2c9c7ee1ef168272a9178b5a444fdbc5b9200f19e2e24b0ddcf173e102f378bb3d33ee3c5e3c698cde2f68d5e10f17d7973f378bfc4f387bc605dfec01e3068745def184ecd28e78c339bf0abc61f5e690de3123238c0f18a37fa3b78c59a15173c630368c5de31988b8c0f18d584dfd78c6e4b833bc6385ef291e31c865884f18e4bb95978c718af45bc637d05c15e31b27bcf8f18d10b13178c63545f7bc62e85b031e3156a9ed2f189a6347178c43a0d0dbc61c7bff9de30b4dcbc8f1840bcca878c126daab3c601b2867de2fcd12776f17c418e7078bcfbca883c5de2aadd9e2e9f5ac18f1724819c578b7b93e103c5b1e80ca5e2d2bd6aeaf166209a2878b15fdc77bc57cf06809e2b72b8c50f157ccc6af78a9f092b93c53f4bb369e297444faef1474ee1e778a16c93883c4f9040f9de2730d0b10f134a9b99b7897d5572a3c4aa25c9c1e24a8c2a6cf11fe0a676788d2c9b473c452bf5985e21dc92ebef108f78b7f78817462a1bc3f2e15ed5e1ecccacd0f0eff2d5787874aef4c3bc38a9e9f0de1b7a04bbcf0d4d77a157866dedd94bc31a0c0191e17e4ec32ef0b7aaf719785806ece2bc2a1408c01e140e3d962f09873514678482a35d8bc220555da9e0ff6c60d6f07737133478374c0e63bc19765aaa5e0b9f635c6f053fd4c007825700e86bc1068eb659e070903b5af02ecd8de078129a0fa03c06defcd75e0234a588cf007afec8b77fece2b9c3bfcdaa3f61dfd23574e6efdeacfb8f77ea10bc17bbf25e15741df7d6374d8efb3cdcc7877d46659723be76ba5461df24e735f0ef871becdf77bdd3d9d13bdc05c6231dec8d48ac0ef58a16458 (j - 3321) : ℤ) - 1000000000000
  else
    (digit 0x3a24a2c23fdd12d7a891ae89af09ec8744f9283773a28d69b0e5d14f217bb6e8abc7eb057457fff1713a2d0e25269d170e3dea4e8bcabe22b7460732e21ba3148532d5d192b94536e8cd984d0b7468ea1d8d3a358416f71d1b4993cc2e8de88f1bb747162a27cba39c061cadd1d67b4ebee8ef7994a47479da9f043a3dfc24a71d1f85702dee90065f99274824ff50c3a423650851d21a23e136e91149e4c5748ac086d6ba466dd69b5d23bd9744ee922211bfb74932a37883a4aa1a8a39d25d6f4b48e932e76781749b8aebaeba4ed0b91c5d27edcfbf8e94398934474a3e089c93a52f9fb8d5d2a01a2508e954306fd974ac28faccba571c64cadd2c11e7000e964aad38f74b4622aac3a5b36eb381d2e1e19370e975039b7674bc8a08dcba5f48870add3025b54f8e98536ac6974c49e88daba6350328bdd322838b60e9953ff41a74cc9da2adba674cea5add34252209ce9a51b6a1374d485536a3a6b3dadaddd361bf13dee9b4c510bb74dc539db3ba6f217e929d380c27b92e9c438f65974e4068a3cba72f7622ddd39f548760e9d373360e74eb9c2845ba76be60fb9d3bd6d821ee9e26ff8d474f3128e19ba7a75870c9d3db05d3cae9f12b767474fa67d98a3a7e1be4435d3f816036ce9ffa1f67975019a30683a81b08c91dd41496b8faea0dcfd1217508a7c0fbba853298349d43080bf38ea1bb1704d750f8ec27aba88a123ed5d44bcd0584ea2943506375164d757c3a8bfb513c1d46674a1a2ea36820136751ce224673a8f4046979d48070d17eea436a26e175234b23e53a926f2fa4dd499bafce0ea4ff87aa6752986d34b3a95873d6cdd4b24cb714ea5c29cbbe752f939d053a9887a6901d4ca1fc096ea67fb002b75356ff6fdba9b6fa77b9d4e12e089cea73691580753b1a62ffba9e3e82989d4f771aeaeea7e7121a77540916f19baa0f3807e1d50ce50418ea8910539d7545d3b5fbbaa38df01f9d521828d64ea9343f42d754adfdf51baa60d26f99d5354503c2ea9d09669c754fb4a01cbaa870813d9d54827565eeaa65e295b755450bb05baaab761fc1d55a24abaceaaf3fd6a57558b300b13aace1334c9d56b3862a4eab7ac2520755cda500bbaaeed6673dd57b5e13faeabfa0e8757560c596943ab0db74099d58a91933aeac71c11d9756473d0a2bab2aadc1a5d598ceefdeeace1bb09c (j - 13924) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 167, crossSinc (3321 + j.val) = sincEntry (3321 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 167, crossSinc (13924 + j.val) = sincEntry (13924 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3321 ≤ j) (hi : j ≤ 3487) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3321, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 13924 ≤ j) (hi : j ≤ 14090) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 13924, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1463404138778319154987899941321625923230163444622 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the eighth
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithEighthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (5271, 5331)) =
        1463404138778319154987899941321625923230163444622 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (5271, 5331) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
