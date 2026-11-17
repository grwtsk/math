/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Tenth retained run against the seventh

These are the original global rows 8652 through 8758 and columns 4110 through 4199.
Reuse the certified seventh-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4453, 4648] and the sum window is [12763, 12958].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4649 then
    (digit 0x71437c6ebeb8a114cdb41c5038d1030e27f52de46713e7c22f3b89eadb2c95c4f11cf390e2767f5d36713a44c038389cab3b855c4e1d360bae26f3fd1227136d7ace9b89b0e14e05c4d5b58da6e26996bc107134361d8c3899d6d2d95c4ccc7e81ee265863bc47132611469389905f0471c4c70e1448e2631009047131596137b8989bcead1c4c48aeb72e26235770271311fa0d4389898b6185c4c5407af4e262f772db7131b43d023898fcd503dc4c930035ce26556832e7133176c39b899c8403f1c4d059f7bee26952c7cc7135493186389afaf2e01c4dabdfd44e26eebf9867138495c6c389c94ce371c4e85aeae2e276216a0d713c1788e0389e9599cc9c4f92ec94ae27ef203f37140b31f48b8a0fd03629c50d36d30ae2895c4ac271461b548c38a3ca9efe9c5246f74e6e2955e5b29714c4f2a2db8a6fde6f81c53ed44e5ae2a2f5eb4e71534d6e74b8aa963c101c55c60325ce2b2204b2b715b14bca338ae92e58b1c57d0d2848e2c2da65107163a37d3738b2f31155dc5a0d46d02e2d520be3b716cf7e63ab8b7b5d42d9c5c7ae744ce2e8ef778771770ffb9cb8bcda29ce9c5f192ea4ce2fe424e337181e98f9d38c25ef52b9c61e78b548e315149ccd718d82433db8c84300a7dc64e55f790e32d615c277199d786c6b8ce84fe5a5c68120119ee34723247071a6e69a50b8d52388565c6b6cba45ee362542e5e71b4ac8e6238dc1d20f85c6ef4c93b4e37eee547771c3264491b8e370333c5c72a96092ae39ceb146c71d250703ab8eb1b13169c7689a76cce3bc43909071e227973938f31bfdd49c7a94b9a36e3dcf0916371f2a812b3b8fb711a839c7ec9a7fd4e3feea87387203ce0feeb904187a5b1c832778646e422298bec721595912f390d10192f9c87ad261fae446a564bb7227fa6ea4391655dde85c8c59a20eae46c558421723af8575ab91fe79afc5c912bd2e8ee493310bdb724e8ad242b929c30ef41c9622957f2e4bb2ecef57262ad3f363933e5e4ef1c9b3cbcff4e4e44553f072775ad810b93e4db531dca079133ace50e6ad6fa728c8eb1ccb948f805b49ca5d658f04e539954c3e72a243bdadb953e24ab9dcab5346160e565ba624172b874ca72395f09e7689cb0ee8a288e592cf845472cf1c858eb96a6c2e6adcb6a6cc79ee5c0c9dd1a72e6357c71b9760662919cbc7aac842e5ef9e591c72fdba1dd13981d5b77a5cc268c23d6e61f41a96d7315a4bafeb98dd7523c9cc86f9e6e0e64fa84663732def8943b99a084a185cce8dcb08ee680c6725b734694a34739a665a928dcd4c1cb856e6b2903c89735f8e0a7939b2ec6d1bdcdb0a1d3b2e6e4f983e17378d5a88539bf9987eb9ce16537bfae717f5f9fe73926550c939cc69e09bdce7d18d44ee74b792625 (j - 4453) : ℤ) - 1000000000000
  else
    (digit 0x7528bd6c39ba937f51f89d494f35d0aea46f01a2b7521b04c5fba8ff2ce10dd478600d9eea388f1296751a7434efba8c4f06c35d45b14692cea29d2c50975130aed85ba8894e1561d43d17a584ea1abed231750b7649513a84c548ca5d41e7125e0ea0b56f1327503b826a23a80e12da31d3ff28790ee9fb9eeec474fbd26e73ba7ce985a9dd3df4557a0e9eb9aac3f74f3c713f33a78df4bb1dd3becfa1f6e9db4e1ea874eb981404ba74c37f5add39dcf5e56e9cabd4db774e34774c7ba709724d0dd37c4cb6eae9b9ec52d674dad74512ba6c5b448d1d35a4ff7c6e9a8df582174d2499bf5ba6810eb139d337e18ccce9979a975b74c9a098323a63b928b15d31509ffa0e9862258e474c0de5fb6ba5f5511385d2f1d1f58ae9747af2aa74b8051f15ba5ae5bbbb9d2ce422d4ee962a8c71274af1708fbba566c424a1d2aa637d02e950b043e774a61655a4ba51e9c1a81d2863ecfdae93e95e13a749d05424cba4d5f59091d261dd23fae92c5e204d7493e610a33a48ce29c79d23d47882ae91a0d8a6e748abb063aba4437571e5d2188719a2e907a8afd97481866bf83a3f9c05dedd1f3a501c6e8f534269574784a8d823a3afd5c289d1ceaa73d0e8e2b48950746f09b8acba365c81201d1a9a0aa94e8d02e76377465c63ce7ba31ba9ca59d18490e628e8bda68dd1745c826aaaba2d18d70a1d15f8469a2e8ab2171d874534092e1ba287858c61d13a8478b6e898a3c40d744a030657ba23da4a301d1159a5572e8863225157440cc15243a1f3fd3311d0f0cf3df0e873d1334d74379e0e153a1aaa1afc5d0cc2c69f8e8618589a4742e7b3e1dba161a47c35d0a7bb08c0e84f53be73742565efc03a11917e6e9d083843e96e83d406256741c606a7cba0d10e251dd05f912296e82b4fff0974136cf23dba089994e49d03beabc6ce819871644740a8dc6c83a042cb5795d0189a0200e807ea20977401c5232939ffcb60f41cff5a7d544e7f67d8c4e73f9153d27b9fb76b1849cfd31d01eee7e545bc5273f08044b539f72fbe5e1cfb1023b4ae7d447071073e808636339f2f79b71dcf8f601a08e7c385b55e73dfafbbd439eecf59291cf6e3f1a0ae7b306016c73d7786935b9eab80420dcf4da79848e7a2cc15ad73cf647eb539e6b2a4e5dcf2da1d0b8e792dc0bd073c77606fcb9e2c03fb19cf0e35dc2ce78339ebb473bfaf03ac39dee1d4295ceef6bae54e773e9aa6373b8116cdb39db185d1d5ced14b13b6e764ef291273b09f309539d764d0481ceb3dbafb4e7564e342773a95a326039d3c81e125ce9724fa9ae7480a824073a2444abfb9d04331545ce7b2e3fc2e73a27b346739b5f46beb9ccd6ef1a9ce5ffe9bb2e72ca94f7e7394ace778b9c984366c9ce459cfa54e71f92c6a3 (j - 12763) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 196, crossSinc (4453 + j.val) = sincEntry (4453 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 196, crossSinc (12763 + j.val) = sincEntry (12763 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4453 ≤ j) (hi : j ≤ 4648) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4453, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 12763 ≤ j) (hi : j ≤ 12958) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 12763, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 3168812048510042462827031661809456906421434116440 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (4110, 4199)) =
        3168812048510042462827031661809456906421434116440 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (4110, 4199) = crossColumns :=
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
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
