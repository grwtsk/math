/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Twelfth retained run against the fourth

These are the original global rows 15678 through 15741 and columns 1177 through 1294.
Reuse the certified fourth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [14384, 14564] and the sum window is [16856, 17036].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 14565 then
    (digit 0xea1fa1bfb6750e3c6cf5ba8652ae125d42c2eceb8ea12def3c17507d0b5153a8317b5d89d4122e9086ea05cac9c075013cb46e3a7fc8ccacdd3f79068dee9f8687b5374fa820a593a7c66c37cdd3dc5ae922e9eabb561874f3a26013ba78f2701c5d3c094c974e9dcc6bad674ec9f68573a756cad0edd3a444e70ee9ce8e1cad74e57adeed3a71d659529d387724296e9c015003974de368841ba6e3058295d36a23fe58e9b15efab374d6d430f3ba6a7b90e01d34c615c8ce9a26fb11174cf55ad633a66b8ee959d32e31bd86e9934ad71b74c7bcd93cba62e960011d30f9c9de4e983f42e8474c00b97043a5f0dd735dd2f0a994aee9746f85f974b843cf9cba5b274967dd2d160517ae964c0b83074b06771cfba5736aeaedd2b1c89a82e954ebaaf374a87871d13a533d01c91d291ea4ab2e944f44e2b74a078c8c53a4f3b3fdc1d271cd4fbee934de9adf74986a7440ba4b3268371d25179a81ce924ae923e74904f75caba47237c11dd230f76112e914683c9b748829d25eba430f7e4e1d2104e94b0e9040fa86f747ffb91e93a3ef773369d1ef8767cae8f3a8e9557477c6bec73a3adc603ddd1ceaa07f6e8e3381707746f8d6545ba36bf4bbddd1adbea97ee8d2c14c57746751931bba32a13cb51d18ccd8550e8c248a62a745f1556e9ba2e833a871d16bded6fae8b1d2426f7456dabfb4ba2a664cb85d14afada98e8a1623f1d744ea3dc63ba264b7aae1d12a29cabee890fcb926744672bb3aba2233cb6c5d10973de76e880a5cb72743e496957ba1e2045529d0e8e14726e870618dd8743629f230ba1a11eddc5d0c87a2e8ce860341418742e165f0cba1609c95ddd0a846b4aae850216cd5742610b686ba1208dac3dd0884eedcae8402da090741e1afc05ba0e1023525d0689ae064e8305cb0a77416372f413a0a20a2641d04932832ee820b29653740e674bbbba063b552a5d02a1dbb10e8113341a77406ad4846ba0261366ddd00b64592ee801e2989373ff0b168339fe933e4f1cfed0e18eee7f2c475ee73f782a26439fad262081cfcf229e08e7e3dca87673f015d1b3b9f71f93af1cfb1a97298e7d52ef1df73e8c68397b9f37bc1f95cf94aa053ae7c6bf05e473e196901a39efe7d7ff1cf782ba72ce7b890895073da87c7b239ec64bcff9cf5c358a70e7aaa7111a73d39bf2cdb9e8f354285cf40cec000e79d06217973ccd4d15e39e5947c599cf25fe3602e78fb12d0473c6341a6a39e2490ff05cf0bcab60ee782ab93d273bfbb7b9ab9df11e48cdcef23ae370e775f8a29c (j - 14384) : ℤ) - 1000000000000
  else
    (digit 0xea6cd701367535b4bef4ba9a7d651ddd4d0f69500ea66faa5ba7532b9d5fbba98f998c8dd4c4a5a284ea60b8fc71752f8c75743a975ca8bddd4b78c560eea5a13899a752c2d62a5ba95a6f9339d4a9addde0ea530bea9475289d6f5d3a93d8f49d5d49b0d99e8ea4ba3d57d7524dd79b6ba91f30b8f1d48baf1aecea43dd18c07520ee6bec3a8ff5b4a45d47b9621b0ea3bb99aae751cd13c173a8de16c621d46ac69e06ea333b58ff751886ebf7ba8bb6b517dd45944ade2ea2a64685b75141088b5ba897616c19d447149c48ea2136f3d4750f6f2a9d3a87201ee45d4343ae04eea17b53c60750aa3f4db3a84b5606d1d420bc1bfeea0de1984c7505b01533ba8236738bdd40c9d1b2eea03be72a7750094c3bc3a7fa3f58e9d3f7e2d25ce9f94e4aa974fb534289ba7cfe88ba1d3e2925d6ae9ee93b31a74f5ecdd653a7a46d422dd3ccb0fe66e9e39151ac74f062e9783a777d83831d3b6441c3ae9d849de5474eab6c4f7ba74a347105d39f514156e9ccc022a074e4e9d6d13a71b8d3511d387de1a54e9c0f6f90674defd8e4dba6ebee0eedd36ff0748ee9b4f14c3074d8f362baba6bb62c891d3578e3cb4e9a8b2164174d2ccd30a3a689f76865d33ebd7d4ae99c3c601b74cc8b65763a657b82e4dd325845d38e98f93409e74c630a71eba624b190a1d30be91e3ae982b9dbe474bfbe2ba8ba5f0f03911d2f1f21b52e975b3627774b9358cd7ba5bc810179d2d7a5c738e96883108b74b2986a2aba58770f0c9d2bd0aaac4e95b2c2d2d74abe86873ba551cd37b1d2a2276344e94db2097574a527316eba51ba32d65d28702a0e0e94017ffb0749e567358ba4e5004c49d26ba324eee93261728d749777e084ba4adf22e95d2500fc042e92491cc4574908d2eef3a476868afdd2344f5180e916ac7dc074899817d13a43ecb3139d21868c362e908b4fdbc74829a57333a406ce069dd1fc630afee8faaec7ee747b95ab7cba3ce9d02a1d1e045260ee8ec9d5c2374748bd506ba396462b5dd1c4161930e8de843d64746d7e95ab3a35dd7921dd1a7dcee24e8d066f11474666fb0553a3255f4fc5d18ba0b210e8c248fe0d745f60e88f3a2eceb8165d16f6873b6e8b42debc17458540213ba2b48a449dd1533b41b4e8a619415874514ac05b3a27c49b421d1372028c0e8980e84cc744a46e62c3a24437e435d11b1e31e6e88a113a0a74434a3529ba20c62df21d0ff3c60c2e87c24e211743c566d633a1d4d8a1a9d0e381b1c4e86e4cfa0e74356d4ce43a19da71799d0c7f5186ce8608cfa81 (j - 16856) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 181, crossSinc (14384 + j.val) = sincEntry (14384 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 181, crossSinc (16856 + j.val) = sincEntry (16856 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 14384 ≤ j) (hi : j ≤ 14564) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 14384, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 16856 ≤ j) (hi : j ≤ 17036) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 16856, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 297222843978227522611355534261085286045476525596 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (1177, 1294)) =
        297222843978227522611355534261085286045476525596 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1177, 1294) = crossColumns :=
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
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
