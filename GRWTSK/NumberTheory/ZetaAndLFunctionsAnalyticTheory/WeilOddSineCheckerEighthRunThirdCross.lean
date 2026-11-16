/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Eighth retained run against the third

These are the original global rows 5271 through 5331 and columns 666 through 853.
Reuse the certified third-run and eighth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4418, 4665] and the sum window is [5938, 6185].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4666 then
    (digit 0x7161567becb8af9a0124dc57475e71ce2b625d819715914629138ab90f34f9c554ee0540e2a6c277217151931e1b38a7e898be5c5386df844e298e4180c714ad4e357b8a4a205e99c51efe3450e28c8edd0d7144dbb766b8a1be375f5c508a66da0e281c68818713fa96f23389f3e1179dc4f56d964ae2788e79c8713b3fae9b389d22601c1c4e559dc2ae270e9b05d71379fe891389b6bd674dc4d870a702e26adac6d37134cb5e08389a1b0ec61c4ceb696cae26663f40f7132c31de23899308a349c4c82f8238e263870a2471318804823898acb09bdc4c4de7568e2624575b971311abb8138988fd06a1c4c4c5b0c2e262a03d7a71317bb96db898da1e811c4c7e6a81ee2649801ae7132ab419738998bb61cdc4ce4201f8e2682cfbdf7134a963e6389aa498c31c4d7d79700e26d5efea2713775fcc3389c24ae361c4e4a671b8e2742d7571713b10b506b89e0bc4701c4f4acce64e27c9764a5713f7901f9b8a0598fa45c507e81b14e2869b69857144ae256138a30daa461c51e54f7f4e29237ba73714aaf2d94b8a6279516dc537ef37c0e29f6a272d71517af5a738a9a6b73a5c554b1e080e2ae30192e7159102595b8ad8a5e519c574972c58e2be86942471616d328838b1d1be9b9c597988aaee2d06a3681716a905f1db8b67bf31d5c5bdaea16ce2e3d73a26717477bbc3b8bb87fdce5c5e6d14e74e2f8c97526717f212719b8c0f4c7ce9c612f7a95ce30f3c5aa4718a8a4e66b8c6c1219edc64218053ee3272afbc87196b0ae13b8ccebc3635c67427f2d2e3409008cf71a391923838d3734d285c6a91c42b2e35b65d22f71b12a172f38da5647311c6e0e907c2e377a649da71bf772a3bb8e1932248dc71b8199e2e3954b049571ce758a3638e928381d5c758d898b4e3b44d3b6671de21c84838f113cb9c9c798dfeea4e3d4a5cd1b71ee7848b1b8f9540959dc7db88d41ce3f64d3fea71ff75439c3901e707f75c820c3d2d8e4193bc323721114c5f6390acac8979c86880c97ce43d6930fd722352b25db913fd37521c8b2aeef42e462cd107572362ac210b91d7c2bad5c8ff3cd7e2e4895e974772499885edb9274569215c94e1877a0e4b114abf9725d97677ab931569f9b1c99f2f2778e4d9e5e7fa727222a9f8393bad6c085c9f26da98ee503c899d67287356b7d39464758e65ca47c02da4e52eb2c782729ccaa61f395121ded6dca9f1255cee55a9a30b072b2dd3120b95c3a65391caf84f3b44e58774514472c967c22a39678e42c75cb53617356e5b53663cf72e064ee8d39731abe38dcbb033148ce5e3d5642172f7cf2c8e397edd0ee89cc0eadbbd2e6134611eb730fa0d4b6b98ad25d7f5cc6eba91e4e6437cf3707327d42331b996f7c4a1dccd04250c2e6746e5847734063392db9a34a51a39cd332d4946e6a60e5c2b7359481e44b9afc7053c9cd976368dee6d850e9d973727cc1f0b9bc6ad4429cdfccc3f5ce70b29bdfd738bfafcff39c932a8649ce634f04dee73e8c6a2773a5bc9312b9d61b60ec5cecad29fd6e7726c57d473bfbb3423b9e321d37f9cf333dab24e7a6bccb7c73d9f07e0ab9f042cce61cf9c767c3ee7db70e7ac73f455fe1039fd7b11d0dd006632980e8107bb02b740ee5327dba0ac75fa4dd070e99078e845d00d267429978c383a18246d481d0dbef5c52e87b60ce6a7444667058ba258eebee1d1475a0c52e8b120ae9d745f4b39cfba330387ea5d1b30efa54e8e7025683747a3f3b043a407ee9809d21ef36160e91cf86049 (j - 4418) : ℤ) - 1000000000000
  else
    (digit 0x722c468df53916fb37941c8bebd97aae462e2d83572333c7b71b91a8846c1dc8dbb66f06e471a73eee723ac291cab91e5d35e05c8faec98dce4818973d37242d71f6f392279279d1c91c59066ce49285dd7b724b784ea9b926db2ca21c93ff4193ae4a4989ad07254a4260bb92b8243c8dc965b5a4c0e4b7bd83f3725e5888df39306d5a575c98d94f04ee4cbf02b2f72689337a2b9359b4c3cdc9b788b906e4e12bddf8727351d08a393b0ae4561c9e38733fce4f76ba604727e91d010b940badcb39ca11861082e50eaa4a71728a5091893946a9dee6dca417a7a82e526e250fb72968b4fbfb94cd684519ca73591d12e5400dff4572a33f259cb9533f56791caa7162514e55a275c3472b0690ed5b959e2cf5fdcadca54406e57528315072be05e8a23960bf59e05cb13f9b2e4e5910a0c4672cc12727a3967d3520e5cb4d063536e5adc6406972da8b4edbb96f1d05995cb87bd1c36e5cb55e84c72e96d041939769ab4355cbc4104a0ee5e9b1e76572f8b3fd2c397e4a90055cc01f1353ee608d2ebc573085c8a9239862abe0a1cc4150ec14e628b16fd4731862e32fb98e3956945cc8220184ce64945bc267328c3253739967465ba9ccc44f02b6e66a87e953733979571c399ed9ebd11cd07cd970ce68c6fe1e0734a81688639a767dde5dcd4c8b67cee6aef56437735bd7334d39b01c263f1cd9277b240e6d21004a3736d767c7d39b8f4a4dd9cdd9816282e6f5b72f61737f5af55b39c1ef2fffdce219717ace719e22ab07391803c72b9cb0994a9dce6aa72810e73e8818f973a3e1dea739d441972d9ceb49fa58ce7639ffaf373b67b584939dd94f3b7dceff6e61eae78920b1d673c948163439e7015edcdcf4b00f352e7af01019e73dc4376e8b9f08486295cf9744b8cae7d537934773ef68cbb439fa1c10b3dcfe426ded8e7fbbaf71d7402b359d4ba03c59fb09d031946414e82281a70c74161e5ba2ba0d7ecf075d07f7a1dd8e8498208fa7429a501c03a174535e91d0cdc4bd04e870b27126743d427446ba2116676a1d11c60d2bce8980924887450f1d3fa3a2aeff319dd16b3ad536e8bf7c5b407464ae3b7fba34cf659e5d1ba3f248ee8e70242fb747872c0903a3eb2494f9d2095a0faee90e910167748c3a75343a489626d41d25877d928e9361eb6a574a00068faba527885bd1d2a784bc22e95da17fbe74b3bfaa36ba5c56ed245d2f66cf142e9850f791774c77347373a662ee44a9d3451cb39ee9ac5ec0ea74db164f86ba6ffdf3341d3938045a6e9d38579c074eea3d522ba79c1a3479d3e183f61ae9fa79cce3750216edbb3a83777feb9d42f1424f4ea2131ecda75156ab3ec3a8d1d1723dd47c1d4850ea47a417db75289a4877ba96affa2f5d4c88bf15cea6dc69a3f753ba0d37f3aa02dbe229d5144cd132ea938fd0f4754e7985bc3aa993fc861d55f4cbdbaeab8f62be775611f99b63ab2e053eedd5a978b678eaddf0306e75738e54f53abc1068999d5f2bde95ceb02747bae7585c109363ac521e5021d63b09b788eb2679c4fc7597b31596bace127a7bdd68249b9fceb49f6e03275a95fe7c43ad6dfe1c65d6c86bc648eb6ce2c00775bac2fd233adf87dba1dd70d5df326eb8f34785975cbd7e3f63ae80831619d7510e9d0cebb0e3407275dc9a3c7c3af05eb57b9d7936c6aa2ebd1e6754975ed05ba12baf8894417dd7d466513cebf2359bb175fd16244a3b0085c39b9d813eb9928ec11c86289760cc757fdbb085225325d851ebe1feec3096a4d9 (j - 5938) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 248, crossSinc (4418 + j.val) = sincEntry (4418 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 248, crossSinc (5938 + j.val) = sincEntry (5938 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4418 ≤ j) (hi : j ≤ 4665) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4418, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 5938 ≤ j) (hi : j ≤ 6185) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 5938, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1914862203285450755534584124378882762395951458984 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (666, 853)) =
        1914862203285450755534584124378882762395951458984 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (666, 853) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
