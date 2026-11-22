/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Thirteenth retained run against the sixth

These are the original global rows 20236 through 20275 and columns 2790 through 2913.
Reuse the certified sixth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [17323, 17485] and the sum window is [23027, 23189].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 17486 then
    (digit 0x39c8420bc51ce426f1afce7216dbb187390d55b9e39c87ba04adce4472300ee7228a7ada7391715448b9c8d067ff5ce474ebfaee72413e6ba7392439993b9c94050e0dce4b042c32e72609a91873934bfd4b39c9cb42229ce4f91a1a8e7286b513773948a43adb9ca711c339ce54f61604e72b3853507395fe237a39cb31b8c45ce5b30495ee72e7008ba7397a7460239cc0cead19ce623ec638e73211b009739985473ab9cd027eabdce6a1fe1d4e7361c6d3f739b97b5d739ce123a06dce72d1bca2e73a8f4a01739dde1361b9cf3bdc049ce7c5242a6e73f6935ce73a057d459b9d07f1d465ce869f2bfae744a9064073a304605739d1dbaffd9ce91b5fd60e74a4d775973a5e3122c39d3513ffddce9d9408d4e750552bcb73a8f3380e39d4df72d19ceaa366e32e756bead4e73ac3413c239d685e7d09ceb79a1bf0e75d886cfd73afa4dac839d84438365cec5bbcfcee764b0c3b373b344b68eb9da19f73b9ced49817b2e76c35f27673b712c4a5b9dc06b2311cee42b526ce7741622e173bb0e16f639de09f09a9cef471b0aee77c4f679673bf35b3fc39e023344d9cf056735e4e784dfbcbb73c388970439e251f98edcf1707b944e78dc5087473c805b069b9e495b733dcf294ee6bee796fd1b6873ccabe5dcb9e6eddec39cf3c38401ce7a085b14c73d17a12a339e959dc9a5cf4fbf1e14e7aa5c717073d66f07e4b9ebd9180cdcf63deb172e7b47eef5273db898cf139ee6af38f1cf7892043ee7beeaab3973e0c85f91b9f10eccda5cf8dd3fb02e7c99d12d073e62a345639f3c3fd159cfa39f5602e7d49381cd73ebadb6e539f689d8fe1cfb9eeb28ae7dfcb429073f1518a53b9f95fb1125cfd0bc8c48e7eb418ed773f714497939fc44d1bd5cfe8033ea2e7f6f3906873fcf4874739ff3883825cfffbd061ce802de61c67402f0cf263a023a0b2b1d017e401cae80eff0ee9740907a54eba0548a9f5dd0307234c2e81b5295fb740f37872a3a08639dc45d049618798e827d5e81174157eebb0ba0b8a214c9d062abc9dce83485e9f4741bdc43cc3a0ebb6c491d07c4ab3ace8415f74e374224dfababa11f6b3ab1d09637e73ee84e5f575a7428d27671ba153b29cc9d0b06cf272e85b8255e2742f681805ba1887fea39d0cae35074e868c52bd6 (j - 17323) : ℤ) - 1000000000000
  else
    (digit 0x39ede202369cf6c7d756ae7b4f9deef73d9dcbd5a39ec9f64c81cf628c5a74e7b0134dfc73d7727d2439eb6ecdbcdcf592c117ae7ab75745573d52cbf2bb9ea508ad35cf505eff5ce7a7217fe073d30c181ab9e944e53b5cf48276468e7a3188c2573d1111363b9e84c2183dcf40875bbce79f5ba20373cf3c331c39e7667f89dcf3980dac6e79bebb76f73cd8defdcb9e6943a66dcf3315b0bce798c9af3573cc06b8a0b9e5d588639cf2d47862ae795f658bd73caa6f2ab39e52a9ae79cf2817dc80e793726fd273c96ef96b39e4939e6e9cf23880db0e7913e9c7873c85f1e6539e410ba7b5cf1f994bd6e78f5b72ba73c777a91d39e3a2118e9cf1c4ca0e4e78dc9728773c6b8d704b9e347c11d1cf19a2ee60e78c89078f73c622db68b9e301e1881cf179ced24e78b9a892773c5b5df66b9e2d086175cf163b2d30e78afe3a3073c57201df39e2b3bcf25cf157e1582e78ab4490573c557576db9e2ab8f1e1cf1565e3f6e78abccf6e73c565ea6339e2b800799cf15f2ad32e78b17d29873c59dbac2b9e2d90fbc1cf17245ca4e78bc5431173c5febe3eb9e30eb6751cf18fab47ae78cc4fcca73c688e03db9e358e90e9cf1b754db6e78e16c72173c73c01dbb9e3b796cd9cf1e939842e78fba54e873c817f9f2b9e42aa9d79cf2254db0ce791af447b73c91c9522b9e4b207369cf26b83436e793f51fd473ca4995df39e54d8edf9cf2bbc9946e7968b5caa73cb9eb47db9e5fd1bba5cf3160d76ce799715c8d73cd1b9f43b9e6c083aa1cf37a393c2e79ca66d1073cebffa7e39e79797975cf3e834baae7a029c7f173d08b609639e882237c1cf45fe551ee7a3fa934a73d27d622839e97fee6edcf4e12df22e7a817e1c873d495862039ea90bab1dcf56bef234e7ac80b2df73d6d349d6b9ebb445c21cf600070bce7b133f30e73d9362131b9ecea4865dcf69d5179ce7b6307c1f73dbbd76c539ee3276bfdcf743a7ebae7bb75156f73de68abf7b9ef8c80619cf7f2e1992e7c100743e73e137192bb9f0f8105ddcf8aad37dce7c6d13bfa73e4280de539f274cd5edcf96b5062ee7cce5fe9b73e73ad0f7b9f40259bb1cfa3428eb8e7d33d3cf773ea6ea0b139f5a0538ddcfb052b9f6e7d9d5672573edc2b30e39f74e54cd5cfbde24f72e7e0acdcde (j - 23027) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 163, crossSinc (17323 + j.val) = sincEntry (17323 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 163, crossSinc (23027 + j.val) = sincEntry (23027 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 17323 ≤ j) (hi : j ≤ 17485) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 17323, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 23027 ≤ j) (hi : j ≤ 23189) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 23027, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 35208180090506299649275171644821476469799196048 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (2790, 2913)) =
        35208180090506299649275171644821476469799196048 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (2790, 2913) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
