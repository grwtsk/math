/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Twelfth retained run against the eighth

These are the original global rows 15678 through 15741 and columns 5271 through 5331.
Reuse the certified eighth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [10347, 10470] and the sum window is [20950, 21073].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 10471 then
    (digit 0x74944c69aaba48bc9af7dd23a9508dce917a1338d7488fb47e7ba4312abf31d20d3b5446e900ef9579747da0443bba3d6426735d1dfbfc05ae8ea2e725174723e33793a37b275345d1b22da560e8d36377547466d7ecc2ba31ff04039d184906372e8bc945554745b7048d73a2c4b3f655d156f35fb4e8a5c6bf4a74500a215b3a2698943b1d129620172e88f0068ea7444a85023ba20e86f669d0fbe7af50e87847053474394dae7f3a1b3c3d701d0ce8fcc6ae861a0450e742dfd147eba15956a2a9d0a165b578e84b11d5d17422b958413a0ff56058dd07474be00e834a15fde7417854d3d3a0a5d8952dd047c82d7ae81e548537740c63c38aba04cf4caa5d01b6b3c7ce80830e013740157872f39ff4c0fd25cfef6911eae7f23c017673f6635f6ab9f9d535c39cfc3ccc028e7dc7b6fc973eb8a0e02b9f46c1ea49cf98a14254e7c6f4a57d73e0ce4e94b9ef1227701cf6df17986e7b1ad0fa373d632d5e2b9e9c8a99e5cf43c82a06e79caa0c9373cbba512539e490facd9cf1a2ff8aae787f0ea9073c167656139df6c6c6b9cef1336812e77386e67273b73caeb9b9da5c4b611cec8dcd614e75f712a5173ad3cbfca39d561dfbd9cea136790ce74bb4cc3c73a36a20fdb9d07e6c63dce7a4a5d56e73856cced7399c74fedb9cbb32eb91ce542262b8e7255c1682739056bebdb9c7015e545ce2ec839ece712c97b4573871ad37d39c26a2caedce0a456220e700a3b46a737e15e78db9bdeec4d75cde6a32696e6eeef60e573754a4708b9b9904b259cdc3ea9c3ee6ddb10438736cba3029b9b54fdcf05cda2249f70e6cced054d736467d2bc39b12e90445cd8159d1a6e6bca7ad58735c554f8d39ad2d739d5cd61929746e6ace526bf (j - 10347) : ℤ) - 1000000000000
  else
    (digit 0x751737a0c43a8b668d5f9d4597f80c4ea2bdfe57e75157d5417ba8a8402fa5d452402868ea282ac4af75139810873a898c0b46dd44a55d968ea242063cd7511884b37ba887ee22e5d441c27dbeea1fc1bd28750f4e83f93a875cc8ec1d4388829d4ea1b0fe03a750ceb45293a862605fddd42ea91c06ea160bf164750a5f238f3a84dae511dd42427bc16ea10b729a97507aabe3aba837bb6f5dd419069a96ea0b12d65f7504cebe5c3a8208d182dd40d487048ea052058e17501cbd719ba80828f879d400f01d76e9fee1263574fea2c564ba7ee950b29d3f400a936e9f856c6b274fb544fcd3a7d3d797b5d3e67d40b6e9f182d5a374f7e1464d3a7b7f7308dd3d869366ee9ea6700dd74f44a8218ba79afab181d3c9c80150e9e305085874f090e568ba77ce93e15d3ba9d3bf2e9db5ebdc074ecb55b403a75dca3fb9d3aaeca3a4e9d376040474e8b8d7353a73da563f5d39aba178ce9cb4ccedd74e49c5534ba71c829a91d38a0997a8e9c2e5225274e060d942ba6fa6a1385d378df43dce9ba41123e74dc076f3aba6d7643d19d3673f5ae0e9b162c1c474d7912a8f3a6b379c1a9d3552e3944e9a84c62ce74d2ff26023a68eb3859dd342b0584ee99f00358374ce5283633a6691aa525d32fca4ce2e9958087b074c98c6b43ba642b871fdd31c80c662e98bcfb44274c4ae0cb03a61b967125d308d88d88e981f022a574bfb89ce53a5f3be5879d2f4d6832ce977e4463374baad57003a5cb3a0c49d2e07f9f16e96dae9d9574b58d7bb33a5a2139cf1d2cbd8eec2e96351b22774b05a50f5ba57855444dd2b6e7941ae958d0175274ab1521b23a54e09632dd2a1b0c436e94e2c69ee74a5bf3d74ba5233a7ed5d28c39c60ce943694f98 (j - 20950) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 124, crossSinc (10347 + j.val) = sincEntry (10347 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 124, crossSinc (20950 + j.val) = sincEntry (20950 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 10347 ≤ j) (hi : j ≤ 10470) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 10347, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 20950 ≤ j) (hi : j ≤ 21073) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 20950, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 58044570838165900713607310846031790304834241506 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the eighth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithEighthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (5271, 5331)) =
        58044570838165900713607310846031790304834241506 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
