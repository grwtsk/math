/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Thirteenth retained run against the seventh

These are the original global rows 20236 through 20275 and columns 4110 through 4199.
Reuse the certified seventh-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [16037, 16165] and the sum window is [24347, 24475].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 16166 then
    (digit 0xe9e8edf35974f2f96989ba78bcd5569d3bfdf0c10e9dce7710974eced912d3a75b2a9829d3a76c1072e9d09d551874e6c04c743a7297f7fedd38e766d68e9c412a98474e0732277ba6f6d8561dd375044fdae9b74a88d274da07a27b3a6c341a4a9d35b1c0496e9aa481d4574d37f638a3a68ec83301d340c3f6c2e99d0ea01c74ccdc04123a6597902ddd32602ae48e98fa158c374c61f297eba623614d0dd30adece2ce982039c0274bf4a7fceba5ec8e7e2dd2ef5f12f8e97438cb2874b85fb92b3a5b50e3355d2d38a5100e96644533c74b1608d7c3a57cee36b5d2b76772bee95829ac1974aa4eb9f93a5443c7c25d29afd770ce949ec579974a32c00bdba50b071db5d27e536f74e93b8fe0b1749bfa28563a4d15c5829d261707e66e92d17da957494bafb523a4974a876dd2445bd578e91e87dfce748d7047cf3a45ce022fdd2271cb392e90fe3915974861bdf083a4222bba59d209ba632ae9012e95bc747ebf94dfba3e73bf155d1ec3c386ee8f26c982374775d3f6d3a3ac1f7c79d1cea98f70e8e3a1476d746ff6b684ba370e51d65d1b109ca52e8d4d0554a74688dd345ba3359b9efdd193644f6ee8c5fd75477461246fa0ba2fa51d1e1d175c0877ee8b72c5be87459bc65e33a2bf1688a1d15825dbbee8a860bdb87452579040ba283f89411d13a9bb414e8999e4e5a744af7c85c3a24906bf91d11d29753ce88ae8bfa074439ee6d13a20e4fcd5dd0ffd67ee2e87c43c09b743c4ec2be3a1d3e272ddd0e2aa29d8e86db2fcb1743509314eba199cd54f1d0c5abc630e85f3a1ab3742dd005453a1601f0449d0a8e29978e850dcbbee7426a50e863a126e5f9bdd08c55dcd4e8429e7b47741f8a19a4ba0ee3092add0700cbb40e83482ec4f741880ef6dba0b60d0d6dd0540e4fb8e8268d9a63 (j - 16037) : ℤ) - 1000000000000
  else
    (digit 0xe95584dc3274abde719f3a567cba725d2b84dcddce95e58d1d574b04450d4ba58ad93681d2c9c399f2e9670b16f974b49911783a5ad5ba0d9d2daf2bc54e96f997c3874b8db9ce93a5cf4a39d1d2ebd6e34ae97801daf374bd0ae0fcba5f09c795dd2fc6bcf7ae9804215e074c125d041ba61149fdc5d30cad54fee98858199074c52b6247ba6314a8dc5d31c975c74e99041dcf574c91a93dd3a650961ab5d32c25e3fae997fd61e574ccf26754ba66f24c279d33b550040e99f88b59b74d0b1e4c2ba68ceed181d34a20dd78e9a6e1f13674d4581a3b3a6a9ecc4c5d35885c054e9ae073a3074d7e41c10ba6c6174b99d3668006eee9b4f6c2d974db55050f3a6e167499dd3740c29c4e9bbaecaca74dea9f6b5ba6fbd5d86dd38126bc86e9c22d9f5674e1e2196cba7155c4975d38dcc6f04e9c8719bf974e4fc9cc03a72df42791d399fa0e00e9ce792ac274e7f8b791ba7459738b9d3a5ac83f8e9d442c4b774ead5a84bba75c3f7f95d3b0e0d9f4e9d9ccf23d74ed92b513ba771e73d01d3bb943842e9df164b7374f02f2bf7ba78688f179d3c5c3e736e9e41d789074f2aa631cba79a1f5e85d3cf6d4fcee9e8e1323774f503b8e8ba7aca58811d3d88dfc64e9ed6041ce74f73a942d3a7be16b5add3e1239952e9f19981ca74f94e644cba7ce6e73c5d3e92bf57ae9f58bddfe74fb3ea1613a7dda894b5d3f0a502e6e9f93653da74fd0acc5d3a7ebc131f9d3f78cd744e9fc97f2b574feb26f2cba7f8b4ad09d3fde1ac68e9ffafdc087500351cd53a8047fb05dd403a1e0bcea027d43a4750192718eba80f1f3045d408cbf7b6ea04ff6fea7502ca12df3a818906badd40d5e9a2cea0735b9fb7503dbafb33a820d0ecd5d4115896baea091f8de27504c7006fba827de89fdd414b8e204ea0abc6aba (j - 24347) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 129, crossSinc (16037 + j.val) = sincEntry (16037 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 129, crossSinc (24347 + j.val) = sincEntry (24347 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 16037 ≤ j) (hi : j ≤ 16165) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 16037, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 24347 ≤ j) (hi : j ≤ 24475) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 24347, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 24431996716585847469523979934809736145164462274 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (4110, 4199)) =
        24431996716585847469523979934809736145164462274 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
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
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
