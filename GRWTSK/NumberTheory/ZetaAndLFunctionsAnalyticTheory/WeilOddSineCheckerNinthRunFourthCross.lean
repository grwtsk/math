/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Ninth retained run against the fourth

These are the original global rows 6208 through 6270 and columns 1177 through 1294.
Reuse the certified fourth-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4914, 5093] and the sum window is [7386, 7565].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 5094 then
    (digit 0x76f4a3eb833b7bd373fc9dbea7ff09cedfb1e365b7700743851bb81a7a380ddc1880eb40ee11ce0ef2770ba3a0de3b872afd849dc43f828acee2737853b77162f18e1bb8c5c00d09dc6cd9c6b8ee3b54bc07772013bbc4bb9139401f1dc931a8398ee4e2026b677294ecd66bb95c1627d9dcb6afc0d4ee5f948ab67731ddbaddbb99f323ac5dcd78f8644ee6fad00f17739be1b2a3b9dcd54761dcf5b084c2ee7e64f7297740edafe13ba14edb055dd110a18c2ee8bb8313f77476a65cfbba476b3329dd29944cc4ee97a2ca60774d32558cbba743eece5dd3f47db8eeea2213624775243c405bba9b5b5e45dd521e324ceeab30419477569d2300bbabcb46fb9dd62117270eeb2cd1417775a3d118f3bad83f74f5dd6f1c7380eeb8f53050775d225c793baedf3301ddd793ac49aeebda674e1775f4bfe9d3bafdc7d4bddd8068ade4eec0df1d157760b921433bb07b70a45dd84a331beeec29dc17b7761691c643bb0bbbee31dd85e80dd2eec2e1586177615b76e93bb09d315e9dd8435bbeceec1a9364077608fe6d9bbb01fa901ddd7f8b72a4eebef50e0c775f0651843baf431e5e9dd77e925eaeebac4f16a775cbecb953bae07a1b8ddd6d4f8748eeb51950da7759b999283bac6d5b0c5dd5fc0060ceeadf2fbb87755f72dc73baa748a0b5dd4f3ccf32eea55320377751782c633ba81d8619ddd3bc8cd32ee9b3b4b37774c3d673ebba568be411dd2567a784ee8fad680d774647dfcc3ba256b91c9dd0c1dc216ee82abc02c773f98c680bb9ee814c39dceff03c6eee7438fabc7738317a9cbb9b1d86aa5dcd0e4f0c0ee64581c1277301389e6bb96f7db7e9dcaf0272c0ee530c851f772740b05b3b9277f6fe9dc8a500e40ee4059f2b5771dbad7d0bb8d9ed3c99dc62d5c5beee2c447cc477138417923b886d8329ddc389c509eee16d0957877089eb3e9bb82e52cdb5dc0bad1952ee0003084276fd0d1da53b7d070ecaddbdc123b4aede7e0f8ce76f0d1f18abb76d47cceddba9d680b2edce6fe1dc76e3eff7c43b704ee05cddb75056012edb3b5940876d66a23423b6977b8389db3daaf9b6ed97b8347a76c843910e3b6250981c1db03d414eeed7a7e3b8176b97f8797bb5adb285d1dac78e1d24ed5c0e731876aa2175f33b5319258adda88e71ec6ed3c6ff558769a2cf310bb4b0c60085da47edc412ed1baa2ad47689a5bce5bb42b6bba01da04b1519eecf9c4c8e076788fb791bb3a1a2f14dd9bf41a2e0ecd6c7cfc57666eeec733b3138c3aa9d977af2662ecb2bb88e3 (j - 4914) : ℤ) - 1000000000000
  else
    (digit 0x758253331e3ac2d0aacf9d623ad101eeb1861e1d3758f724ee53ac957a8561d6579fa400eb32381567759c4ba8aabacfbb5aecdd68a74951aeb4b7dd41275a8dbf74abad5fa20231d6bc1ee126eb642ca56a75b52002fabadc125e4fdd6ec91ccf2eb7c3e34fa75c114a61fbae20284fb9d71bc0e7a4eb93ac53e075ccb6ce1abae7c90d459d749a00de4ebaa70fa6075d8037c11baed647a499d776236cfeebc086497275e2f7c5b4baf2d3597fdd7a13f85eeebd5e68c4275ed90d5ffbaf814431ddd7cae93048ebea8c39ac75f7cbedf1bafd25da72dd7f3159d2eebfe71f5a67601a66545bb0206ce411d819ba5a04ec119292a5760b1dab20bb06b5d915dd83ecd5336ec23e912f476142f46bd3b0b31c19ddd86244d6d2ec3570a9ff761cd8d80f3b0f795af71d884179708ec4624bd9576251818623b138b84fe1d8a43cac9eec5600e71b762ceadaf2bb17672c9add8c2ab9942ec6500f4b276344f0d803b1b0b4c085d8df5c49ccec7320ea55763b42b8d6bb1e76eb191d8fa471852ec805d02e27641c40157bb21a91f7a1d91364ce3cec8cb1b11d7647d127743b24a10cef5d92aaea62aec981ba0a1764d6888273b275de590dd9401e4dc2eca297b6c67652889d64bb29dee9ff9d953ade768ecac23137476572ffe83bb2c23699b5d965580bceecb4bb11ef765b5d609ebb2e2ac2b19d97517cb76ecbc5d498b765f0f96f0bb2ff462a9dd982e8b008ecc3078e5b7662459327bb317fc62fdd98ec6bd94ecc8b7f1cb7664fe65af3b32cc79569d998ae73b0eccd6cc32c7667393df6bb33da17bb1d9a09cce7aecd12490317668f56aac3b34a84ca09d9a68f477eecd3de255b766a3259f2bb3536d30add9aa83d672ecd5988e5b766aef998ebb358575d2dd9ac78f1e4ecd653165b766b2cd70a3b35940fb99d9ac6d8fbaecd60d4844766ae9dfd3bb35628b741d9aa612598ecd4c6eee5766a26a1533b34f0e3b71d9a653a924ecd28015147668e328f73b343f233b1d9a0459032eccf3905c376671fa43a3b334d64bedd99837d0c2eccaf24bf57664dc60a0bb321bd304dd98e2be0eaecc5acb2b4766219cbae3b30aaa8cd9d98223b69eecbf6944f0765ed872d1bb2efa30cc9d97421c74cecb8294d47765b19034e3b2d0ac59add964290774ecafee55ce7656dc4a153b2adcd1a3dd9523ce9feeca6ba27b8765223339d3b2870cf0fdd93e615f82ec9c8ecafa764ceecbb03b25c747a95d9289ad57cec916e85d87647403d303b22e0d4c05d910ee3542ec855bdc65 (j - 7386) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 180, crossSinc (4914 + j.val) = sincEntry (4914 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 180, crossSinc (7386 + j.val) = sincEntry (7386 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4914 ≤ j) (hi : j ≤ 5093) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4914, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 7386 ≤ j) (hi : j ≤ 7565) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 7386, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 435264374065697350103949022004777600964567618896 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (1177, 1294)) =
        435264374065697350103949022004777600964567618896 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1177, 1294) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
