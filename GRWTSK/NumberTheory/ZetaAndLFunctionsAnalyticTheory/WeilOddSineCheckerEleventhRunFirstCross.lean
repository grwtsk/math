/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Eleventh retained run against the first

These are the original global rows 13225 through 13271 and columns 0 through 96.
The new row prices and the signed sinc indices 13129 through 13368 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 13225 through 13271, indexed from 13225. -/
def eleventhRetainedRunPrice (i : Fin 47) : ℕ :=
  digit 0x8ce9ea13c0aa2d5d874084dbb22f105943150c283784b53e1020efd154aa12ec63c8010a9f37ad3f85db776c93c32f505831e1b64341e730e9564832207b38697da8409c05791a21aa5e5e5a1171859b2b88fdfa3a2ec49d1b19da225b5bdf8cd132f3e97fe89b8bf3e1b84e864b25a8277ee0fe3713cb0d7cc609e230414cc4ead84c8d02700101e8013424e802d0979176752c4a3e90a07a2435553cc411933f27e7087cafd024441342b222c1f1c808ee20ebd00a9b506eca6b126c338ca32a0417b52c44050abf998f0d04c91c0f2ec2149df0c9c0e00beae25059bf699f80212a318eb80a715eaa2602026aeb04 i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x73a4b62d92b9d327d8e91ce9fb1576ae7531826b173ab2ee3ec39d66a6093dceb9f69246e760530f4a73b1d863cfb9d9c51939dced4fbb398e76ded18e473b8b10a54b9dd372fe09cef0ba1776e77be2eb8b73bfb7288939e0bfcb961cf0d2aeaa2e78a3117d873c6e903dab9e45e0da5dcf2a472c36e798d417c673ce44d68439e81111cfdcf4807af62e7a7c84f9173d5c8cfff39ebd7ee809cf66651d2ce7b70a0e9b73dd73157239efb1b50b1cf8557f640e7c695905573e541c229b9f39d71e35cfa4d894cae7d666fd2a73ed32e80e39f79a2cda5cfc4df2e5ae7e67a6b7573f544901e39fba6e95bdcfe563d5d0e7f6cbe07673fd74bae9b9ffc2a6ac1d0065e7d52e8075751507405c16113ba03ec60285d027c6f848e81818a40a740e2873ce3a08230d869d04994fd68e8290bb08f7416a7dd61ba0c65a3175d06bc028bce83a2c41ba741f3d81adba10b312081d08e3ffdbce84b76165e7427e73eb03a150a48a69d0b10be96ce85ce4e2597430a2ed0e3a196a32a3dd0d41b4474e86e744f9f74396e6099ba1dd1b95a5d0f7655550e8801fff5174424768e03a223fc4125d11ae15270e891e38ad6744b2bd1b23a26b338479d13e866476e8a3ba84ed74541963b13a2b2af9f05d1624ba860e8b5a07acf745d0de4ddba2fa5ebc39d1862831bee8c790f54274660719243a3422ef805d1aa130cf4e8d98779be746f02c2ecba38a0e634dd1ce03416ae8eb7f8b877477fea3a8ba3d1eb0869d1f1efd3d6e8fd74accc7480f87c633a419b2ef99d215cfc86ce90f625fc57489ee0e513a461542385d2399a252ae9214427d67492dd1b5fba4a8bcb5bdd25d45f40ee933158aac749bc366c4ba4efdac335d280ca4556e944d2115b74a49eb58e3a5369c78c1d2a41e31c2e95675497e74ad6ccf2fba57cf01779d2c738dcc4e967fac65374b62b7e133a5c2c3f951d2ea1176c2e9795e21d774bed890253a608069561d30c9f3f4ae98a9afde174c771d7633a64ca68459d32ed98740e99bad053b74cff52a653a6909284edd350b7b312e9ac8fecb774d86064ebba6d3b98019d372313cdae9bd3f744474e0b168673a7160a8d69d3933db690e9cdb7680274e8e61c823a75774f755d3b3d4cc16e9ddf3a14d74f0fc6fa7ba797e83f55d3d3ee4566e9edf007cb74f8f25788ba7d7542225d3f3820890e9fda892727500c5d19eba815a89bcdd412881bd4ea0d194890750874e3b03a852d5eba9d430f8a7a0ea1c3e42c8750ffd9c4cba88ecc9875d44ecbf88aea2b13ac1275175e134dba8c97d742dd46bfa8142ea3995c2b0751e946a513a902d99fd9d4887cdc7aea47c0d92275259ecd323a93ad28f5dd4a44bced0ea55915717752c7b727f3a9715a0d31d4bf604890ea6303ba517533289bee3a9a6623dddd4d9b36792ea7014978e7539a496cf3a9d9dda3a5d4f33e78eaea7cc09b66753fedbc7a3aa0bbf21d1d50bfafaaaea89048b1e75460272b8baa3bfa0025d523e29d7cea94dd4582754be12c303aa6a81ee01d53aef464aeaa047c3ac75518868c83aa974b0599d5511b0fc0eaab4119cb7556f6b609baac249cef5d566604bdaeab5c677e4755c2aaf7fbaaeb7342e1d57ab98552eabfd52a86756122ff11bab12bccdc9d58e218104eac96a9b817565de5d5d3ab381c5265d5a0933f4cead284528a756a5b9206bab5b882c4dd5b209fd48eadb1ff5e4 (j - 13129) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem eleventhRetainedRunPrice_eq_all :
    ∀ i : Fin 47,
      eleventhRetainedRunPrice i = price literalRawDeficit ⟨13225 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem eleventhRetainedRunPrice_eq (i : Fin 47) :
    eleventhRetainedRunPrice i = price literalRawDeficit ⟨13225 + i.val, by omega⟩ :=
  eleventhRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 240, crossSinc (13129 + j.val) = sincEntry (13129 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 13129 ≤ j) (hi : j ≤ 13368) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 13129, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 105668584853619787454090033301597798031946503220 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (0, 96)) =
        105668584853619787454090033301597798031946503220 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
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
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
