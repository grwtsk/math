/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Ninth retained run against the first

These are the original global rows 6208 through 6270 and columns 0 through 96.
The new row prices and the signed sinc indices 6112 through 6367 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 6208 through 6270, indexed from 6208. -/
def ninthRetainedRunPrice (i : Fin 63) : ℕ :=
  digit 0x9e49202fc0bf5c0d5860962ada2140658249a4a03f8dc57f2825f7cb298415f9667c4d0c6ddafd7a06e8a5cd30c3c9b9d22fe20dd21bfea11a82bdd0b8969ce322944fc31d0d2229ff23e4c915ffe296bc0b78d001e8c5f52c6f4b23151fff004196e739cd48d127b248146b31c940fa36c9a57c461bee03579d8e33f84e278734a1f20043a5b6da7d61d796c78150edacc163fc7788a8a9da3bfe26db6c1e0c45b58d8f04d9c303877dd40a3b43baa1f5dbb1da2e6f03c8eb065c70dc743acfcd2439592ea9fb1c3a6db3d40ddc17ee3d46c975da1ee3506bd7de119d0c115170c86fd3785060ec1e81162eafcc9840166494e6660ab08959d1451357f26b42652fa1fd111f56c3f9c085897f21bc3d732d6e2c1bf085abda0c839b566d857f6d596ec25a81e4f860f8a52e9e8061048a44d8225b72176c09da9111160123eadc8d i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x733ee98419b99d68dfa25ccdaf99164e6655f07fb732ea52ec6b9954fba9c5cc9a799f18e645442da4731eaa92ac398d5bf5c91cc5b28c6c4e625c2ea44730efdc5ed39858f9a02dcc1d173d36e606e34f2572ffa2cc8e397deca6f3dcbe054ecc0e5e8ad47cb72f09d977139767512939cba4f17118e5cb2897f072e1f20350b96f2ac8a71cb6afc1362e5ae5cd98472d3a3d7c4b9680faa42dcb3283c646e592517abc72c5b6c64ab961258d4e5cafb97220ee5770dbc2a72b82e6950395a6e3c0c9cac64460f2e55c98aedd72ab0e43483953eb74a4dca92995b68e542f9328d729e59bdc0b94d9ee8b05ca60a3848ee52a35f3d97292142882b9478a3cc91ca306fe6ace512556a88728640b8b4b941af081d5ca020b1fdce4fb5dd7db727ae28806b93c0ed4061c9d5815eb2e4e55544f0726ffc93e13936ab1b9f1c9aade5f1ae4d0418126726591bca03931854b651c9822d673ee4bc2820a1725ba4c4ce392c9ec0d49c95b794496e4a90e7acb725238506d3927f8ca0fdc936cc4908e496f9a8ee72494ee443392394a5849c914304830e485ee84db7240eae52f391f7381985c8f3ae94c4e475f1a79d72390e9785391b967c579c8d54ffe18e4670768417231bc1e73b917fea3295c8b91ccdb8e45933daa9722af57b713914acf2869c89f1cc53ae44c7ace737224bc8dae3911a255b49c887571c14e440dfcdf0721f131195b90edfa6869c871d27da8e436661d297219faa051390c65ad1f9c85e95076ce42d10b8f9721574af57390a351fbcdc84da4473ae424e25637721182900339084ea2805c83f0539b2e41ddd60f2720e256f34b906b2c7441c832bc48dae41803fbbd720b5e54f9b905620d6ddc828cd4acae41357ff0f72092e243eb9045ce1ca9c8213b808ce40fdaf8b77207959a8b3903a39e6c9c81c099518e40d8e2b5d7206954fc6b903368a8f5c819399c7ee40c728e1b72062db605b90315da7f5c818cd1328e40c88cc2772065f195fb90341af869c81ac4dd50e40dd1448e7207299fd2b903ba17de1c81f21468ee4104c0a0472088d492ab9047f0ea51c825e2019ce413f8e2c5720a89eef5b905907bda5c82f062834e418d7488c720d1f4481b906ee345cdc83a8c3b0ee41ee6689c72104cd6e1b90897f9f05c84872221ee4262523d97214120d00390a8d7b465c858b52cd8e42e920ef772186e27b5b90cce540b9c86b5212b4e4382b72be721d6041eeb90f5a0cfc1c88044f3c8e442ef4c5b7222e750d63912301bf95c89789598ee44edb4dca722902240db9154fe4275c8b11a37d4e45becde50722faf65eab918b8b60d5c8ccf1edc6e46a211b077236ed9bc1b91c69cfbb9c8eb0a472ae47974d781723ebb26373920625cf4dc90b5c7dbce489e49e74724716419b3924a1775edc92de13aa6e49b6cb288724ffd064eb9292626b41c95290982ee4ae090f2372596d6930392def60fcdc97962237ce4c1b5695d7263653c13b932fc0acbdc9a24cde8ae4d66d30f3726de22e41b9384af77e1c9cd474228e4ec2b91587278e1ccff393ddae9811c9fa474042e502eb72ce7284618420b943aa929c5ca29424624e51aa77b9b72905e9ea0b949b8943edca5a2d3efee5335a1146729cd64744b950037fd15ca8cfc9672e54cfd59e472a9c58945395689d70d1cac1a43b56e5678b3d7f72b7295101b95d4a0c541caf817a288e582fd678172c4fe6cb939644283119cb3049c9e8e59f4d483972d3418d4db96b71901a5cb6a2d3b6ee5bc74166572e1ef470db972d57a131cba5b41064e5da6ad0d572f1041283b97a6c79d95cbe2cff4b0e5f92a4015 (j - 6112) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem ninthRetainedRunPrice_eq_all :
    ∀ i : Fin 63,
      ninthRetainedRunPrice i = price literalRawDeficit ⟨6208 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem ninthRetainedRunPrice_eq (i : Fin 63) :
    ninthRetainedRunPrice i = price literalRawDeficit ⟨6208 + i.val, by omega⟩ :=
  ninthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 256, crossSinc (6112 + j.val) = sincEntry (6112 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 6112 ≤ j) (hi : j ≤ 6367) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 6112, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 99219746837082189961611458927684501085443306246 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (0, 96)) =
        99219746837082189961611458927684501085443306246 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
