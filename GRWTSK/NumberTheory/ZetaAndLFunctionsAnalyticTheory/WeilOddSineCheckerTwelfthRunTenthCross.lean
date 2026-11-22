/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross

/-!
# Twelfth retained run against the tenth

These are the original global rows 15678 through 15741 and columns 8652 through 8758.
Reuse the certified tenth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [6920, 7089] and the sum window is [24331, 24500].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 8652 8758

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 7090 then
    (digit 0x1c9eee88d58e4f4082c95727855ab18b93b577482dc9d43f5ce8e4e6f0f97e7271e8e08039383084a51c9bb83f730e4dad18929726bf86415393547f1501c9a4bd199ee4cfad2b01726685d5df39329e86ac9c98ff10690e4c586f0ae726192b6e939303501589c97d25839ae4bc61ad42725d2068d8b92e0c0e321c96c5fd7f0e4b43ff46d7259302d8bb92c244a289c95da4caf4e4ad2419cc7255c326c0392a7e42101c950f8a2e4e4a710303d7252da55c239291a727a5c9465f2398e4a206094b7250769b213927f947929c93ddb8d72e49e0734a5724e98b67039271b1cfddc937709c6ee49b14ffa9724d41460ab926803dbf1c93320873ee4993074fb724c70c6e4b92628e4201c930ecfea6e4985a5c30724c279462392615399ddc930d72cdce49893398b724c65e834b9264556d91c932dfb522e499db4dc3724d2bda44b926b9438b1c93706b36ce49c3295e7724e7960a1392770f6801c93d4bbc34e49f98cb4572504e4f7839286c55929c945addc74e4a40d63677252aa5919b929ab35aedc9502b99b6e4a98f902972558d0dfdb92b2d5ad7dc95cc2f246e4b01e3fd27258f5dcd8b92cf278311c96b715d98e4b7b81d46725ce412b6392efa300ddc97c33ccb4e4c05b904a726156db1a39314414021c98f06aadee4ca06bdd372664d402db933cfa4fadc9a3e5de4ce4d4b7886d726bc62af0b9369c53579c9baccc906e4e06b90ab7271c063783939a97f0adc9d3b649eee4ed2035ac72783a9130b93cf677bbdc9ee9cbddae4fad295b3727f333b2cb940827cee1ca0b7a00d2e5097f8ec77286a8c87639444cbe2d9ca2a476f82e51923bf6e728e99806eb948545b3d1ca4afde8ace529bb876d7297038b32394c98644a1ca6d95ced6e53b4308a2729fe4f202b95117da241ca92070a06e54db627e572a93b9fbf3955d1ae775cab84909aae561108e0072b305615eb95ac4c40c5cae052c68ee5754da8b172bd3fe673b95fefef0a9cb0a1ac502e58a68abbb72c7e8c1b7396551f53edcb35971714e5a05c920b72d2fd699c396ae98e65dcb62bd5ee6e5b7241ee672de7b38e93970b564791cb9182d12ae5ceb9df2972ea5f6f583976b414019cbc1dc37a8e5e7182a9172f6a7323f397ce42c6b9cbf3bdf3fae60039251a73034f8d40398344305edcc271c0246e61a16c06473105572fc3989d2961a5cc5be9fc28e634aabd26 (j - 6920) : ℤ) - 1000000000000
  else
    (digit 0x1d237d292dce91e47c5a074905293f83a48c059b95d24ab8f20ee927b654e37495077885ba4b199105dd25d788946e93110e94e7499b214603a4d6d7e695d2700ca558e93a552a8d749e513c02ba4fbb8c75dd282709d94e94380c5ae74a2e3c6ac3a520327291d2949fd4eae94c916db474a7688ea93a5443bc119d2a695bb1ce95584dc3274abde719f3a567cba725d2b84dcddce95e58d1d574b04450d4ba58ad93681d2c9c399f2e9670b16f974b49911783a5ad5ba0d9d2daf2bc54e96f997c3874b8db9ce93a5cf4a39d1d2ebd6e34ae97801daf374bd0ae0fcba5f09c795dd2fc6bcf7ae9804215e074c125d041ba61149fdc5d30cad54fee98858199074c52b6247ba6314a8dc5d31c975c74e99041dcf574c91a93dd3a650961ab5d32c25e3fae997fd61e574ccf26754ba66f24c279d33b550040e99f88b59b74d0b1e4c2ba68ceed181d34a20dd78e9a6e1f13674d4581a3b3a6a9ecc4c5d35885c054e9ae073a3074d7e41c10ba6c6174b99d3668006eee9b4f6c2d974db55050f3a6e167499dd3740c29c4e9bbaecaca74dea9f6b5ba6fbd5d86dd38126bc86e9c22d9f5674e1e2196cba7155c4975d38dcc6f04e9c8719bf974e4fc9cc03a72df42791d399fa0e00e9ce792ac274e7f8b791ba7459738b9d3a5ac83f8e9d442c4b774ead5a84bba75c3f7f95d3b0e0d9f4e9d9ccf23d74ed92b513ba771e73d01d3bb943842e9df164b7374f02f2bf7ba78688f179d3c5c3e736e9e41d789074f2aa631cba79a1f5e85d3cf6d4fcee9e8e1323774f503b8e8ba7aca58811d3d88dfc64e9ed6041ce74f73a942d3a7be16b5add3e1239952e9f19981ca74f94e644cba7ce6e73c5d3e92bf57ae9f58bddfe74fb3ea1613a7dda894b5d3f0a502e6e9f93653da74fd0acc5d3a7ebc131f9d3f78cd744e9fc97f2b574feb26f2cba7f8b4ad09d3fde1ac68e9ffafdc087500351cd53a8047fb05dd403a1e0bcea027d43a4750192718eba80f1f3045d408cbf7b6ea04ff6fea7502ca12df3a818906badd40d5e9a2cea0735b9fb7503dbafb33a820d0ecd5d4115896baea091f8de27504c7006fba827de89fdd414b8e204ea0abc6aba75058bc707ba82db765e5d4177e970aea0c0be2d3750629cf0bba83259f05dd419a8f75cea0d0d9bca7506a0edb5ba835c4e6a1d41b376b4eea0dc14ea57506f101f8ba837f753b9d41c298224ea0e26c7e8 (j - 24331) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 170, crossSinc (6920 + j.val) = sincEntry (6920 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 170, crossSinc (24331 + j.val) = sincEntry (24331 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 6920 ≤ j) (hi : j ≤ 7089) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 6920, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 24331 ≤ j) (hi : j ≤ 24500) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 24331, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (8652 ≤ i.val ∧ i.val ≤ 8758) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1427949614779032544201601730007647829880092733578 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the tenth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithTenthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (8652, 8758)) =
        1427949614779032544201601730007647829880092733578 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 8652 ≤ j.val at hjlo
    change j.val ≤ 8758 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
