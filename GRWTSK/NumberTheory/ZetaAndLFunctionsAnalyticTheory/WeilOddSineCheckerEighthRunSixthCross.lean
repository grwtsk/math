/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Eighth retained run against the sixth

These are the original global rows 5271 through 5331 and columns 2790 through 2913.
Reuse the certified sixth-run and eighth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2358, 2541] and the sum window is [8062, 8245].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2542 then
    (digit 0x795b3674e9bcaaad1efa1e53da4a990f292c69b59794348bb95bc9e8cc41f5e4db572070f260fb1ff0792a10f4f1bc91c8063ede473ebb190f22ca35586790f945e0c3c84618e829e40777fb18f1f5ca357a78f3d888a8bc765c304d9e39612ebe4f1bc7b60f378d6e35a253c67bae8aa9e31fd4bed6f180c31e8478b8bb0a47bc5880ddb0de2a4d6f5f6f142ae57ae78996621f93c48b15dde5e225345528f1024a96307878eb79e93c384fdf675e1a108dc96f0bfa60132785752391ebc275fff7bde11871c2c6f07acf5a497834a1d372bc15e581839e08b8d6e64f033d5fa4e7810e207f8bc03e44e4f1dffa7b6fb8efeac9ce1277ec1adf543bf160733e1df655c79ceef9fbb52e477c654a9f5bbde5e215f5decc525b50ef52bb92fd779f97fe4b3bcae1ac845de2f7ff720ef03dc21b97777edb6dabbb6ef8a4b5dd8f093c94eeb32f17b5774f5ef04abba28c51239dceb131f80ee60c70ec57725f50759bb8dbcb7459dc43c38fe8ee0cb71dc876fbb996c23b788591a31db99417176edb712d45a76d0b675123b62ebd2d19daebb492b2ed5fee366576a4f5b26ebb4cf489e81da3b45a3eced075db79276788196463b36a4e158dd9881e2df8ecad76369e764b649cfa3b20021dc29d8d2688898ec524cf886761da97570bb09119cb81d81a4fd0c8ebf5f7a3a875ef5afe9ebaf1d8d3839d75fffdeb4eb988c3ab675c08445043ada5d4de2dd6a3a53b90eb3a21179a75913080143ac2a4acb9dd5e56d172ceadacce63f75616b0f9abaaab4a4c41d525853d62ea7aa69f3c75313f790c3a9292fd3b9d4641c0b4eea19c5826d7500b964d2ba7a458e7c5d3a160645ee9b841117574cfe49b893a61d240a29d2dd81a732e956310a2c749ecd03313a493f0a239d218afa260e8f3ad60f6746d7e9c5dba3091ee615d1531a8906e890ce3b0f743c057f52ba17d0fc3a5d08cf2e748e82dabe8be740a6dd92139ff024c969cfc669969ce7ca5edf8173d8c3e8b939e62c00ee9ceffafb210e766ffb42473a713fbf439cd5441d09ce38f68a6ae703a714d073756a6c99b9b4813d631cd726f9a26e6a06dc30d7343d39d62399bb925e31ccac4c797ee63d6c8dba73125bf6ef39830230229cbe6bed242e5dabc4b0272e10fe4c4396a6292029cb21f853b2e57875d23d72affbd23ab951e080ed5ca5e2aa64ae516b1f5dd727f2c2774393982304f5c99b875f86e4b5897d4b724ead464839214dd00e1c8da3ff59ce455151ec3721e8b87363909498b005c81a85b338e3f56d793571eed33650b8f17b85655c75c89ab3ae396ab0e21 (j - 2358) : ℤ) - 1000000000000
  else
    (digit 0x7638f5d01e3b1c85902b5d8e464db20ec7240259076391fb3c83b1c8c0cab1d8e4250c76ec71e661cf7638d5e2983b1c58ac191d8e216474eec70a51f73763818523c3b1beb6ce89d8de389c2eec6e7c75357636e7154abb1b445c02dd8d88c8f44ec6b6cb3a27635425b453b1a6394c55d8d113186eec6776651b76332a7095bb194941015d8c7cda30aec629a4dbe76309fbe7ebb17f598f29d8bcbe0dc6ec5cd96b42762da2cb0d3b1668e335dd8afe6aa3aec5634f4ca762a3438fabb14a374bb9d8a14a3c78ec4eae5aa2762654c78cbb12a5b0b49d890ebfa74ec464745f2762205526bbb1070087edd87ecf8b52ec3d019865761d46d1753b0e02fb8a9d86af9069eec32df6bba76181a5882bb0b5f173f9d8556cf35aec27e3114f761281172c3b0884f6dcdd83e304704ec1c0f119a760c7c58853b057543551d825486466ec0f662b9476060d82cd3b0230b3281d80abb1a68ec01eb541775ff361721bafeb80a389d7ee8ea2acebf3a1b53275f7f7b11fbafb0c199e9d7d0c9a020ebe48cad6675f0540688baf72dbf765d7b1731d74ebd4afcee175e84ce6d73af31de6ac9d790928b64ebc40edea275dfe43ad43aeedd86c71d76e2fbf08ebb2add39a75d71c0423baea6da3a89d74a52efeaeba090d5b875cdf65cc83ae5cf4d559d72504b61aeb8dbc3ce975c47576a5bae1039fb09d6fe4e081aeb7a34901475ba9b9af7badc0bc238dd6d63838beeb65fe840175b06b29c8bad6e8e7c0dd6acccf4eeeb511efa3875a5e6995cbad19c4e271d682164152eb3b9affd4759b10759cbacc273e079d6561e77e4eb2577cc4c758feb5f75bac68b0a6d9d628f04576eb0ebac03175847a0c393ac0c91080dd5fa96a718eaf76963db7578bf44f33abae2b7315d5cb1ce76ceadf89661b756cbde5bdbab4d96ee01d59a8e9beeeac7209ad0756078dd0f3aaeaeb1059d568f7a21ceaae34f9807553f32b023aa863ffd55d536641c98ea94cc9be575472fe09cbaa1fae5e05d502e0702aea7aedbc6c753a321f0cba9b74f5b41d4ce7940beea609eb4b1752cfd16e8ba94d3c9789d4993b6e48ea45e5fbf3751f940762ba8e19028b1d4633411a2ea2aca25797511fa3d813a874649185d42c70794eea0f51def9750433134aba805d4bb49d3f4fe2636e9f383eef274f641eef7ba795fbef05d3bceac854e9d767330174e82a42193a724f5ceedd384443b5ee9bb029e3374d9ef88bf3a6b2de4f6dd34b18834ae99e5d374774cb95489fba63fd1b069d31175c8e8e9817e16fb74bd1f10343a5cbec761dd2d76a565ce9646c6642 (j - 8062) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 184, crossSinc (2358 + j.val) = sincEntry (2358 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 184, crossSinc (8062 + j.val) = sincEntry (8062 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2358 ≤ j) (hi : j ≤ 2541) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2358, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 8062 ≤ j) (hi : j ≤ 8245) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 8062, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 413153775236794880047444959654522923939714808006 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (2790, 2913)) =
        413153775236794880047444959654522923939714808006 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
