/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Seventh retained run against the second

These are the original global rows 4110 through 4199 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3631, 3915] and the sum window is [4395, 4679].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨4110 + 45 * b.val, by omega⟩ ⟨4110 + 45 * b.val + 44, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 4110 + 45 * b.val ≤ i.val ∧ i.val ≤ 4110 + 45 * b.val + 44) ↔
    4110 ≤ i.val ∧ i.val ≤ 4199
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 4110) / 45, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 2))) crossRowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [crossRowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 3916 then
    (digit 0xe3369bb450719600eef938c85f521f5c62e1c416ae30cb4931371813865ddb8be10bda0dc5dc567ddee2e429d02f716d1f6a91b8b41a9e14dc58d59c7ece2bd0641ec7159bb5ddfb8aa7f9ea8dc5413b4eece297546aba714711764eb8a142553c1c4f80f965ae2731e7671713526bebfb8986541af9c4b1ea706ee2506e37987124001517b88feacd3b5c46edef8c6e22f4d24c37113a228ef3887d549c95c42eff8f4ee20fc4560f7104117a54388026f1565c3f25dd348e1f1dc82a870f552588f3878e1e5565c3b90a9e8ee1d59dfe6f70e768e0f83872082e20dc3831600ece1bb10b7b170da58fdd8386b9bba621c3508f3bc4e1a23c34fb70ce26655438659e5e939c32184bdd2e18b27930670c2d49863b86011d477dc2f6041f22e175d982b670b866e1d9b85af7baa01c2ce1a1d4ce16258473b70aee0557338565193f71c2a9d297c2e150a9b44770a643cef7385220c7509c289388c78e140d32c64709e93f165384e669f031c26c5614ace132d99f5a7097d3262bb84b2448865c2533461e4e126c188bf7092039c74b8485ad417dc23ddbbb34e11c8eee9c708d27487738460b34691c22c537aaee11445602870893fe2dfb844363e535c21ea20b10e10de7f4ae70864ee8403842dca8925c214cce5b2e109794a8470845598933841ff0b875c20ed890a0e106fb8628708354f6cab8419de1029c20cc89d00e10670517270834dc871b841b984159c20e9fa5aae107d8daec7084409556b8425230eb1c2145f4e00e10b35d54570862da74cb8436804a85c21e084100e1108776df70891509f5b844fafd551c22b9a3096e117cd7985708cf68a9eb8470af9cb5c23d13d52ae121071a367091d1b82b384997b9af1c25272ed6ce12c3319107097a5e30fb84ca0dd6d9c26bb43e5ce1394fb964709e721d5cb85025e6435c288d39396e1485ac1db70a6353ad6b85426364d1c2a9cbbfcee159517cc270aeedd121b858a1109c1c2ce969da2e16c30b87570b89a37f7385d9599551c2f72d108ce180f4c7e770c338896f386302d5d75c32387062ee19799834870cec6a259b868e7ace85c3539b77c4e1b01a48ce70db4222a2386f42e6eb1c387606beae1ca71fd9670e8a86dc8b876132e1bdc3becaf886e1e69b0eaa70f6f6ab65387d570ed55c3f9cf450ae2048f7222710629c7be38850cf7dc9c438608cdae22448a86271163e746ab88d333ab51c47a7121fae245bfbd7c7127312904b895c80bfb5c4bff26ffce268ed4aa57138fe23ec389ec983c75c508d4ff1ce28dc977d3714ba16b14b8a8359e171c55508779ae2b44bfd6f715f16cce538b20a3b3e5c5a47ba556e2dc6c2627717359e123b8bc45205f5c5f71c7ba0e30620d0df71886609f0b8c6e3f7e9dc64cd81930e3316072b6719e3674ceb8d1e45220dc6a59acc76e35e21193071b4c61bb7b8dd43a5a71c7015017fce38c586c7571cc0fc64238e8ff5012dc75fe2b718e3bbfbb1a771e40e0ad038f51496871c7c13ca2c4e3ecffcd5d71fcbb4fce390180a6545c8254716aee41f59462b721611ccf9b90e40959edc88bea9672e452fc474b72300b8cbb391b51640b5c8f50ef318e487dca35a724aa26d863928affb711c9609b50a0e4bdedd72f7265d023473936593092dc9ce762be6e4f5230cc772818e38dcb94449c3dc1ca3e85608ae52d6f1e46729dd6119c39527e62255cab0ae2f20e566c4991172baa0eadeb960f3a57b9cb24d5437ae5a115c0fb72d7e7dd9bb96fa615ef1cb9adebb28e5dc54938572f5a3e00c397e922a655cc12ae2c08e61872cb317313cdc755398db449705cc8c26ab1ae65561e2eb73325e493e399d08ca2b5cd072ad35ee69313197e73514dfdf039ac8bf5199cd839cccdae6d177751f73709561b9b9bc3a050bdce015e53d2e7107fc70773902cd6e039cc0f2807dce8050c002e7501caf1773b00ca77439dc0780345cf00550c0ae7903e9f9173d02d072d39ec1f24c7dcf814bdcf0e7d0d5e0dd73f086154fb9fc5222fbdd0031589b8e811d29555 (j - 3631) : ℤ) - 1000000000000
  else
    (digit 0xe308107e2d718142efc6b8bf447bd71c5ef698bbce2f26e7aff71769f932938ba09b7c4dc5c64b7842e2de3bd405716cb49e75b8b52b83295c5a014b158e2cb7e361b716384dcd9b8b0ab3df65c57cd00926e2ba3af38e715b12ec0cb8ac8a31489c55c879a7ce2aa7702a07153613b90b8a8c98f0d9c53f44c5f2e29c36fc22714c720c0638a56a71abdc525102f4ce28f7f1a287146476e86b8a26ddbb35c50df1bafae2845336d07140e3440c389fd4b7919c4f9f08bcee27ab6cb25713c473ce4389d9fd74d9c4e91300e0e272acee15713874d82eb89bcff4489c4db5eb3a6e26c38538171356d6369b89a65af041c4d0d87630e2675b4b65713331fa07b899618ef11c4c98451a4e26417c11c7131c385123898c402411c4c56584dee2626f3ab4713122badcb8988d5dc09c4c47e8350e26262d8617131501ebd3898bddcb6dc4c6d0f408e263f3540f71324c00d7389955a0cb9c4cc5db0e6e2672100fc7134167defb89a54b1f31c4d524c618e26bebcb807136af7f51389bbafe619c4e12571b0e2725338dc713a16bab8b89d885a835c4f05e2380e27a566732713e4bb252b89fbc80fcdc502cc7d22e283f40d8a71434db4c2b8a25712b09c5186d5230e28f2a7bfa71491bdd39b8a55796ca5c5313ca8b6e29bf79be0714fb51396b8a8bd7ad39c54d35b9d2e2aa58f0407157180c9738ac8812cadc56c52f28ce2ba4b962c715f434a1238b0b699441c58e8df4dce2cbcc45577168351b40b8b5482f8edc5b3df98eae2ded750b67171eb9d1338ba3bdde1dc5dc3fee72e2f368a73a717c64ba9338bf90938cdc607a63e74e3097bd4ae71879e2d5238c54527335c636090cf6e3210c029f7193957de438cb585709dc6675e1b1ae33a13f96971a0480467b8d1c8c91c1c69b9a6942e3548e215971adb2e917b8d8950b979c6d2b23988e3707483e171bbd324ed38dfbb951ddc70c991246e38dc0ccf171caa5824ab8e73ac51b1c74941c0eae3ac6c4c5a71da269db338ef10e4241c7889e5ce4e3cc6ff75271ea52e68db8f73c2458dc7caa04acee3edc46a0e71fb269ff538ffbaa1ce1c80f383fbae41061e96c720c9de191b9088a62fb1c8565644bce4344064be721eb4987eb911a9592edc89fe9ba90e4595777a1723166883ab91b1561085c8ebe15d6ae47f9e6bf17244af4ba3b924cc42f6dc93a2b490ae4a70c3bd072588a55fcb92ecbb3bd5c98ab4fcd8e4cf9793bc726cf2f3fd39391154fc1c9dd6b6042e4f936d4c77281e44ceb39439ab5be9ca323ac732e523e016d272975963c1394e65530f9ca890ef6b6e54f892ae772ad4d185839596e98905cae1d329c8e57c279da272c3ba28a23964b3e1151cb3c72163ae5a9b0b9ab72da9b31e7b9703277469cb98d5f1c6e5d8198a4672f1eab210b97be796471cbf6e87744e60756dde97309a308f5b987d06a5b5cc5692ebfae6375d48f27321be79b83993ea1198dccb7be250ee668212861733a372c23b9a0319c96dcd1a528d1ce69996a4a37353072e15b9aca40f225cd7e3829e4e6cbb1b46f736c2874ecb9b93e60f85cde356a214e6fe661fae738594defeb9c5fd7e7f9ce49954324e731a7826f739f463513b9d2de49895ceb0db0762e765694feb73b9362bea39dfdd9a11dcf190e9bfce7999ed59273d35e65be39ecf83f055cf82166730e7ce3b3e1f73edb873d639fa2aff081cfebd88e86e8033194c074083dd815ba0772993edd0563afd26e83874c83c7422e806933a14cbc61c1d0c1236a40e86df7ae29743db067353a2233382c5d12c775f70e8a3ad0629745890574eba2fa59ce7dd1981c3f52e8d9877d2a7473812b41ba3d1f9d821d203f74c04e90f79b0b0748e7c3024ba4a9ddfbddd26fedadc2e94576322274a97aad69ba581d06c15d2dbe4798ae97b6f8a1c74c475e688ba6599b3ea1d347c0b7c8e9b1583bc774df671caa3a731087a45d3b3676b02e9e722c83074fa4790553a807e22405d41ebd9696ea1cc1b1a6751510831bba8ddf24ca5d489a84566ea52277f13 (j - 4395) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 285, crossSinc (3631 + j.val) = sincEntry (3631 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 285, crossSinc (4395 + j.val) = sincEntry (4395 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3631 ≤ j) (hi : j ≤ 3915) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3631, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 4395 ≤ j) (hi : j ≤ 4679) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 4395, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega)]
    exact secondRetainedRunPrice_eq hi

private def sliceTotal (b : Fin 2) : ℕ :=
  #[1626830483730218833935698781181383330978364877000,
    1090268349269760855988858055527132422537788005608][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 2717098832999979689924556836708515753516152882608 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (284, 479)) =
        2717098832999979689924556836708515753516152882608 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (284, 479) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
