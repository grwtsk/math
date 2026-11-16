/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Tenth retained run against the fifth

These are the original global rows 8652 through 8758 and columns 1610 through 1795.
Reuse the certified fifth-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [6857, 7148] and the sum window is [10263, 10554].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 7149 then
    (digit 0x7310847544b986a6da931cc2870b960e60ddfdbfe7303c9012b398053ba6bdcbf62d57b0e5f4e9627772f7639382b97a2c04b55cbc5487e16e5dca3c4a272eb575e353974314fc19cb95cec9dae5c515466972dfa77dcc396e652719dcb67cc8136e5ae43ffc472d456f8a4b968c90b17dcb3b4d9018e59835db2772c968be2ab9635e70831cb105d8522e582f093f872bedfa611b95e26c0305cae7078ea0e56e79b51b72b4be6f9d39592356a45cabf5677a2e55ad6977872ab07c0e6b9545583b91ca9954a536e5480c609d72a1be262eb94fbe8a461ca750c13ace5362001677298e41132b94b5f9fccdca528653f8e5251634b272907bd888b94739ec26dca31cc8934e514f37e20728887b701b9434e89385ca12e7663ee505bc28e6728109cb13b93f9e82a59c9f5df2b5ae4f77446ac727a04164ab93c2ad58c5c9dabba416e4ea1fae747273787cbf3938f470401c9c1842528e4ddc1fb98726d68c494b935fc320a9c9aa3f8a80e4d25e8ccf7267d69580b93342eaef9c994f43564e4c7f883487262c378573930c95b749c981a80ac4e4be92c1cd725e30d6a1392e90346c5c970607190e4b62febf8725a1ffa36b92c9816c5dc961225144e4aed2657a7256920ce6392ae193601c953f21080e4a87c5172725388181eb9296d2ae11c948d393d2e4a32f91cc72510304a5b9283b4d909c93fca3c94e49eedc6b9724f039a52b9274c5b381c938d8e7eee49bb84e37724d8a7fd4b926a0a3055c93401edf8e49990439f724c983a7db9263863725c931472100e498767f53724c2d2e18392613ca311c930a9cceee4986b966e724c499cc5b92632f41a5c9322ab6c8e4996fda91724ceda6e1b92695ed225c935ca1c58e49b8359b6724e194af3b9273cb0509c93b87b400e49ea5de1a724fcc65a2b9282727bc1c94362ac94e4a2d6ee3a725206b1b3b929552c8cdc94d59ad76e4a815ccdb7254c7c814b92ac686fedc9596ad6bee4ae61792372580f1fe9392c7aee6c5c96793c188e4b5b8aecc725bdc0ea3392e72095b1c977d1806ee4be19e65a72602dc8253930ab6d8d1c98a20a010e4c783556f7265035ee9b93326a016dc99e7d27d6e4d1f2ef26726a5bc436b935e315785c9b4e29abce4dd666483727035c855b938e031bc1c9cd4bf856e4e9db24f77276901ad6393c1d48985c9e7b3bddee4f74e5eed727d694ad9b93f999d965ca0413e770e505bd00697284bfc763b94354643b1ca2265f16ce51523b7c1728c91dfb739474cc0375ca42a2d9e8e5257ef4567294ddc3b6b94b81c5991ca64c32250e536cae76b729da18451394ff279015ca88bed120e54903850372a6db13f2b9549dcfdf9caae8d73bae55c2484d572b0884700395982b0af5cad6262062e57029634772baa6d458b95e9ff339dcaff7f7854e5850d628172c53455ddb963f460db9cb2a8fa9f6e59acb8b8a72d02e4905b9697eb4ce1cb574c732ee5b15eaf7372db920f73396f3d9c749cb85ab23c8e5c8c1689572e75cef94b9752fb7ac1cbb5a0a00ce5e0ee1bd472f38c1548b97b53991f9cbe721635ce5f9def9fd73001c928d3981a7c6a01cc1a2182f6e6138e0123730d0b603239882ab97e1cc4e94b0d2e62df4fe14731a555e93398edadee79cc846e3e9ae6490d8dd67327f75658b995b69849dccbba120ace664d11f307335edf93d399cbc3bb49ccf41ff14ce68138f43e734435e2dbb9a3ea14411cd2ddcf3dee69e3e241a7352cb998039ab3e627c9cd68ca1836e6bbd99c807361ab8effb9b2b75cd3dcda4d8fe08e6da04238b7370d2219639ba5330039cde1faf862e6f8b6597473803b9cc939c20fff891ce20211142e717e8ba61738fe43a4c39c9ebe616dce5f3c0d3ee73793a039739fc822f0b9d1e4f60b5ce9f3c6f34e757af448273afe36f92b9d9f939e9dcee0127c1ee77833c24773c0322a10b9e226b4d49cf21ae3eeae79919180d73d0b04e41b9ea6b6309dcf63ff8c64e7ba5729c473e159caf339f2c53a635cfa6f6072ae7dbe5c2c673f22a82e8b9fb322ad59cfea8123bce7fdbc97df74031e4ddf3a03b01ef29d02e902c88e81fd34959 (j - 6857) : ℤ) - 1000000000000
  else
    (digit 0x756661e1263ab22fefd95d589677406eac09fc1f3755e41f390baae180e665d568699312eab001a73c7555e3718f3aa9e1236edd546756f7cea9ee971ef754d48669b3aa58c36a65d52393567aea8d5b5062754472edb4baa11a57739d4ffcbd254ea7b5b8f33753b6530deba9c8c9cad9d4db27a852ea68ee983c75322168983a97e42458dd4b5afd698ea5618f17c7528a9db50ba9322135fdd48f6d91eeea42df3c01751f00dcd83a8e47954b9d4686a437cea2f4632bd751528cdceba8955dbfa5d440af8686ea1b52a964750b241b0eba844e1f549d418472600ea07098b397500f53d123a7f319cff5d3ef3b1a2ce9f26fd9d574f69eb7593a7a01980f5d3c595862ae9dd8aabf074ec2317cb3a74bf58b7dd39b60b570e9c85f2c1f74e184f612ba6f6c2bfa9d370a71940e9b2f2978a74d6c6f2fdba6a0963555d34573461ae99d4a3ca274cbebb7d3ba6498546edd319cff116e9876b79d474c0f5f5afba5f1a58c0dd2edc7ed46e9715bbc3174b5e864d43a5990cd445d2c1662902e95b207e1674aac5c3fe3a53fd1219dd294b5ab2ce944bf45d3749f90d7b83a4e608a329d267c19086e92e3da44a74944c69aaba48bc9af7dd23a9508dce917a1338d7488fb47e7ba4312abf31d20d3b5446e900ef9579747da0443bba3d6426735d1dfbfc05ae8ea2e725174723e33793a37b275345d1b22da560e8d36377547466d7ecc2ba31ff04039d184906372e8bc945554745b7048d73a2c4b3f655d156f35fb4e8a5c6bf4a74500a215b3a2698943b1d129620172e88f0068ea7444a85023ba20e86f669d0fbe7af50e87847053474394dae7f3a1b3c3d701d0ce8fcc6ae861a0450e742dfd147eba15956a2a9d0a165b578e84b11d5d17422b958413a0ff56058dd07474be00e834a15fde7417854d3d3a0a5d8952dd047c82d7ae81e548537740c63c38aba04cf4caa5d01b6b3c7ce80830e013740157872f39ff4c0fd25cfef6911eae7f23c017673f6635f6ab9f9d535c39cfc3ccc028e7dc7b6fc973eb8a0e02b9f46c1ea49cf98a14254e7c6f4a57d73e0ce4e94b9ef1227701cf6df17986e7b1ad0fa373d632d5e2b9e9c8a99e5cf43c82a06e79caa0c9373cbba512539e490facd9cf1a2ff8aae787f0ea9073c167656139df6c6c6b9cef1336812e77386e67273b73caeb9b9da5c4b611cec8dcd614e75f712a5173ad3cbfca39d561dfbd9cea136790ce74bb4cc3c73a36a20fdb9d07e6c63dce7a4a5d56e73856cced7399c74fedb9cbb32eb91ce542262b8e7255c1682739056bebdb9c7015e545ce2ec839ece712c97b4573871ad37d39c26a2caedce0a456220e700a3b46a737e15e78db9bdeec4d75cde6a32696e6eeef60e573754a4708b9b9904b259cdc3ea9c3ee6ddb10438736cba3029b9b54fdcf05cda2249f70e6cced054d736467d2bc39b12e90445cd8159d1a6e6bca7ad58735c554f8d39ad2d739d5cd61929746e6ace526bf735484b7e139a94d8da19cd42d71582e69da97c0a734cf80ceb39a58fdcde1cd252f303ee68ef896d97345b13f49b9a1f557855cd08a2880ae680d63ee3733eb22e88399e7eeb315cced387832e6734618ff7337fca8a2399b2d7ca49ccd2f814d8e6664ba633733192698f399801e790dccb9e8291ee659ea42cc732b751acd3994fcfe5d9cca20f3568e64e2525837325a652f4b9921f89f1dcc8b736daae642ff5ea3732027954e398f6a49801cc761ab7d0e6387bd744731afa516eb98cddf2549cc620aaa34e62e9d508273161fe2d7398a7b2fa65cc4f488a2ae6256662c97311999099b98842a2699cc3dd94a9ae61cd97d26730d688d03b98634e1265cc2dc18ab8e614f8e4a573098df54e39845277d05cc1f0594cce60dc6b3b373060ad151b9829be7a21cc11a95d0ae60744d9937302e0133fb98111a6fa5cc05b08088e6017519da73000e9762397fb4213c5cbfb1e4446e5fc590bf072fd9723dfb97e83b6b31cbf1f59448e5f7f21aa972fb7a6887397d80bc769cbea3902cae5f44183dc72f9b8fe9db97cab7c54dcbe3eac790e5f148580c72f85368b4397c0434bd1cbdf0cbf38e5ef077a1d (j - 10263) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 292, crossSinc (6857 + j.val) = sincEntry (6857 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 292, crossSinc (10263 + j.val) = sincEntry (10263 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 6857 ≤ j) (hi : j ≤ 7148) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 6857, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 10263 ≤ j) (hi : j ≤ 10554) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 10263, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 12396850826389854387316231374604208139802676941144 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (1610, 1795)) =
        12396850826389854387316231374604208139802676941144 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
