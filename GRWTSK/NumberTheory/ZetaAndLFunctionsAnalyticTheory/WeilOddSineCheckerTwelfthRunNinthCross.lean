/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross

/-!
# Twelfth retained run against the ninth

These are the original global rows 15678 through 15741 and columns 6208 through 6270.
Reuse the certified ninth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [9408, 9533] and the sum window is [21887, 22012].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 6208 6270

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 9534 then
    (digit 0x1ccae37d1aee6534819cf7327bf0ded3992ef7fa95cc900fa374e6445ba47673205cc30ab98f486169dcc73276430e636101a2873194b663a398bc9f5db1cc578692b4e62869305f73128ccd38b9887525581cc3d345da0e61b6a743b730c22b979b9854ace07dcc2437a178e60f17499b73060ed7b1b9824bc3a45cc0c96e6ece60372ea37730052bf67b97f78cf429cbf658611ae5f88064cc72faeff289397cd2af1edcbe181ebeee5ee429c4c72f5e7dd06b97a5a16699cbce190aa2e5e4bc471d72f13bd474b9780fad1a5cbbc22e640e5dbefee6472eced17af3975f40fc15cbaba44c48e5d3dfed5872e8fcce85b97407cf5f1cb9ca1ad70e5cc8e709e72e56c096eb9724b713d1cb8f1f1c66e5c5fd75b972e23bc13b3970bf6eca5cb83204cc4e5c02eca7e72df6cd6d6b96f64357adcb78a8920ae5bb240c9872dd001307396e3a26a85cb6fbadeb4e5b6dea91272daf62636b96d4197789cb6859c36ae5b35fdbf672d94fa843b96c7ad0c59cb62876e40e5b0a8aff272d80d1851b96be60f075cb5e45aa26e5aeb9fe0a72d72edca9b96b8382435cb5b95de4ce5ad946d5772d6b54295b96b534dfddcb5a790dbee5ad3872d472d6a07e4c396b55892d5cb5aefd70ce5ada6513572d6f0aadb396b8a3e331cb5cfa7410e5aede18c972d7a5ca1d396bf16ad55cb6098b9c0e5b0dfa77072d8bfc4b3b96c8b003d1cb65ca182ae5b3aaa89472da3e6a05396d56e2f75cb6c8d9a82e5b73e953772dc217047396e54eaf91cb74e1e748e5bb9ab40672de687488b96f84e3a69cb7ec54086e5c0be197f72e112fac5b970e68bdd5cb8a358432e5c6a7a82072e4206e023972799602dcb97302c94e5cd5610a572e7902068b9743da8139cba5b250dae5d4c7d24e (j - 9408) : ℤ) - 1000000000000
  else
    (digit 0x1d3a39379d0e9d3a4393c74eabd62493a75d355de9d3b237d520e9dae6768374ee567a08ba779bd701dd3c05b4e88e9e1e7ceb774f1cee5aeba7953e591dd3cdfa5126e9e8a67b7474f525c414ba7afb12019d3db1168dce9ef20c6d574f85a3c613a7c90f0f31d3e79d4334e9f5550be874fb6b7e40ba7e151b50dd3f39ab03ae9fb41b71174fe58c2193a7f872e695d3ff06a348ea00e54677750121493dba80e6cc07dd409de33ccea063e4a637503c45e1eba82339a8b9d4141e9e08ea0b4b659f75064154783a836d44ffdd41dc543caea100b4dce750897897dba84937b301d426cfad08ea147ccbc2750ac664043a85a5f1be5d42f3b8896ea189ebbc8750ccd54a7ba86a462345d43706acacea1c700df8750eabd5f2ba878e8b181d43e2f1784ea1fefc6757510616c7dba88642ffa1d444b2efccea231cfdb37511eda7113a89251986dd44a908534ea25f6e0b07513501ec23a89d115945d44fc650ceea287cb12b751488770bba8a67f72f1d45452f57aea2aadc5d47515965de8ba8ae996a5dd458354042ea2c898a7d7516798be83a8b55d194dd45b6c28acea2e0f803c751731c4413a8bac8aed5d45df6d0f6ea2f3f3d907517bed4e1ba8bedaafe9d45fd48664ea30186e7a751820967dba8c191f7c1d46104c15aea309ad498751856ec98ba8c2edb825d461872596ea30c64735751861c58dba8c2ed79a5d4615b823eea309ab3517518411a96ba8c1911bcdd46081d1f6ea30181bb27517f4efccba8bed8d52dd45efa3ae8ea2f3e98d975177d5429ba8bac53349d45cc50eb4ea2e0e59077516da6184ba8b5571a95d459e2ca6eea2c87a03175160c3c8c3a8ae8fc62dd456541674ea2aaac7ed75151314c0ba8a670c7a1d45219c656ea28783f65 (j - 21887) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 126, crossSinc (9408 + j.val) = sincEntry (9408 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 126, crossSinc (21887 + j.val) = sincEntry (21887 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 9408 ≤ j) (hi : j ≤ 9533) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 9408, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 21887 ≤ j) (hi : j ≤ 22012) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 21887, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (6208 ≤ i.val ∧ i.val ≤ 6270) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 212406455308845596297184735358263420569242803952 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the ninth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithNinthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (6208, 6270)) =
        212406455308845596297184735358263420569242803952 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (6208, 6270) = crossColumns :=
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
    change 6208 ≤ j.val at hjlo
    change j.val ≤ 6270 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
