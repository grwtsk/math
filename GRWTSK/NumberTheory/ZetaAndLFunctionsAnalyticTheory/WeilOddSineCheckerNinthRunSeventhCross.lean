/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Ninth retained run against the seventh

These are the original global rows 6208 through 6270 and columns 4110 through 4199.
Reuse the certified seventh-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2009, 2160] and the sum window is [10319, 10470].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2161 then
    (digit 0x6e12446a1db70b7e6e891b86f3efc2edc417a064a6e25c49c0e3715733e05db8c08a53dedc6af1b0816e3ae936eb372039d0c85b918602186dc97acb6446e51ae892e372bd040bb1b976b0ca08dcc7a314df6e6a1076f337383472abdb9db6b09fcdcfacbf5c76e840a7a94b74564169d9ba467bf85add311dafff6e9f97a56537535ca8289bab7cf0990dd6a8dc9b16ebcb2a082b7621b6ee71bb2f4e1308dda710f9ff6edb55adc137719d7eee5bbace14f0adde69b2afc6efb7aa8b6b781dfb9571bc306f6112de291f7be96f1d1b07d6b792decccf9bcb9dd5a84de6e9043996f402fddb037a497363c5bd490ebfc6deb6df130c6f64b1da40b7b7054165dbddde58dcadf01fcb8406f8a994c6137ca2509b29be78423fecdf4fd9412c6fb1de234cb7ddf27aeb1bf1803d642dfa063fef76fda77f03d37f269520f9bfbd07dc44dff38b895470045de8253807851e331c0672a6fdee0493dc217702f86e57db81d414168dc1164648d0e0a167d8f9705be96a2d383398f1b8dc1ca34c088e0fbf64f8570897ba184384a873a225c282cdda3ae158d4fd3870b8336255b86206fba91c33fe84b6ae1b7ef13cb70e806311db87a12ee6e9c4015984c2e2192f23b17118e942483892a5a2d39c4c6f5bb46e27c7f20b1714ad17c83b8abb982a89c5908ff1d6e2e1c866bc717db37b3038c548d264dc65dfa030ee348f3bee071b18390dd38df4db26a1c72f04ab6ae3b1e9646871e635c9e138f9c220509c8037f93c8e41c910a25721bbdef0139149ff83edc8db395c2ae488d1dfd872520f882a392fe0f6485c9b5ffa6c6e4f69297c472891ddf40394b7eb7d71ca939f2364e565b96c6872c0dc02fcb96772bd1d5cb73e39afce5d62c265172f93cc9e0b983b66a8f5cc5697fb9ae647d02218733232d532b9a0430a665cd3b866478e6ba8a5679736bb09410b9bd11ce2adce2278326ce72e3f5a8b73a5a8469039da1bd0455cf0b360c7ae7a2d36c1673e00c00eb39f75a15985cff587f0a8e8182a7603741acdaebc3a14c58f1e9d0e1354112e88e2816e77455df16483a32571b919d1ce04d116e904afa7a5 (j - 2009) : ℤ) - 1000000000000
  else
    (digit 0x74944c69aaba48bc9af7dd23a9508dce917a1338d7488fb47e7ba4312abf31d20d3b5446e900ef9579747da0443bba3d6426735d1dfbfc05ae8ea2e725174723e33793a37b275345d1b22da560e8d36377547466d7ecc2ba31ff04039d184906372e8bc945554745b7048d73a2c4b3f655d156f35fb4e8a5c6bf4a74500a215b3a2698943b1d129620172e88f0068ea7444a85023ba20e86f669d0fbe7af50e87847053474394dae7f3a1b3c3d701d0ce8fcc6ae861a0450e742dfd147eba15956a2a9d0a165b578e84b11d5d17422b958413a0ff56058dd07474be00e834a15fde7417854d3d3a0a5d8952dd047c82d7ae81e548537740c63c38aba04cf4caa5d01b6b3c7ce80830e013740157872f39ff4c0fd25cfef6911eae7f23c017673f6635f6ab9f9d535c39cfc3ccc028e7dc7b6fc973eb8a0e02b9f46c1ea49cf98a14254e7c6f4a57d73e0ce4e94b9ef1227701cf6df17986e7b1ad0fa373d632d5e2b9e9c8a99e5cf43c82a06e79caa0c9373cbba512539e490facd9cf1a2ff8aae787f0ea9073c167656139df6c6c6b9cef1336812e77386e67273b73caeb9b9da5c4b611cec8dcd614e75f712a5173ad3cbfca39d561dfbd9cea136790ce74bb4cc3c73a36a20fdb9d07e6c63dce7a4a5d56e73856cced7399c74fedb9cbb32eb91ce542262b8e7255c1682739056bebdb9c7015e545ce2ec839ece712c97b4573871ad37d39c26a2caedce0a456220e700a3b46a737e15e78db9bdeec4d75cde6a32696e6eeef60e573754a4708b9b9904b259cdc3ea9c3ee6ddb10438736cba3029b9b54fdcf05cda2249f70e6cced054d736467d2bc39b12e90445cd8159d1a6e6bca7ad58735c554f8d39ad2d739d5cd61929746e6ace526bf735484b7e139a94d8da19cd42d71582e69da97c0a734cf80ceb39a58fdcde1cd252f303ee68ef896d97345b13f49b9a1f557855cd08a2880ae680d63ee3733eb22e88399e7eeb315cced387832e6734618ff7337fca8a2399b2d7ca49ccd2f814d8e6664ba633733192698f399801e790dccb9e8291ee659ea42cc732b751acd3994fcfe5d9cca20f3568e64e252583 (j - 10319) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 152, crossSinc (2009 + j.val) = sincEntry (2009 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 152, crossSinc (10319 + j.val) = sincEntry (10319 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2009 ≤ j) (hi : j ≤ 2160) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2009, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 10319 ≤ j) (hi : j ≤ 10470) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 10319, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 806547636671317654498040837631562421399948096952 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (4110, 4199)) =
        806547636671317654498040837631562421399948096952 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
