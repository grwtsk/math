/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Eighth retained run against the seventh

These are the original global rows 5271 through 5331 and columns 4110 through 4199.
Reuse the certified seventh-run and eighth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [1072, 1221] and the sum window is [9382, 9531].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 1222 then
    (digit 0x1cc182fe4c4e63c117ce0733614c92539a717e0cadcd99653ea6e6fd2235dc7396d6ca9439d79502b9dcf1e29c832e7bfef6d0c73f87178b2ba087baf079d0a6242f12e8844c4d53745ace53433a39c09ae31d230f9c862e94a0b57a574bdd686403a6b585230dd3be4ea3b4ea10fe6c9f752172eeb03a9d3739f69d54dc59e86ead8f6d64975858c1f8a3acf5192d29d6df007822eba1c5521175ea0a66bcbb019b7b7fdd8719fe5c2ec6b3a1aee764ed5d241bb3408f363dda0543a72ced3524f3b376b3d6354f3b668ddd2a5db998a9b8cedff55318c7718f32d99bb991e01679dd2e12d6b4eec999c69f777e1428ac3bcbad11481dec279b692ef93c14cde77e3206951bbfe2ea9469e0565bf90cf05d9a10ef7847ff0d10bc309653ec5e1e955d200f126f21d4078ac9711b83c62d78c99de37b0301a2f1ef9745357910cf5afabc94e5c2559e50afeeafcf2b757307579748eb818bcc6b45aa39e698e4aab6f37dff665479d7bbe9953cf836b4615e8244f2e0ef4435d594d7a3a3da6fb3d29602aa89e9acd949ecf5073e729f7a9bfaa4ab3d5a2417b89eb321dd236f5c9701ded7afcd999adbd8a75d7e09ecb3b7b138f689bfd5017b5cc145973dba48cc715ee3141ff24f747fb2b8a7bbb987669bde9905eb09efaa5819c6f803efdafa7c19460e81be184002ce1f11e95bc2cf8bd6bce5a7c75b10a85be464b3add9f28d97166cf9743d2e357cd0c087583e73a599ce9f3f6f8e576fa28326c797d2a5bc80cbea042c667df55a588ae6fad91a50677d826a3bda3ecc167e40df6b75424d6fb86c402757dd8d384123ef71498bc1f80d8aa5a0fc30ff18377e2d7f7a0e3f213109fedf95c9bebaafcd79ba03a7e80563521bf4a5fe5e79faa428d912fd7a6a2dda7ed1401080bf729563025fbe3d36b3afe193be50b7f2025b1223f99c5dd78dfd1b3ed258feb3e286147f6cf00b9e3fbfe5d9ff5fe4a0f88c8ff4a3079377fb78869fe3fe4ea08bc9ff6feb6a40ffdbf8da4d7fffd871854008c7482ce008c79cae300690f843b8045ca286ec02b72a7fea019f638e1700f1491c64 (j - 1072) : ℤ) - 1000000000000
  else
    (digit 0x1cc9efc37b4e64bbdfea5732403e8dd399116e91d9cc81730c2ae63d2185a7731cc9d90c398d84068a1cc652d98e8e62f27d76c7315e1a4ad398a1a4c17dcc4a3334e2e621d49560730f4d17683986da9d0edcc308ae5e6e6152b381f73090de85e3983c5d266dcc183b5ec6e6092f0e91730325b9bb3980dcba8ddcc014afd9ee5fde33d0a72fd961846b97e2019331cbebbfca24e5f34abc7b72f8607afbb97b90a7131cbd79f741ae5e96859a672f38642a8b9792f11c75cbc4ef51d2e5e03eb46972ef08b9903976fbfb991cbb3b45ebce5d7d03f0572eae913123974f7fb561cba3f33a16e5d01f3d7c72e7286b5c3973239c279cb95b025bae5c92dc4f472e3c7c719b9717f5d6e5cb88ef04ece5c2fdbb2972e0c8133139700bb29f9cb7db35b5ae5bd90d5eb72de2a2482b96ec903261cb74004c1ce5b8e89aa172dbeeb7ad396db7aa449cb6bd898dae5b5065de272da1670dab96cd7f6fd9cb653ea10ee5b1eb431672d8a1db90396c2a2bfc9cb60346146e5af983c1d72d7916a89b96bae7f829cb5cbb72a6e5ae0e090d72d6e57793396b651b55dcb5ad50a56e5ad4d37f772d69e436fb96b4e1cb51cb5a81f930e5ad5624b572d6bbf5c3396b69944d5cb5bc2ab6ce5ae28f8cc72d73e9d04396bb786325cb5e972874e5afc5ab5572d8262e70396c37e9dc1cb62ff12cee5b22c00f472d972860ab96ceaaa251cb68f9a814e5b55b8bdd72db2366a0b96dcfa54ddcb7085c11ce5b953abe472dd3879d2396ee6ad019cb79a1d222e5be138e9a72dfb15021b9702f865fdcb844beb16e5c39a2f7572e28d610cb971a9ea081cb9081b808e5c9e6580b72e5cc0b2539735584295cb9e4081a2e5d0f6a04e72e96c9436b97531f4939cbad852dc2e5d8c96ee272ed6e297039773ececddcbbe4c4028e5e15cf97372f1cfdf9039797b9a2ddcbd091db46e5eaaf452072f690b31db97be7d1f45cbe451c11ae5f4be26ef72fbaf88a2397e82e56b1cbf9875430e5ff87444a73012b2cea39814c38071cc102d98b0e60b081390730702554f398443218bdcc283f3584e6173ddca8 (j - 9382) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 150, crossSinc (1072 + j.val) = sincEntry (1072 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 150, crossSinc (9382 + j.val) = sincEntry (9382 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 1072 ≤ j) (hi : j ≤ 1221) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 1072, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 9382 ≤ j) (hi : j ≤ 9531) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 9382, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 2373681458416927926441667543920796711470235341618 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (4110, 4199)) =
        2373681458416927926441667543920796711470235341618 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
