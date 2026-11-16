/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Eighth retained run against the second

These are the original global rows 5271 through 5331 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4792, 5047] and the sum window is [5556, 5811].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 5048 then
    (digit 0x7754878c933baacc10651dd5a748c02eeaf2d1bee7758845c9c3bacb34505ddd68f4463ceeb60fdd3d775bc71ce03bae3d4c141dd748971e4eebb7ccc07775e4eb126bbaf699d385dd7d2ffa74eebf71f52f77601a2b793bb037c7455dd82e4850ceec1edc291776128cc6fbbb0a7705eddd85a47190eec2eefb8c77617a0374bbb0b856185dd856ddba4eec274c57a77610d6efb3bb06a4d901dd823f9b66eec07ea407775fe2dca93bafbd43831dd7c194610eebd0c797a775dfa497abbaeb13c5a9dd72fb2e54eeb81e86e3775b53e1d23bad4654369dd66e664a0eeb1b56c317757f001833bab7cbeee1dd57dcb71ceea9d2282d7753cf33ccbba954c80dddd45e0b18ceea0761867774ef2334cbba6ced2cdddd30f59cfaee95a2f904774959e9e13ba3eb5a035dd191f7f30ee895ae4727743077085bba0aaf00b1dcfe631a02ee7ba0530e773bfc0f1bbb9d0e3eaf1dce0c5ea72ee6c761aa97734393c303b991607049dcc04e279aee5bdf6dfa772bc09cb03b94c32147ddc9d02c16cee49dfdbfa77229403903b90167cad5dc76eb5f42ee367b4f267718b5716fbb8b111f311dc4e105e48ee21b60ca7770e271427bb85b4255e1dc227acfa6ee0b94b36d7702eb4654bb8000c2109dbf4347694edf41c3b2b76f7048ed2bb79f83e339dbc347c62aeddb51f33b76ea75a02cbb739bf8771db8fbfdf10edc13b817376dd415804bb6ced65021db59a88d08eda5dee0e276cf6abe6dbb65ee0d1e9db210e4438ed8942607076c0f5053bbb5e9f8ee05dae5fe1e5eed6b6ca17476b1e387493b57039cc61daa885d7cced4c64962b76a239c7b1bb4f1bfd561da68b3cc42ed2c3180217691fb7104bb46ea8ab51da2696f396ed0adaee8076812c5467bb3e7132381d9e23ede46ece868bc53766fd068b83b35b1f3f15d99bbbb1ccecc4e30eaa765debc998bb2caee238dd9531e24d2eca05252b6764b82b67f3b236a212f1d908777b56ec7abf3bcd76389991b1bb19e5e63cdd8bbd98284ec5432c158762534df3e3b1024778d1d86d568c8eec2cb61cba76115943e7bb06282b825d81d016c46ec0452c71775fd0b840ebafbf36828dd7caed70aeebdb12771c75e8508289baf188a2a49d7772e6056ebb0ff1ea475d32d3f7dbae6ea5e99dd721d874a2eb8622e85a75bda6d72b3adc1b2d935d6cb0054f4eb5a88354c75a7c280b1bad11dae641d672bb11aaeb2e399a657591858cd0bac5f48c865d6191e1f18eb0141dde4757af5649e3abaa27f75dd5be3f504aead3abf4c175641788383aaf2a4a07dd56234d1cceaa5830003754cf18d6ebaa38eb9c01d50515243eea76d24a117535891e6a3a97d2a6221d4a6f716deea47a543f1751de3f849ba8bf8f0001d447f1c200ea1807827b750607e9bcba800480c7dd3e81c8162e9e804bb8d74edfad1983a73f849cc1d3878eee7ee9b7a8c32874d5c29d67ba67d7438c1d32660dac2e986ff888b74bd6547f83a5ba46cf9dd2c4aa49b4e95615134974a4e8d7e2ba4f62cabcdd262836b12e924f5804f748c535e0d3a431566749d2000494dae8f3acfeeb7473aaf42fba36bf4df91d19d463d46e8c247cdce745af5bb50ba2a6392995d13a60f4cce890d237fc744239da42ba1e0548591d0d76d6004e85f5891ce74297d7c1cba11a7852e5d07484318ae82de735d67410c6ceb43a054d603cdd011be23e2e7fc8a81dc73f81c0113b9f8f9f111dcfaf33f354e7cb4ed3bc73df8341f0b9ecb04ede9cf4cfe57bce79a40865e73c702be2239e0738fb39ceeb35fe64e7696bee9a73aea09f13b9d446c7badce89f383d8e738dd5824 (j - 4792) : ℤ) - 1000000000000
  else
    (digit 0x76f2f2db4dbb79200bd81dbc60c90acede178059b76efeab5ccbb77879fc39dbb8a68a14edda73c2ef76ec3fff373b759dff629dba8b78d36edd22b604576e7f368c03b736388659db9642b03eedc8a07d0776e305cc443b70d8accc1db814babb6edbdd509b676dd782c1f3b6dfdf2d0ddb69d6d9c4edb1cb478a76d74bb2fc3b6ad3f4ce9db4fe9355ceda485c80176d081b3973b675b61209db3388592ced96076c5476c91ba879bb6394f9fe9db14ba7e7aed865364de76c11b33a7bb5f8195531daf3867bc6ed756d306b76b8821e45bb5b221c8d5dacff3c354ed63589b7476af525836bb56778c6dddaaa0a6186ed5019bf4b76a58df7ab3b5182f4cd9da81d2fb0aed3bb5012b769b3738ac3b4c457861dda5756caf4ed262f11417690507c983b46c04c7a1da2a9fa09eed0f8ce9957684dc49993b40f4b8b91d9fbb7dd66ecf7d3cceb7678dd4a0fbb3ae416ca9d9caaa7258ecdf09458a766c564bf73b348fd2125d99782dd9cecc53323f5765f4a403e3b2df967585d9624d27ccecaa577d937651bc3a16bb272264701d92b15e12cec8e7cab3c7643af6e403b200c67dbdd8f1ea1eaeec71a947c57635273243bb18b9206a1d8b6d776e2ec53e42e6b762626fbadbb112a4cd0dd879ebfec6ec353479367616b25f39bb0961bb439d83b364666ec15a17f4b7606cd0ffc3b016149059d7fac55570ebf532d32e75f67ade7e3af92ae1f7dd7b8a8a79aebd3f040f075e5bfb7d53af0c08024dd774f028ecebb1e1cc5675d49fa4b43ae8242b459d72fac31f8eb8f0faeea75c31ec871badf57f8465d6e8ed83e4eb6b82560375b1416009bad65e08c5dd6a0c54468eb474260be759f0bc11abacd388a925d65744f9aeeb22589de6758c8258d5bac3e9b721dd60c7e8608eafcce09d77579a9aaefbaba73d3091d5c08423acead6abcc4e7566865086bab0d92d6e5d57368603eeaaffb363275531cf7063aa71c1f7a1d5253e184eea88c5bf4e753f725f023a9d3f0bc49d4d61872c6ea61150404752b8b5b103a93445dc11d4860adc38ea38f2c2f275176cce97ba892e89261d435290220ea1068da9675031baca23a7f0009541d3e386ce14e9e78146dc74ee9cf6a3ba74bb60ba5d3913860e6e9be461eb074d9f5bb413a6a6318381d33e520daae994c1918474c52b15113a5ff9be7e1d2eae854c2e96afde4cc74b042295bba5581e76d5d2970fdec8e941057176749b4026d53a4afe2b735d242dd7778e916e2a15f74862a44553a407126e7dd1ee660892e8ec9fecbf747105bf90ba35dd7965dd199be94a8e8c247d792745bd7dbc8ba2b45c5261d144fc31ece897e4eefc7446a5e080ba20acae585d0f03404f2e86d81c6ab743175182d3a1614da7a1d09b7b3b78e84328f639741c4acee23a0b80efafdd046e70716e818e5168574072c51043a00f3941a9cff28c97fce7eec0bf1073f21ee9f339f66f6d301cf9e8117ace7c4c6835a73dd27e2b9b9ebf71f101cf4ad9a3ace79b00f03e73c84c80bbb9e18d4bdd5cef7ab483ae7717a894973b392046239d73493129cea50afb12e7483dc61e739efda7cbb9ccef90dbdce530d9620e71f550fd2738a949d7c39c2c0dd6d5ce01c7d246e6f6cabe4b73765c0f0eb9b8ab0c5d5cdb14e422ce6cea915ad7362591be739aeb0abfd5cd61b54d04e6a6fa43be734e90d7ea39a4d444b55cd13112970e67fc85d53733b084a31399b1858605ccc575d85ce6591d5bc97327c46bc7b9917f61a85cc78f71ff4e633031a777314ca2668b9880bd3675cc2da886a0e60d83543573021e533cb97ec018079cbe39d4e04e5e8a7a0de (j - 5556) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 256, crossSinc (4792 + j.val) = sincEntry (4792 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 256, crossSinc (5556 + j.val) = sincEntry (5556 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4792 ≤ j) (hi : j ≤ 5047) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4792, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 5556 ≤ j) (hi : j ≤ 5811) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 5556, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 847437111135443038620622735830742666657344933436 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (284, 479)) =
        847437111135443038620622735830742666657344933436 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
