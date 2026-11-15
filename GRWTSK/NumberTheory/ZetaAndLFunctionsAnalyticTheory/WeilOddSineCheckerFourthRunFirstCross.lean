/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Fourth retained run against the first

These are the original global rows 1177 through 1294 and columns 0 through 96.
The row and column prices and the signed sinc indices 1081 through 1391 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. Two disjoint slices of 59 rows allow the
kernel to check their exact subtotals using the original triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1177 1294
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨1177 + 59 * b.val, by omega⟩ ⟨1177 + 59 * b.val + 58, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 1177 + 59 * b.val ≤ i.val ∧ i.val ≤ 1177 + 59 * b.val + 58) ↔
    1177 ≤ i.val ∧ i.val ≤ 1294
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 1177) / 59, by omega⟩
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

private def columnPrice (j : Fin 97) : ℕ :=
  digit 0x1cfbbdd040293c07585021ff30c99417b0c516c20f3108b10c0944c1a28c857865b4e3c32720fadda1c8f9abbea0ff289f2b488ce4dec2344d1794f16c29dc909b701695a73e640c1df222c18678386864c37090334e11d26a683550f63995e91c819822e140440615ee4a239e1c0fe4129b8f5768c9b37d661dc50c507579b29f4abe45795c228ae354b4455d3d1c5d374236e130231244bd18d3c73b50ccca3e619b4694e6eeafe36222c73769bccde70448e437353eb874fc8511bc3beb018b561ea9f7c7e78fae3c82b228033dd5d654176cb6e44a167b73f4c9108ef966308ae7437fa146beffbb482402dfd08e1251f245034950a080d0a4bbd58bcdc267857e7bd5387bc8b3e09e9012388b506bde3eca28c52dc94054a8dadd008a76df1413654c4ee384faae69bdff895b3f048becaf98ed6b3f58c34536beacda0ce8d796a7b8880d4b7071858c25c6206723b2e9d1ff0da578309f8122bdaf5c95615f9cc3769fb02dac1a255844d774038c3898c27e4626f8349183189c41ca818ec320c162c88e6dfaa364d6c8f40032afb9770819784a93118ccb7c9ef4166cf996288339e1f44d799e872fd4dad0007372e068578077efb453ccb0171a3c1f8c182d264526c3f696c954f1434cfdef4b9da72e7c1262d3e06a62d96a0d7d92b93511baeecbda8c8716672d472dfc225 j.val

/-- The clipped prices on global indices 1177 through 1294, indexed from 1177. -/
def fourthRetainedRunPrice (i : Fin 118) : ℕ :=
  digit 0x78b9474a60aee61114208ff200cbe063d42f38883fa4d3f63e269601c1f2169fbdcf008cf3a05a52074857cc18a409bdf287b236cc8e80f133ee175be0a602d8603058eaf746592f5bed802f1919f3311b0d3f506f85c6f6fb798733a63918a631e80205ec54fe371fce3a84180d09b1447adc9617a36d158cec524a74f484896d372a3634d99befe1127dce48832d4726f25ce8a792feef4d55b8f86ebf2bcc078962d659aaf5198b6496fffd85cd21dbe55af37640b37d7fea8bb7a6c2eb36148862df9e11cf321c4d464059601ff93a0cd6e7cd1d967dcc74a8eb47886505c9a7d0059ed2d5cb3304196bc5c9b8e8364a43de5fdb5472896b4dbfb10e7df6e97bb105b37902da6491be5d8d8d9edff99cf21f7050989b52b8495f60da9c30cfb3654e1c42f145370ef48ac97b8756969e89c352de2230e159f27a2970739b4d24b81450fed39bf3049f180debbe5bf696ede4a26253726901b02db6a9f77386d9ecd99e316c30f7a72835ad14f29a1a9c83fb8eed2f16e16ef686e2d699033a9410bf059897141df4c9d00e14d2639959d2a9311ce7f89218325f35342be90e992ce5db6ccf676ae0a4daf0b96987db6f14b13dee462a56cbb4be792a742486e754bd339145ca1e2bed5f34ede18574a265d8ad8c752a21d3bdbc908ca8a63545f4d2e99921ca08449990490b73eaa7d4a9840e53c178da3029cbd8aa0674db401a8e1c682d0c6658314eb91416973c6292714ae5343f23c514607d09425a385e966914b3fd99d07df06aa37238a901b62e191fdd05f70aef2d474f44a409603f01e6ad51ac20bce57061c042d8c6e948136f7a867e02a1aefaa0 i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x34e53d646a9a72d677d2ed398c7974c69cd98999b34e77c2a1e9a7420c17f8d3a471715d69d419757ab4eb12a2769a76170bbb2d3b57c757869dd4b6efab4f001e8d1da78b9da032d3cbec6dcf69e9304240b4f64ac6beda7c0986d80d3e7c3dc0669f7c906dab4fdedb35a5a8006436e0d40903f6cb6a09162e963506ead2bd1a84b017670d42faca7bb6a1d178478b51141f57f5a8a06e0962d45bbc898e6a33cc2be2351cf2984c5a900a52cc4d48d30e6906a4d329fd1b529fbe38c1a96b9f7af0d4c405b76c6a6948b25335385cab1c5a9e152e980d50035a2376a880b8c123548136e209aa61b2c7eed541b9f9d96aa977ac1335591e56e31aaecafbec8d5888abdb36acd88e796356b7b3acb5ab8237cf86d5d49e99a56af43a6a1db57f279a65dac223654f4d625eae6536b1d86b59f359420a1819accc94044ad67c63a9c36b4967a2db35aa632761dad8136eed6d6d7fb98496b77d661dcb5c1ebaf011ae40028444d738a415c16ba8cb7a9f35dab6676a9af08d79596d79e4d37176bdc3ecddeb5f4bf2c279afdb9458a4d808e5c4256c1227960f36100185bddb0b8146c4ed8785b39d86c4a7c6879b62c78aa465b19e30dd48d8ec99ccaf6c85333685b64a1f7e135b28dc02b86d9658c6b7d6cc2414f253668f0946e5b38696503ad9e31cc2896d019b606ab688e630679b48884c488da65333ef06d4335794936a9fa45b89b5935a88c2daebb7125c6d87030b7536cc2679bc9b6a6e42c4adb768e37056dccf6ed7336ef64247a9b7c2ebd60edc059d74096e15035cc73713ac51c31b8e7394da2dc98c862026e5f1a0050b738f7c2621ba139204e6dd2ff16ff66eab2beac5b75f3eed621bb47b92250ddcaf9e88a6ef9299d5937867a0162dbc836f8bcede69c1f7846f49030a8537aea0e603dbdc673f22cdf0c28af946f9aa798f6b7d7ab3d5f1bf1082dd1cdfb20c10676fee0626a2b8019065975c06156b7c6e05b490d0570430d0bfa382c477a779c1b8a7ddeae107bb92717099aa1f46b857c757241c3162ca98ce1b73e8e8c70f1cab824b8840697dd1c47999812ce269abf74a714b5bb321b8b0fb9bd25c5e2a0e678e31edcd21a71a649757db8de9c87069c750f3859ee3d6a93b9772027ff10a390cdf44441c8c44044fce490e86f7c725feaa82ab93bb987215ca3c345572e54d70d0d372be74b1f5396b20ce139cbb87b4312e60c17f262731e08be70399b0a64929cd38bf0656e6ccb29f53737e911aee39cb6b654a1cebca815cee78f14e41973dff7b68639fc38bc595d043dd783ce85312178974422626a9ba2d6729a19d1ce04d718e9187ce43174a505abd2ba5eeb43201d35ac29186e9df2751da75087f364fba90b977581d4e9b9cfb4eaa6e2cf43756c7b6b24bac2c60fc51d67a8c9694eb6f803c1175d0e2a908baf505335e5d80cdbdbfeec38cff2e176359d0d773b276ae920dd9a0479b1eed02a1d396769a9279d9bb59eb1aa79db346ee952edccc54dc676ffaa98c63b8c7996ccddcc8f00b3cee97096b5a7764cce34fbbbf0a14561de5d688a40ef613cdb4977c9e0a66f3bf19034a8ddff1754a34f02b2dfc86782ecd0877bc23ff86885e184b29f62f0f4aae9007893790ea03c564b88dc1e316bc64cef1bd8180d178f7cba29abc8867ad7d5e4a72e12acf2857f757e795bab983abcba475c0c5e635a2d51cf34c72555b79beffb32a3cebddf4ca9e7c1b5a30af4122797077a21aeaca6bd1d1ed37d9e94b015544f4d66ca4f67a839f394fbd4dfd52559ead120bdc4f5990ee91b7ae4b80ef6bd7e6cccd6dec53aebf04f659dbd89c7b44dfea80bdae60a2cb9edd246638af718a0ff927ba3fd95c53dddcc3b34def4c82f584f7d52c0ce37c01f7ed7d3e0ca30740df0c2001670f88f4ade167c5eb5e72d3e3ad88542df23259d6ecf946cb8b367cba1e971abe686043ac1f39d2cce74f9fb7c72bb7d1419363cbe952de4065f50216333efaad2c45737d6c8d2833bec1351ded1f660b3f206fb5baa126b7dc362013abeec69c2091f7b8a4c5e0fc06c552d07e187f8c1bbf16bfbd071f909884ff6fcae4df5d57e6bcdd01d3f402b1a90dfa52ff2f3cfd52146c897ebd3516ed3f68a008405fb94ab1812fdf1e9b59d7f0c9df285bf9012d8911fcce2eebc6fe8d9f692c7f59f1430a3fb67805cf1fdff2ecffaff2507c4647fa5183c9bbfdbc434ff1ff275045e4ffb7f5b520 (j - 1081) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
private theorem columnPrice_eq_all : ∀ j : Fin 97, columnPrice j = firstRetainedRunPrice j := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem fourthRetainedRunPrice_eq_all :
    ∀ i : Fin 118,
      fourthRetainedRunPrice i = price literalRawDeficit ⟨1177 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem fourthRetainedRunPrice_eq (i : Fin 118) :
    fourthRetainedRunPrice i = price literalRawDeficit ⟨1177 + i.val, by omega⟩ :=
  fourthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 311, crossSinc (1081 + j.val) = sincEntry (1081 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 1081 ≤ j) (hi : j ≤ 1391) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 1081, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then columnPrice ⟨i.val, h⟩
  else if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then
    fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact (columnPrice_eq_all _).trans (firstRetainedRunPrice_eq ⟨i.val, by omega⟩)

private def sliceTotal (b : Fin 2) : ℕ :=
  #[22173655106344262384884634130592202771540113488926,
    17084765522565610264507120345467955836080386551872][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 39258420628909872649391754476060158607620500040798 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fourth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem fourthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1177, 1294)) (retainedRunCells (0, 96)) =
        39258420628909872649391754476060158607620500040798 := by
  have hrows : retainedRunCells (1177, 1294) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (0, 96) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have hv : j.val ≤ 96 := (Finset.mem_Icc.mp hj).2
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
