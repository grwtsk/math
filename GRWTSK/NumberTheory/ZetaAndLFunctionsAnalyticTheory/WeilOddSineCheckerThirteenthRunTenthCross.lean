/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross

/-!
# Thirteenth retained run against the tenth

These are the original global rows 20236 through 20275 and columns 8652 through 8758.
Reuse the certified tenth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [11478, 11623] and the sum window is [28889, 29034].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 8652 8758

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 11624 then
    (digit 0x1d32f21ac40e99c794b5074d0af6c3cba69905a79dd35641d7d8e9affd4aeb74da6b39a7ba6e6b1463dd37cfda462e9c34de1c474e40cb6733a73385810dd3a34b5126e9d666329c74ed917599ba77f6efce5d3c9213744e9e9416d6c74f6f710d4ba7ca5a95e1d3ee75cc0ee9fbdad09875003b293cba81435642dd4133fa384ea0e2daa1f75095b67dcba85cecc0d9d43775729eea203558d17512557e4d3a8a46e4a71d45b0e11baea31ed4d74751b2727483a8eaa7e9c5d47e007edaea43510bef7523ce273aba92f87d659d4a043dff8ea545c2c68752c484cd7ba972fc9b01d4c1cf853cea650a5c6575349371a3ba9b4f51a35d4e29aeb32ea75575fe5753cad7a81ba9f5609275d5029dbceeea853f126e754494583bbaa342ea289d521cfd632ea94bd681e754c460808baa714f4da5d540294574eaa3ce6eb37553c0940f3aaacb2ff7dd55da24df2eab26e4e88755b0213e43aae64a9035d57a336998eac0994b93756208ad093ab1e074849d595d54afaeace4bc6587568d29364bab53dae449d5b080df2aeadb823cd4756f5e09b63ab87b79875d5ca2f4f8ceae8394b647575a9620ababb990145dd5e2da038eeaf46dada6757bb2fe28babe9578625d5fa7aa260eb001c3f497581794ffb3ac17019dfdd6110b1494eb0b41fce27586fad9f8bac42829121d6268585aceb15dc04af758c362f84bac6bcf1d01d63ae4659ceb1fe79756759129f54dbac92dc8a19d64e226a42eb2962189d7595d4e1a7bacb7a0aebdd6603a90b6eb32491014759a35bce13acda11f1c5d671281ea4eb3a9a29bb759e4b6194bacfa274cf5d680e6a37eeb4253369d75a214bcf43ad17d84f71d68f71f9b0eb49722d6275a590cf13bad331d1fe9d69cc647aceb4ff52adb75a8beab293ad4bee7ea5d6a8e000f0eb55da727c75ab9d77cd3ad6245c77dd6b3bbe6feeb5b206ed775ae2c6f353ad761cf391d6bd570a32eb5fc5b20575b06adf663ad876e9ae9d6c5aeca8aeb63c8f60a75b2582a66bad9635f5f9d6ccc0d868eb67291d2e (j - 11478) : ℤ) - 1000000000000
  else
    (digit 0x1d2e060fdb2e96e890e3174b66f973eba5accb9965d2d30878d6e967d3376474b30feefe3a591a8dbddd2c5649242e960f81b4f74af9dda2fba575f46ce9d2b778ada0e959f96e1974ac1a340cba559b52f65d2a94840d8e952d8ecef74a885dc41ba53cf22959d29ad6d336e94b985d8e74a4e1b6b8ba51fb28249d28c27fc82e944398dd974a12eab5eba501fd8151d27d3f641ee93cbe5364749d6da5e93a4e3da8b75d26e20c022e935288afe74999f959f3a4c55121b9d25ecfd468e92d7a183b7495c56d193a4a668df45d24f5071a6e925b4e4fb7491e022083a487297779d23fa67470e91ddae0f3748df0acf6ba4679ab415d22fd5c444e915ee012d7489f8090aba447c47339d21fe2529ae90df03f8f7485f733c93a427aea569d20fd019dce905e39a597481ef2cd3ba407614badd1ffa31c72e8fdca13a9747de0f5ab3a3e6e47571d1ef5f63bae8f5a5b0fc7479cd916e3a3c6403e9dd1df08ff0ee8ed787aa67475b6049a3a3a57ccd81d1cea402b6e8e5447b5974719b54c73a384a250c5d1be3486f0e8dd0bbf9c746d7e886aba363b8fd79d1adbea6e2e8d4d05549746960a691ba342c90ce9d19d467f94e8cc944b0f746542b6a2ba321dabaa5d18cd02eeae8c459afe6746125c01a3a300f64269d17c5fd2a2e8bc229291745d0aca483a2e023de11d16bf98742e8b3f101197458f2dc0fba2bf6bc381d15ba16716e8abc7084b7454defba43a29ed622add14b5b892ee8a3a6b32f7450d02e493a27e6b2371d13b2c0050e89b920a8c744cc7780e3a25e32e3a1d12b16d9f8e8938b14637448c5db913a23e3574e9d11b201d54e88b93d36c7444cc59baba21e7adad9d10b4bca3ce883ae46957440dbf17f3a1ff0b08e1d0fb9dd83ce87bdc6886743cf59f9f3a1dfede049d0ec1a358ee874202f1d74391a5e673a1c12b2e3dd0dcc4c61ae86c7b8af374354b25713a1a2caa9d9d0cda1628ce864f066e0743188e9673a184d3f245d0beb3d74ae85d80a77e742dd49bc4ba1674e8cb1d0afffe38ee8562e2aaf (j - 28889) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 146, crossSinc (11478 + j.val) = sincEntry (11478 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 146, crossSinc (28889 + j.val) = sincEntry (28889 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 11478 ≤ j) (hi : j ≤ 11623) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 11478, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 28889 ≤ j) (hi : j ≤ 29034) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 28889, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (8652 ≤ i.val ∧ i.val ≤ 8758) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 106179312249720276010640624417039244537650816226 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the tenth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithTenthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (8652, 8758)) =
        106179312249720276010640624417039244537650816226 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (8652, 8758) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 8652 ≤ j.val at hjlo
    change j.val ≤ 8758 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
