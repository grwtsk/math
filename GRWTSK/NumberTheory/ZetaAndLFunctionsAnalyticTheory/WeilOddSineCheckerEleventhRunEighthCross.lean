/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Eleventh retained run against the eighth

These are the original global rows 13225 through 13271 and columns 5271 through 5331.
Reuse the certified eighth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [7894, 8000] and the sum window is [18497, 18603].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 8001 then
    (digit 0x39e77c48725cf2dbc3fd2e78fcfa15c73c462e152b9e070280cdcef580accae773c5018a73b6675eef39d97769e25cebde3b544e7580b732d73a895468c39d293d10fdce86f368d0e73ca9f945739af01738b9cbc71bdd1ce50bdaf76e721a7829f738d7b45b1b9c513034c1ce1b504630e7070ae81273803a3b80b9be793aaa9cde6b8bb72e6ecdaeac3737330561f39b7fb6f21dcdb3046bc0e6d31e326e736660e61db9b19b474c5cd80407e42e6b9db4bbc7359cf2e4ab9ab5a62c89cd4e79e172e6a118a691734d7e62e139a53a59d09cd1dbd47d4e688dc9470734171a8b4399f3cbcd1dccee1724bae6712d46db7335ac146639996314069ccbf93a916e65a10cdc1732a30a99d3993aedf139cc923ec062e6438d15f3731f025a3e398e2194a39cc66240d8ee62da7e79b73142405acb988bca209dcc3b4ee808e61866e4c7730998780eb983816ae2dcc11ca58d8e603cf87f372ff626993b97e7148b99cbe9a117c4e5efe722a372f5847dc339798d8aaf1cbc2dd8890e5dcb2dc0472ec0142cdb974d775235cb9d89b852e5ca37af9672e2db30e3b9705041619cb79af5ad8e5b87a6be272da14a992b96bf91d505cb5757c820e5a77fb14172d1aff7273967d32b20dcb368bf9f6e5974bf09f72c9af4c13b963df81061cb17548992e587e36a5a72c214c25e39601f28ea9caf9b9ad60e5794a2d2472bae25b14395c93202b5caddc336dae56b8414ef72b419fdc3b9593c5754dcac3789074e55e94c9f1 (j - 7894) : ℤ) - 1000000000000
  else
    (digit 0x3a804fd0de1d3fe261b96e9fce21f0874fd563fe83a7e1c8e36dd3ec66a5dee9f3efd6e774f8d3e6d93a7bd6d013dd3da146fa0e9eab4bd5a74f42d6d11ba797f25dd1d3c733fd4ee9e133192774ef63f838ba771623855d3b3c9f762e9d76d42f674ea78b6d3ba749c61651d39fdb2942e9cd65a4c174e56cdffbba72127c161d38b6c800ce9c31eb93474e041b3133a6f79144bdd37683095ce9b89b0b1774daf87773ba6cd0ceabdd36123f216e9addd34a774d5927c1f3a6a1a53a5dd34b548512e9a2e7def974d011176bba67564f491d3351a29d6e997bdc14774ca75a6afba648571199d31e7a633ae98c61a04f74c4c18deb3a61a86be61d3077ace0ae980d64d9a74bef6376fba5ebff59a1d2f0211faae9751ea6ce74b91513853a5bccc711dd2d87324a0e9693d94f974b31f98103a58cf9beb9d2c076bf2ae95d360bd174ad1740343a55c932599d2a831e5cae9510b090374a6fd8bf53a52ba4af31d28faaa1c0e944bf936b74a0d3ffd9ba4fa3a8831d276e70d9ae93856ba57749a9c2488ba4c860fda1d25ded53a2e92bd394c87494578666ba4962479a9d244c3ac56e91f3940a4748e07b5373a4639180a1d22b705ce8e9128ae1fb7487ae43b53a430b4add1d211f9b59ce905cba23374814cc730ba3fd9ab069d1f8661048e8f8feaf47747ae4d728ba3ca504841d1debbceace8ec273af87474780ce6ba396e242b5d1c50158eae8df487a01746e080317ba3635d777dd1ab3d1be6e8d265a34b (j - 18497) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 107, crossSinc (7894 + j.val) = sincEntry (7894 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 107, crossSinc (18497 + j.val) = sincEntry (18497 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 7894 ≤ j) (hi : j ≤ 8000) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 7894, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 18497 ≤ j) (hi : j ≤ 18603) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 18497, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 37624502069474523445269835581490505099684029170 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the eighth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithEighthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (5271, 5331)) =
        37624502069474523445269835581490505099684029170 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
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
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
