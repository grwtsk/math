/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Twelfth retained run against the first

These are the original global rows 15678 through 15741 and columns 0 through 96.
The new row prices and the signed sinc indices 15582 through 15838 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 15678 through 15741, indexed from 15678. -/
def twelfthRetainedRunPrice (i : Fin 64) : ℕ :=
  digit 0x239e13f4d823d1f52fc81aa2b9449e118a2e94c90acf6175068663bac7c883ab4f4d33a210145ba41124191df8c89f7fb39640562ef6b9ca2e29ab17bd188b2ce7368cf759c01f86cfd67ed5438fa23c44d1da7cda4908f5fc04c9f47f107bf9d8416b3bf5422193f39cee112f8b6ef2c8c5bfe7f4447774d5e9b244d05c38b92658bbf67c94d75dba8a4b1a84185d25d154bc60930106e8084987db210f44c52e203e926201c5e799301b84d9a0974dc296244b2040add225398474789267d157764914a068910478451ab03231ea0ba3b1133f9562048678a3c4b241829d6f9d1fd17017ad8f674d0840c76e36a257e392080a0821b54db19110d035dbe8ac6297cbe7e02e6527e1e615acb1a5f20a0a301f40c49a6d3034c21598a25910edda7f8b0067e3a8a2042c25138d481208617d5806ed52d8c30262631e2b80a2a9b2c56007e22787d i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0xe7118fc0e673896f097439c50cddbbdce2b1fcfc2e716f36087738c2eedc639c673d4e09ce368f85b8e71cc723f3738f26b88139c7f6a90a5ce42dd6edce72309a4b8739255b2eb39c994fd1e1ce5006946ae729b960887395bb186839cb4e6d14dce5e07c872e730d4b99273995616a8b9cd228e141ce6cdda69ae73859f6eb739d25cddb39cf10ee875ce7c8494e8e7404744f773a12950e3b9d119163b5ce8cf8c4ace7489ab5d773a55fa59539d33a867c5ce9e36336ae7515241e573a9c7c4ecb9d574ba335ceb038abcee75a6bc83473ae609b5439d7c726081cec2fbc6bce763e50f1073b32908e4b9da3138819ced67aec5ae76dbbc48a73b81fe1aab9dcb25a2b5ceeab15536e777ed7f0f73bd43edf339df49edb91ceff9a0b6ee78277bdf873c293ea94b9e1f7502d9cf152febeee78d57ea2c73c80e8940b9e4b9d9035cf2b6da7a6e7988b56be73cdb270d439e790da555cf424dc4e6e7a40f419e73d37e3daf39ea7ba1099cf59caa0ace7afe0d43c73d970820839ed7974fe1cf71de7012e7bbfd244373df87c649b9f0899935dcf8a8341aee7c861344c73e5c2896e39f3ab4c06dcfa3b2ff18e7d509f4a173ec1f415db9f6ddc74a9cfbd676e5ae7e1f443f573f29c5b4fb9fa20408edcfd79a338ee7ef1cf03373f9383c3039fd71e9479cff244d25ce7fc80b74573fff141033a00d1ef021d00d60afa6e80a1c47e07406c5bf4e3a043f7b999d028e7131ce817ec425a740db405803a07b9b56add044d128f4e825ed397d7414ba5b5e3a0b3fbf8c1d06118038ee8341bb365741bd70270ba0ed0ba021d07db49d38e842742a5574230836703a126bc1f85d09a9fd9e2e850f30da0742a4c2db9ba160ff1fa5d0b7d288ece85f94c2847431a119bc3a19bc622add0d54566e4e86e55a515743905276d3a1d70287edd0f2f11f5ee87d3209217440767fbdba212a58f75d110ce4ec0e88c263b1c7447f3480eba24ea05db5d12ed58422e89b2e8108744f79a2a6ba28ae3ff51d14cff431ee8aa471b6b745707af29ba2c7616cb1d16b4405aee8b96c4635745e9b8b113a304098dddd1899c3e18e8c89a39b574663352233a340cd3e3dd1a80058c2e8d7cd2b8a746dcd1eebba37d9d5055d1c668be20e8e7014f947475670b363a3ba6a9195d1e4cdd494e8f632d8e8747cff30873a3f725ce25d203280254e9055dfac3748493a893ba433bfd4b1d2216faf54e9147ee97b748c228dbeba470297a3dd23f9d472ae92391db767493a9fb8eba4ac539de1d25da93af4e932930a19749b280f29ba4e82f2c9dd27b8c0338e9417eb2bc74a29ae7cc3a523ad2521d2993e21cee95051179974aa00a7433a55ebe9b85d2b6b823bce95f0680be74b15772633a59954bd0dd2d3f2a318e96d9b3cfd74b89d717eba5d360d3edd2f0e648dce97c0ba2d674bfd0d0deba60cd44addd30d8bcec2e98a54116274c6efc135ba645a0b0e1d329dc011ee99870f14174cdf87815ba67db7bcd1d345cfc09ee9a65eb57c74d4e930623a6b50b5101d361600424e9b419dc6b74dbc02ac43a6eb8d7ec9d37c85da82e9c19ef09a74e27bae17ba721308a01d3973a6c3ae9ceea89a274e91a07dd3a755e6ec81d3b176fd3ce9dbf94d0a74ef998ca73a789a35981d3cb34ee90e9e8c7ef1e74f5f89883ba7bc58c0f5d3e46dc010e9f55333c074fc358f693a7edfa52d9d3fd1b11f8ea0197ef4175024edd9b3a81e7b8275d41536a696ea0d930726750842f8143a84dd00979d42cba63ccea194172f4750e105ce6ba87bebeb25d443a054aeea24a03cf77513b5939eba8a8c37751d459e2aaf0ea2fac82fc (j - 15582) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem twelfthRetainedRunPrice_eq_all :
    ∀ i : Fin 64,
      twelfthRetainedRunPrice i = price literalRawDeficit ⟨15678 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem twelfthRetainedRunPrice_eq (i : Fin 64) :
    twelfthRetainedRunPrice i = price literalRawDeficit ⟨15678 + i.val, by omega⟩ :=
  twelfthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 257, crossSinc (15582 + j.val) = sincEntry (15582 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 15582 ≤ j) (hi : j ≤ 15838) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 15582, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 237115540096685167055980636828976456457953103310 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (0, 96)) =
        237115540096685167055980636828976456457953103310 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
