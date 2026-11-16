/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Ninth retained run against the eighth

These are the original global rows 6208 through 6270 and columns 5271 through 5331.
Reuse the certified eighth-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [877, 999] and the sum window is [11480, 11602].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 1000 then
    (digit 0x41a8199267e0d49bbc87506a8e06ac4835636c8c7c1abe1439f60d644d320106b451ea22835b035e4041add13313a0d7017aeb306b85b9d0a835c19ef32c1ade5178360d6cf9c08506b4ed2ae883597282c1c1ac190e4fa0d5ad521cf06a9f7d8f5835305efc3c1a8699d1920d398ed20906976e90868348cddfddc1a2d3b348e0d090f21df067d45e502833ac4d27a419b54ab8460cc941beb9065b74198f8328e61f8ec191ea4d0d60c7a15bd7f0631f1266083132dfa3dc18692cd0ca0c1b7da4cd0600b6bdb982f9997348c1794ccfc520bad6f765d05c7c0509182dc267b58c16a1769b3a0b2fe4b7db05870b12dc82bad3e51a4158f2209620aa2da7aeb053e95ff878295a1672ac145dcec5d20a0651649104ee61dc05826c8f9dd74130d83805e095a4db3cb0496713b8f823fa00cb0c119e4e25da089ed7477f0436c88202820ed51fec4101043eac607d3f9a3a503cf6de65681da322d9740e6381549206f9c3f5af03606974c181a1bb769840c982a413a061049183702e9c51072816576278340aae69ed9205179f95e3026b8c74ed8125685939c08a672f9d6040fe1ab8501e5cd370180e199115a406807f6cda02f92d497f015896c55e809a10427f4043cd0b58a01d3a4145300c3fa68ca804ed6cc4bc01dbafaaea009f6b646d00280b43e97ffff67b43bff5d6c8a7dff5cac452cff84de52a97fad7a0876bfcc25ef539fe0b93731cfeda8a69467f576d18f1bfa0ae5eaa9fcac515962fe292832e57efddc3d03bf73767c2a1fb3f1a0e5efd70d22fd17ea0d4ef4cbf448522571f9c4254f8afcb1a4b34b7e40659399bf13e1a0245f83bae7c88fbebbde0f87ddc9d7591bee193b8421f6a5f4915cfb1f3da9ea (j - 877) : ℤ) - 1000000000000
  else
    (digit 0x3a7ef6b4261d400eca4f2ea050d590b7504cfe8e13a838b6a87dd4256d9f72ea173b3036750ddd5ca7ba880d56345d44955f934ea291b929c7516c3846eba8c7b535d1d46c9c9d20ea3aa9fa71751f801fb6ba90d442fbdd48f389ceaea4be1f596752810f7fe3a95170b1a1d4b121335eea5cbf26c0753073e14f3a994297195d4d24dc68eea6d3d468d7538a6baccba9d55d7f95d4f2b5ea06ea7d58249d7540a76f3bbaa14fc49b9d5125160eeea8d0ba8a2754873f58cbaa52f5a079d531182022ea9c53d36975500a515d3aa8f39bacdd54f02503ceaab2cbfdf755768937cbaac9b93a21d56c084f90eab992a40d755e8cda663ab02652e4dd58822b424eac781d21275657552bebab392f1961d5a34a4d92ead4f6b912756c2037cabab6e08f351d5bd7826d8eae1ede61d75728bd3e33aba0e52d91d5d6a5882aeaee6405177578b680e3babd1b6b699d5eecbf8a2eafa55e189757e9ea8983ac0070fd25d605e53feceb05c0677f758442c5253ac2d07f389d61beb67e2eb10a0a4487589a1616b3ac577012bdd630d8be12eb1af3c740758eb919673ac7f9e5d59d644a7d536eb24b722867593889a90baca5886275d65753869eeb2de82baf75980ea42dbacc9244051d668d6f384eb36847c71759c4a07a93acea68a6edd6792d8652eb3e89d33d75a039a8dfbad094cda75d68852f3d0eb45f613dc75a3dc7e6c3ad25c8b589d696433c4eeb4cc747fa75a73191eb3ad3fd4ab6dd6a2faaca4eb52fb9fa975aa38003c3ad5769c9f1d6ae75df34eb589171df75aceef9bfbad6c81bb5dd6b8b1bcd4eb5d873ce475af55c28cbad7f16c815d6c1ab7d98eb61dba6ba75b16bb2a2bad8f23d829d6c960a99aeb658d7d7e (j - 11480) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 123, crossSinc (877 + j.val) = sincEntry (877 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 123, crossSinc (11480 + j.val) = sincEntry (11480 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 877 ≤ j) (hi : j ≤ 999) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 877, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 11480 ≤ j) (hi : j ≤ 11602) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 11480, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 2211451257619599940665229237520611880288836350770 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the eighth
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithEighthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (5271, 5331)) =
        2211451257619599940665229237520611880288836350770 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
