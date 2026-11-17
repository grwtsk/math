/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Tenth retained run against the sixth

These are the original global rows 8652 through 8758 and columns 2790 through 2913.
Reuse the certified sixth-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [5739, 5968] and the sum window is [11443, 11672].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 5969 then
    (digit 0x1d67093d3deeb4124dcfe75a4fb70193ad4aff3e21d6b6ff0e32eb6435e32475b6716003badd617e919d6fc3edd0eeb86aef99375c79a3c2cbae5ebf1fb1d740418b0ceba8874e8675d871a0393aee4d1e3e1d782f5abdcebc9b6355175e8f33aa4baf682dd095d7c44a20beebea33289e75f91acdd8bafe8b12251d8042e1cdcec09f5cc947608e43144bb0663abfedd842912992ec28f5f0ff76184b526cbb0e0aa4311d87f632ab4ec472b936976274c35f7bb157e00071d8ba9462a6ec648ee1297635e2f8b2bb1cbbd1019d8f4157674ec8118396776440bd0943b23c235539d92bd771bcec9cc02f157651c30db4bb2a8f58611d961cbca98ecb77f8adb765f051b443b312173385d995e4655cecd14f4cf4766bce8077bb3776cd061d9c8139848ecea28af0476781be171bb3d8dbb8b5d9f84c2f10ed020525d97683ea0021bb4364a38a1da26816e50ed18de6323768f35bd1d3b48f9f9329da52a716eced2eae571e7699fc18723b4e4c408b5da7cb16940ed436f322476a43a3272bb535a0dd4ddaa495283ced571b663d76aded4c75bb582205e99daca479c64ed69ada89776b712c992bb5ca2de9bddaedbe96a2ed7b20f2ec76bfa82f53bb60db5f0c9db0ef0730aed8b7084dd76c7ab2660bb64ca60005db2dd41b68ed9a97e53b76cf197b20bb686ecc2e1db4a6109beeda892e33c76d5f11e513b6bc7a08b9db648f4a8cedb55d979e76dc302599bb6ed3ec939db7c577f0cedc0f465bc76e1d4cc0ebb7192d2895db91b2df32edcb53fc8f76e6dd72b43b740387b49dba49b3b96edd479579b76eb48a0eebb7625549d5dbb50aff30eddc61bfcb76ef1504efbb77f7953d5dbc2fd30faede30acc3776f2417418bb7979b9329dbce6d755eede87262de76f4cceb52bb7aab43e85dbd7580f82edec96b94376f6b68f5b3b7b8bccbe1dbddb9e276edef7654fe76f7fdad0a3b7c1aff27ddbe1907226edf1100c3576f8a1b98d3b7c589acaddbe2d9e440edf163060376f8a252983b7c447394ddbe19500d8edf06ebacb76f7ff3e89bb7bde71cd9dbddc132f4edee32f47676f6b86c8abb7b269223ddbd75e88e4edeaafce9c76f4cdf49f3b7a1ce5b65dbce6db482ede5e5b69b76f24017b03b78c192159dbc2f00b36eddfd56b9976ef0f3f873b7714d1429dbb4e785deedd87ffe6e76eb3bfec53b7516f1a6ddba456c08aedcfe6d18076e6c710cb3b72c85607ddb9140fa0eedc60b988876e1b159983b70297576ddb7baa136cedbaf0583e76dbfbe5a1bb6d3adb389db63968f14edae9765f876d5a7e99d3b69fd26ab9db490b9002eda103672e76ceb6c2413b66710b259db2c0ed8a8ed923750f376c729f3fd3b62974fcf5db0ca6c9bced8236674f76bf032aa63b5e70cf78ddaeada60d6ed71043c8b76b644391abb59fe786a9dac6b136e8ed5ea4b06d76acef18dbbb55414c30ddaa0337e96ed4b1bef5676a305e99b3b503a5f615da776a0256ed366e715876988af0c3bb4aead95e9da4c5e2282ed20a0f930768d8098f43b4553f413dda1f19d32aed09b893327681e971723b3f76fbacdd9efa799d6ecf1ba941f7675c82d953b39554e4b1d9be128b14ecd8ac97ee76691fa424bb32f05bb39d98a6647eaecbe94807c (j - 5739) : ℤ) - 1000000000000
  else
    (digit 0x1d13f1b315ee8a4a3ec9a7454dd9cd8ba2bb4dae89d167d8dc2ee8b9062cb7745f104991ba30cee33e9d190ae0baee8cd72e95374694791823a35eae79f9d1b9908ea4e8e1e50911747380e7a4ba3b07a1621d1e2762ebae8f6577053747db9bdfbba4023c9761d20b54b304e90ac502857487ef8638ba453e18b5dd23421e296e91f28a36374921fb25bba4a5548389d25cd38708e9337d383d749c47b55a3a4f6811a49d2855f6f0ce947bda94274a66503c03a54752f7f1d2adbb70f4e95be4e2c474b0751454ba597b5d7fdd2d5dd6d48e96fedd67d74ba7560baba5e7958e09d2fdbb5140e983d37cd474c4636615ba636de0af9d3254b1958e99790d62074ce3ca5a83a6857b61e5d34c82d3cee9ab20ebec74d7fea575ba6d359cd3dd37358a31ee9be7ed23174e1a6f0e23a72065b399d399c2c086e9d1a5a89374eb33194e3a76c8baccdd3bfb77e72e9e4909ba274f4a0b6b63a7b7b886a5d3e52d4af0e9f73ae60774fded684c3a801d949e5d40a1ab216ea099fd1c2750716d50fba84adb3ee5d42e76606cea1bbab94f75101aac68ba892abf269d452372538ea2d8708dd7518f6a6ba3a8d9393a41d47553f4e2ea3f003f6d7521a885f7ba91e7139d5d497c3eb2cea5021effc752a2e16343a9624266bdd4b97e4d80ea60e7c29e7532852e32ba9a49b8d1dd4da7a8d1aea714d7599753aabaff2ba9e56bd40dd4fab0493aea814ede7775429f89373aa24a2c1ddd51a175144ea90e7eb19754a5eb40f3aa62304045d538a7a6d2eaa014a2ba7551e73759baa9e04a079d556597fbeeaaed126f975593727443aad8109f21d57325481aeabd19b4cc75604ca5c9bab10456849d58f03a424eacaeaa57d756725e32c3ab46949b25d5a9ed7224ead8406f95756dc11e6a3ab7af04db1d5c3dbcc3aeae517a7c675741ca5b23abad4b1055d5dcc80a2eeaf16d01c7757a36d6d33abdd97f145d5f4abc312eafd3d513075800e1fa4bac0bca7fd9d60b80cefeeb08858a4a7585a0fe713ac37d6cfc5d621414890eb1342c2d6758aee0257bac61b17c25d635e78e80eb1d7232ce758ff3cbab3ac894faa6dd6496e450ceb271135217594b10c4ebacaea70d3dd65bd0575eeb301d485b759924880a3acd1ade709d66d08f8e2eb38940f52759d4d14ddbacf25b0ca5d67d13a67aeb407351bf75a1299b4ebad10a5e7a1d68bec27b8eb47b8fcd875a4b916b13ad2c86789dd6998e8ff4eb4e6323d675a7fa956dbad45f55949d6a5f73f52eb5470007875aaed393e3ad5cebbe69d6b122e3beeb59ddf37f75ad90376bbad716379a9d6bb0e79c8eb5eab851975afe2d902bad8356fb31d6c3b74d74eb62d7654575b1e47b053ad92c15335d6cb1afafceb66606c3475b3948e973ad9f9e3351d6d1376f6eeb69459a9375b4f29924bada9e9ef9dd6d60ae942eb6b8619d675b5fe3486badb1a17fddd6d993f8daeb6d213c7475b6b70f1c3adb6c2803dd6dbd180f0eb6e167e1b75b71cebe6badb94b321dd6dcc2b6e0eb6e6583d675b72fa2993adb93a7c95d6dc6722f8eb6e0e1c2b75b6ef1fa93adb68fece1d6dabea09eeb6d103f3375b65b64553adb14bb685d6d7c95e64eb6b6c0e9e75b57486a8bada96eb381d6d387de12eb6921d5b5 (j - 11443) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 230, crossSinc (5739 + j.val) = sincEntry (5739 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 230, crossSinc (11443 + j.val) = sincEntry (11443 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 5739 ≤ j) (hi : j ≤ 5968) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 5739, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 11443 ≤ j) (hi : j ≤ 11672) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 11443, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 3438870280285022206309325645136416962548068169458 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (2790, 2913)) =
        3438870280285022206309325645136416962548068169458 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
