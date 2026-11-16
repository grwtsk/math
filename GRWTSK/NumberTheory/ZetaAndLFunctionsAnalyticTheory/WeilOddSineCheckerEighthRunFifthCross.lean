/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Eighth retained run against the fifth

These are the original global rows 5271 through 5331 and columns 1610 through 1795.
Reuse the certified fifth-run and eighth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3476, 3721] and the sum window is [6882, 7127].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 3722 then
    (digit 0x1c6371fbf4ee3266c0c987198b0395b38cf1b3a675c68f229106e352cd663b71af108c9838da630ddbdc6ea1d2d38e380a80bfe71c62c363ab8e607e3211c747fa8096e3aff15b8c71ddfdd8d3b8f20705681c7a8a4b438e3e09e516271f67fe6aeb8fe5da7e71c80c0532a2e412a38b57720faca315b90b08e67cdc87204acf6e445f54b3972297e23a5b91805c65d9c8da8b205ae47a87798c7243ee51ad39255136c31c9457fdb88e4b04da850725ef6eb97b932e811a39c9b2c98496e4e73b15f3727a918663b940c71c6e5ca224e1ee0e51f42b0457296b78f23394eeb08ce1ca93f3112ae55857179072b3624c88b95d50756f5cb079d2bdce5926aa1bd72d08ae07db96bf3eecddcb7d30af78e5cd6f5d9472ee2a49c2b97ad1f0061cbf491532ae609571604730c396598b989e6e3aa9cc6da24b82e64613558d732ab0f175b9992f249f1cce846515ae6839569af7349898cbf39a8a6fef81cd645fa8cce6c1ce666d7368bbba8fb9b84ab0dcdcde1d0285ee700af29e973883fe383b9c8166b701ce6079403ee74028600173a80e578bb9d80653ba1cee03c01a2e7802a860573c81f4fc8b9e81683969cf60f9263ee7c0a5ee7873e86af06eb9f8430aa7dcfe29117dee8018ac4dc7408e94aaaba0887ef4a1d064e3f812e842c9118a7429925e913a18e12f8c1d0e7d1a7e6e88450bd95744a5e1d13ba294ac2281d16b39cfc6e8c61196bd746b4469f3ba39c097819d1eefbe75ae907fb535e748c3d1dc4ba4a3e9aa41d272f73d8ce949fd967374ad4007e73a5ac0b2421d2f70b0086e98c07f39a74ce44f090ba6b42c1b89d37b1645c4e9ce09f32274ef439ace3a7bc0aa129d3fef81242ea0ff31617751033c690ba8c364b0d1d4828f6292ea51b2da5b75310d32b43a9c9f841d5d505bb3316ea9338bebc7551c79f103aacf835769d5885a882eead474470d75725ace813abd3c41115d60a4c766ceb155500457592be88f7bacd678bb15d68b702ad2eb55ca849275b2ea9d85badd75fdec9d70ba4f2fceb95c47f7d75d2d6e46b3aed638531dd78aca4558ebd532b1f975f27b4121bafd2c14ce1d808bfc94eec1404f67f7611cfa4673b0ccba6f15d885655f6cec522b45197630cc0e44bb1c3e3db1dd9009b2976ec8f95b773764f689014bb2b7fe40f5d97a419278eccc348cde766d9d4e83bb3a8caef29d9f23956ceed07f82e4f768b628391bb4960be2d1da68638c12ed42d1325976a8b08088bb57f83d751dadca1a8f4ed7cb0611476c57faff53b664f655f5db4ed58d16edb586b80976e1c89795bb74627c589dbbee188b6eded456e0576fd83da463b822dd7979dc2ca86458ee23ddf6e77718aa39e3bb8faddc115dc980d6842ee59420762773334992bbb9cdeff64ddd00f463eeee8d6398ac774d1bfd92bba9bdc8c85dd6741b558eec034ec217766599113bbb646d1ed9ddcada5028eef1a88eda777ee6a3f93bc276c7e65de2ba3c4c0ef21b15d2a7796bcae99bbce4a6c025de8984472aef5042861477add5530f3bd9be94a8ddee462b5deef7d4f8ea677c42a5ee53be4d02e2e5df3c26a05eefa8cc554577d9b5ccb9bbef7c3ba49df90b84db4efd2ad14e577ee71c5d7bbf9bfd7a5ddfe200c2baeffae6682a780258a3c43c03983519de02fe9c842f0216d4c72781564f1c0bc0d029ff7de07a5df102f0463724cc7827916e463c15fc7dfe5e0c1489f6ef06939bcd87838d90c6cbc1e834f6a1e104960b3cf08a6b4b87 (j - 3476) : ℤ) - 1000000000000
  else
    (digit 0x1cb464858bee59da6c80c72cc1aed93b964b45f155cb1af38418e5882ec29172c17849fc395f6fd308dcaf1360182e57383c75072b73cda8db95a5f37ce9cac91ab522e55fab3bd172ad6b4bbc395583e0735caa2ac1dc8e54caa529b72a406304eb950df13175ca7df45230e53a8609d6729b1000b3b94c7208995ca5afcfe66e5294329fc72928b1a5939483dec445ca39cf6136e518e6449a728a79bf10394443db80dca1a7449c2e50973b31f7282de1473394084e589dc9fcf4152ce4faef95ad727bba2356393d020b255c9e156ac62e4ed5dd20b72750fd73a3939bc3e5f9c9c7a38200e4e0c21294726ee0fdcc3936b4624a5c9afe19054e4d51fc54072692f4667b933eb4ac05c99a17577ce4ca7a1ab27263fc41a4393161bc2b9c9864adba4e4c0d40562725f4960e6b92f186b509c97481a362e4b83038c8725b17f5fc392d0ffd1b5c964c0b62ee4b09128a272576932bd392b4906731c9570c9b00e4a9f9084072543e28b93929c40c0f5c94b695708e4a469c9e9725197c8e63928818252dc941da6c84e49fe51e4a724f76e35cb92781cd295c93a62d9c0e49c6c73f7724ddc271bb926c53fea5c93505182ae49a00f6fc724cc821cfb9264c1d3edc931c31b92e498a39080724c3b3fa9b92616970c1c9309e5188e49854e677724c35cb37392624ce62dc93197a0d2e499155b64724cb7ed48b92676d370dc934af6912e49ae50e2c724dc1acdb39270ca579dc939e58284e49dc3da00724f52ef0d3927e632d15c941393de0e4a1b1564a72516b771d39290358d9dc94aa96466e4a6acd6bb72540ae66db92a63e40a5c9563437f6e4acb56b5f725730bc91b92c078ff49c963d77362e4b3c9e0c4725adc5766392dee07519c973904ad8e4bbe8c037725f0cf32d393016e4129c9855b6c68e4c51050087263c1aab7b93281af74dc9993500b6e4cf3e93eb7268f9779339352de21b5c9af18abc2e4da714d5e726eb33241b9381ae42adc9c7018de0e4e6a5fc2b7274ed927bb93b480d6b1c9e0ea44c2e4f3d9deef727ba72f76b93eb4a56cdc9fcccecb2e50209f3b87282de8034b9425fe3b1dca1aa321d8e51132f8b6728a91dbe0b94648efdb9ca3a6601bae521516cf47292bf7a2b394a6ee1db5ca5c0e2cc8e532619128729b6573b5b94ed0c2289ca7f93c80ae5445f689072a481c281b9536d89f95caa4ee7efce55746b9dd72ae12426ab9584423801cacc15857ae56b13103172b814b1a3b95d536a2c5caf4ff99cee57fbfbc2a72c286b140b9629a2aeedcb1fa306dce59547d4fb72cd65c5c53968172482dcb4bf5a670e5aba6399772d8af57b9b96dc907b99cb79ece3a4e5c2d591e472e460b44ab973ae77ca5cba97dbd60e5dad0500672f0770dea3979c60aa45cbda9cc8fce5f390b1ae72fcef7cfeb9800e49469cc0d3e3500e60d10c17b7309c70091b98685b0191cc4155cbf0e6274a58697316fa7f0a398d2aaf499cc76d6f73ce642371f4d732486c6eb3993fbab2c5ccadb4c24ee65dd090567332688f98399af6fc9e9cce5e1dda4e67a0ff8a673409c7a1f39a21af16ddcd1f50a208e696ee79ef734f1f120d39a965ccc01cd59f313e4e6b4650c1b735decce4039b0d5c77fdcd95bae69ee6d26c7f04736d0211c5b9b86910cb1cdd299801ce6f0fd7c31737c5b2cba39c01dce649ce107ffc48e7101088a1738bf45d30b9c7f21d261ce4f5f30b6e72f9e069f739bc9d01cb9cfe411785ce8f27b05ae74f9e379a (j - 6882) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 246, crossSinc (3476 + j.val) = sincEntry (3476 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 246, crossSinc (6882 + j.val) = sincEntry (6882 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3476 ≤ j) (hi : j ≤ 3721) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3476, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 6882 ≤ j) (hi : j ≤ 7127) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 6882, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 3949798259722025034336587146372139919971175496056 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (1610, 1795)) =
        3949798259722025034336587146372139919971175496056 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1610, 1795) = crossColumns :=
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
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
