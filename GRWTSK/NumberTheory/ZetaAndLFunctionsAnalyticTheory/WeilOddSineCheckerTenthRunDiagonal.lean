/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross

/-!
# Exact diagonal subtotal of the tenth retained run

These are the original global cells 8652 through 8758 paired with themselves.
Use the existing certified tenth-run prices. The signed sinc entries on
[0, 106] and [17305, 17517] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The kernel evaluation retains weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 107 diagonal
entries and 5671 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def tenthRun : Finset (Fin 32768) := Finset.Icc 8652 8758

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 107 then
    (digit 0x6dfc99442ef70d3b1d0a3b8e0528330dcaae86461ee7294a8a97747badf981bab05cc541dd90f1764e6ee49a1966b7803d84a99bc706d2319de6ef52c606f5298b09477b6baabc89be20412d66df44d299746fbc801d17f7eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0xe72921145073943bd98fb9c9f53f71dce4e71ee0ae726a3a17a73930a7fd739c96345035ce4a17c1d4e72491687c73920ed66f39c8ec2c04dce4694e800e722eafa71739149228b39c89015619ce43ea5a74e721b0cd927390b99be8b9c84f1b48dce4218dd26e720e33d167390606cc1b9c82951259ce4120fde2e72082891a73903db1bdb9c81ec3995ce41031418e7208ed68973905179ecb9c82f78781ce41bf40cae721082f1473909bc6bf39c85b6ec61ce43556e78e721ee812b73911c8c03b9c8a29eb69ce45c55122e723419ffd7391d3afebb9c904f9ae9ce490e664ee7250143837392c10b0cb9c9826a461ce4d2ff52ce7272d088a7393e4686a39ca1ad44ddce52290eb6e729c470ce73953d858139cace14d41ce57f88de8e72cc6e3117396cc1257b9cb9c022e9ce5e9d1808e73033ab4673988fb18e39cc846c025ce66151ceae73409faaf739a87f87539cd871b4fdce6e5ed75ce73848e81b739cb46f28b9cea3d2805ce77784d86e73cef7012739f1490a9b9cfda4d739ce815f5166e741fc751973a1a7cafeb9d12a41901ce8c11815ce7476ebff673a46d7f5839d2935dd65ce978c48b0e74d44fff773a765023539d4154af2dcea3cce038e7537dcb4673aa8d9b8cb9d5afab539ceb0d04f08e75a179f4273ade686fc39d7621b3f5cebe936b20e76110e0d973b16ef3f3b9d92c30ecdcecd12da3ae76867dcee73b52605ecb9db0d7c9d9cedc4b1296e7701ac8c473b90ad49b39dd0588b85ceec385bd8e77827c26a73bd1c6c2bb9df13d9e59cefcd6cff0e7808cd13673c159cd7939e137ef2edcf0e225c10e78947e63b73c5c1ee5139e371421d1cf2016c1a6e79256dccf73ca53b9afb9e5bf46da1cf32af9772e79bb77b0e73cf0e100739e8216c531cf45e84a8ce7a567726973d3efc78539ea971c5c1cf59bc1f92e7af64603373d8f7ac5cb9ed1fbbd49cf6e2633c4e7b9abce3c73de24810fb9efbaaace5cf83217e46e7c43b336973e374fec0b9f26744b41cf98a8d158e7cf0ff45673e8e7d580b9f524e0735cfaeb6db94e7da2763f873ee7baca2b9f7f2d0a41cfc546294ee7e57ec44973f42f231239fad063b5dcfdc5125e4e7f11346f573fa00cfa8b9fdbce41a1cff3d21d1ce7fce20e0973ffef41873a00b798719d00bc33c98e808e82cac7405f90072ba03bfc3ba5d0241e953ae81522a7d7740c1c8d30ba06d4a57edd03cde1ca8e8218e771174125861e63a09f57a045d055fbaec2e82e2885327418aaf2773a0d217a7d1d06f710f30e83aedb124741f12aceb3a1057dd38dd08937eaeae847daceac74258df9cfba1397d5d69d0a349d9c6e854eca732742c1b3c9cba16e095789d0bda06016e8621ffa8e7432b8d41d3a1a314af59d0d834f046e86f717fd97439651ad53a1d89230fdd0f300ec76e87cdde63b74401e676aba20e748a65d10dfda820e88a61d5be7446e30d113a244ae4ecdd1292469cae897f9f028744db15bf1ba27b31f9f5d1446e6cace8a5a2d1ca (j - 17305) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 107, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 213, diagonalSinc (17305 + j.val) = sincEntry (17305 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 17305 ≤ j) (hi : j ≤ 17517) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 17305, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ tenthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 8652 ≤ i.val at hl
  change i.val ≤ 8758 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
  have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc tenthRun tenthRun = 3647845471744092035803333108049925588070884878219005 := by
  decide +kernel

/-- The exact self-pair contribution of the tenth retained run in
`total_eq_retainedRunBlocks`. -/
theorem tenthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (8652, 8758)) =
        3647845471744092035803333108049925588070884878219005 := by
  have hcells : retainedRunCells (8652, 8758) = tenthRun :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hcells]
  refine Eq.trans ?_ diagonal_cached
  symm
  apply triangleBlock_congr
  · intro i hi
    rw [Finset.union_self] at hi
    exact diagonalPrice_eq i hi
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 8652 ≤ j.val at hjlo
    change j.val ≤ 8758 at hjhi
    have hd : Nat.dist i.val j.val < 107 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
