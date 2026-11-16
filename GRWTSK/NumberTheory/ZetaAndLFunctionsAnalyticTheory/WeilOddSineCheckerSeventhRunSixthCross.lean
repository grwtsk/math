/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Seventh retained run against the sixth

These are the original global rows 4110 through 4199 and columns 2790 through 2913.
Reuse the certified sixth-run and seventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [1197, 1409] and the sum window is [6901, 7113].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

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
  if j < 1410 then
    (digit 0xd3ae4aba2f69d50c00b634e98e1ec49a74558a954d39f73ba8a69ce476beb34e67f759eda72f81be68d395d8198269ca21d5d8b4e4c0eeb55a72430d590d39181de2769c8a01b2cb4e454e4e15a72378292ad39279d73769c9c67becb4e53d646a9a72d677d2ed398c7974c69cd98999b34e77c2a1e9a7420c17f8d3a471715d69d419757ab4eb12a2769a76170bbb2d3b57c757869dd4b6efab4f001e8d1da78b9da032d3cbec6dcf69e9304240b4f64ac6beda7c0986d80d3e7c3dc0669f7c906dab4fdedb35a5a8006436e0d40903f6cb6a09162e963506ead2bd1a84b017670d42faca7bb6a1d178478b51141f57f5a8a06e0962d45bbc898e6a33cc2be2351cf2984c5a900a52cc4d48d30e6906a4d329fd1b529fbe38c1a96b9f7af0d4c405b76c6a6948b25335385cab1c5a9e152e980d50035a2376a880b8c123548136e209aa61b2c7eed541b9f9d96aa977ac1335591e56e31aaecafbec8d5888abdb36acd88e796356b7b3acb5ab8237cf86d5d49e99a56af43a6a1db57f279a65dac223654f4d625eae6536b1d86b59f359420a1819accc94044ad67c63a9c36b4967a2db35aa632761dad8136eed6d6d7fb98496b77d661dcb5c1ebaf011ae40028444d738a415c16ba8cb7a9f35dab6676a9af08d79596d79e4d37176bdc3ecddeb5f4bf2c279afdb9458a4d808e5c4256c1227960f36100185bddb0b8146c4ed8785b39d86c4a7c6879b62c78aa465b19e30dd48d8ec99ccaf6c85333685b64a1f7e135b28dc02b86d9658c6b7d6cc2414f253668f0946e5b38696503ad9e31cc2896d019b606ab688e630679b48884c488da65333ef06d4335794936a9fa45b89b5935a88c2daebb7125c6d87030b7536cc2679bc9b6a6e42c4adb768e37056dccf6ed7336ef64247a9b7c2ebd60edc059d74096e15035cc73713ac51c31b8e7394da2dc98c862026e5f1a0050b738f7c2621ba139204e6dd2ff16ff66eab2beac5b75f3eed621bb47b92250ddcaf9e88a6ef9299d5937867a0162dbc836f8bcede69c1f7846f49030a8537aea0e603dbdc673f22cdf0c28af946f9aa798f6b7d7ab3d5f1bf1082dd1cdfb20c10676fee0626a2b8019065975c06156b7c6e05b490d0570430d0bfa382c477a779c1b8a7ddeae107bb92717099aa1f46b857c757241c3162ca98ce1b73e8e8c70f1cab824b8840697dd1c47999812ce269abf74a714b5bb321b8b0fb9bd25c5e2a0e678e31edcd21a71a649757db8de9c87069c750f3859ee3d6a93b9772027ff10a390cdf44441c8c44044fce490e86f7c725feaa82ab93bb987215ca3c345572e54d70d0d372be74b1f5396b20ce139cbb87b4312e60c17f262731e08be70399b0a64929cd38bf0656e6ccb29f53737e911aee39cb6b654a1cebca815cee78f14e41973dff7b68639fc38bc595d043dd783ce85312178974422626a9ba2d6729a19d1ce04d718e9187ce43174a505abd2ba5eeb43201d35ac29186e9df2751da75087f364fba90b977581d4e9b9cfb4eaa6e2cf43 (j - 1197) : ℤ) - 1000000000000
  else
    (digit 0xe55ad6977872ab07c0e6b9545583b91ca9954a536e5480c609d72a1be262eb94fbe8a461ca750c13ace5362001677298e41132b94b5f9fccdca528653f8e5251634b272907bd888b94739ec26dca31cc8934e514f37e20728887b701b9434e89385ca12e7663ee505bc28e6728109cb13b93f9e82a59c9f5df2b5ae4f77446ac727a04164ab93c2ad58c5c9dabba416e4ea1fae747273787cbf3938f470401c9c1842528e4ddc1fb98726d68c494b935fc320a9c9aa3f8a80e4d25e8ccf7267d69580b93342eaef9c994f43564e4c7f883487262c378573930c95b749c981a80ac4e4be92c1cd725e30d6a1392e90346c5c970607190e4b62febf8725a1ffa36b92c9816c5dc961225144e4aed2657a7256920ce6392ae193601c953f21080e4a87c5172725388181eb9296d2ae11c948d393d2e4a32f91cc72510304a5b9283b4d909c93fca3c94e49eedc6b9724f039a52b9274c5b381c938d8e7eee49bb84e37724d8a7fd4b926a0a3055c93401edf8e49990439f724c983a7db9263863725c931472100e498767f53724c2d2e18392613ca311c930a9cceee4986b966e724c499cc5b92632f41a5c9322ab6c8e4996fda91724ceda6e1b92695ed225c935ca1c58e49b8359b6724e194af3b9273cb0509c93b87b400e49ea5de1a724fcc65a2b9282727bc1c94362ac94e4a2d6ee3a725206b1b3b929552c8cdc94d59ad76e4a815ccdb7254c7c814b92ac686fedc9596ad6bee4ae61792372580f1fe9392c7aee6c5c96793c188e4b5b8aecc725bdc0ea3392e72095b1c977d1806ee4be19e65a72602dc8253930ab6d8d1c98a20a010e4c783556f7265035ee9b93326a016dc99e7d27d6e4d1f2ef26726a5bc436b935e315785c9b4e29abce4dd666483727035c855b938e031bc1c9cd4bf856e4e9db24f77276901ad6393c1d48985c9e7b3bddee4f74e5eed727d694ad9b93f999d965ca0413e770e505bd00697284bfc763b94354643b1ca2265f16ce51523b7c1728c91dfb739474cc0375ca42a2d9e8e5257ef4567294ddc3b6b94b81c5991ca64c32250e536cae76b729da18451394ff279015ca88bed120e54903850372a6db13f2b9549dcfdf9caae8d73bae55c2484d572b0884700395982b0af5cad6262062e57029634772baa6d458b95e9ff339dcaff7f7854e5850d628172c53455ddb963f460db9cb2a8fa9f6e59acb8b8a72d02e4905b9697eb4ce1cb574c732ee5b15eaf7372db920f73396f3d9c749cb85ab23c8e5c8c1689572e75cef94b9752fb7ac1cbb5a0a00ce5e0ee1bd472f38c1548b97b53991f9cbe721635ce5f9def9fd73001c928d3981a7c6a01cc1a2182f6e6138e0123730d0b603239882ab97e1cc4e94b0d2e62df4fe14731a555e93398edadee79cc846e3e9ae6490d8dd67327f75658b995b69849dccbba120ace664d11f307335edf93d399cbc3bb49ccf41ff14ce68138f43e734435e2dbb9a3ea14411cd2ddcf3dee69e3e241a7352cb998039ab3e627c9cd68ca1836e6bbd99c80 (j - 6901) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 213, crossSinc (1197 + j.val) = sincEntry (1197 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 213, crossSinc (6901 + j.val) = sincEntry (6901 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 1197 ≤ j) (hi : j ≤ 1409) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 1197, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 6901 ≤ j) (hi : j ≤ 7113) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 6901, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 2) : ℕ :=
  #[4723716121840334494619679798523250632253619047796,
    7668654486707198030963053166612710092932019434032][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 12392370608547532525582732965135960725185638481828 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (2790, 2913)) =
        12392370608547532525582732965135960725185638481828 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
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
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
