/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Tenth retained run against the first

These are the original global rows 8652 through 8758 and columns 0 through 96.
The new row prices and the signed sinc indices 8556 through 8855 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 8652 through 8758, indexed from 8652. -/
def tenthRetainedRunPrice (i : Fin 107) : ℕ :=
  digit 0xd9428f200e46e2acc20df5fa12920a56c987e086d2796a4ec439538c6be282f62efc5173bf319240d28f5116547565b8ff1a40a4af75cc233c7f8122930bdf91d4ca38fc3686e5741df09462e4e96ae0f98766146eaccded40289c6bf43973e0386906e6aa9d63f6c737cf45ac197687eaa5fb38b41834d112da1d074f77e516b7a44f2c8f545bbf0349959c7318a5b80cd91b934e62d13149de3af311a5098e5e298a9174f106f94ecba46e5eaa4b60cd435686de62f1abeb2f1feb164506ff13cb48008d0625b5a0525742e310654aed756028f602bc77dc01fc5f0da8e9612fe69661df581e9b0d65cc22ab57b96619decb568b10a0ba848189df427cc6c5921f1b936307cbe60c3199ff27cc58d3681422cc6a9589c1863491d8cd831957818d1d8be88506bcc56d5d46066260971cd130fbed2be9d85f1e3797ec1dce83983604dce614e2fcd456e4317b52b6847abbf877481a5d113abc7cae09d8d1db56c0e9fd452b3c24c5b7458ac35ac682bb27058ab1582cc976e8a93e6d670e5320fa9509a8c845e230d3fb7e38c789c72a2e3664c72a5ceca254d039b62122be1f0bea8d6674d22344a532fa2aa142c31115d0151259b227c23264d763bbd7a98bd1cac0be54ecdb860e80a868b3afa45d31c12eed42978bd228594b17550b5165324b7080726b6d824db91e57456b30833ab21dd63b8487cf4f1aa5cfcc148bbcb8fd47850f533fd6421e30856d70d963b92e10515cc05a481ac6fca7d20651ae848f i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x7486275002ba416602825d1fdc099b0e8f827833d7478b6e4053a3aaccd855d1c7efd074e8dd3bf95a746b3fc22c3a33f0a9075d1920ae726e8c2480da9745dc546a83a2d33435e1d15c1f522ee8a7527b2174504acf45ba26764b935d1263a8ab8e88c61fead7442d3ba9a3a1fbb70f95d0f06a0b60e8717d558674356367283a190462be9d0babb4cd2e856ab3b7e7427fd328bba1252cf835d0853bc266e83bf26957741aa478a03a0ba864ec5d04ff8d6c8e82159930c740d5c92aaba0506cf389d01affe89ce806e7662c740028d68239fe6fb8d55cfe65e4726e7eca2882973f30c95bb39f7e4c9f35cfb2212eece7d29194ad73e60b1cd0b9f167a81cdcf7e55c66ee7b8bb1bf473d927b250b9eaf9f5ca5cf4b091acae79f25a12073cc65960ab9e49d51fb5cf18481c86e785d7989f73bfc8003bb9de5357cc1cee61f9c3ce76cd7667f73b35220c039d81d9e0edceb49c4768e7542b5cdc73a7071e47b9d1fdb6e51ce83caa538e73bd9ba42739aea158639cbf52f5a1ce53b7135ae723e8a81b738efe186d39c6058efe9ce246dc2e2e70c5e391f7383462d63b9c03057855cdf5fab532e6f54067ca7377c54e8239ba7704619cdc869b8ece6de9514dc736c7e68d239b4db0a679cd9bc666fae6c86205d57361745b8fb9af5dd76c9cd701c1f96e6b2ace3847356a9f76d39aa00d1eadcd45760766e69d7b3890734c21fddeb9a4c558a5dcd1bdf04ace688d270147341df2063b99facc250dccf361bc74e674b7d43b7337e3ffd8399ab85d385cccc088fe6e661308ce4732e332bc83995e96eeb5cca5dd9996e64e419e567324cf21c9b9914133e89cc80eaaaf6e63befe7f0731bba4cd6b98cc0df4d5cc5d3949c8e62a4022ee7312f704afb988699a869cc3ad2adb4e61936e12f730a878d4139843c85045cc19bfbde0e608d88c0a73026e160eb9803ab3ef9cbfa090eb0e5f929632872faacb9a0b97c6531e29cbdbb6df7ce5ea2d7b6c72f3457cfab978bcfea39cbbed1187ee5dbe8bde472ec3a4f143975430ee2dcba35f48bce5ce5ee6c472e58d0858b971f84bfa9cb8968a40ee5c193846e72df3f6a2bb96edd93b29cb70f40140e5b589f68172d9531e72b96bf3b804dcb5a07d846e5aa456cfa72d3c9b726b9693b7ee7dcb44aa4086e59fc8e75a72cea4ade8b966b5a2195cb30e0ef42e5961733dc72c9e5639e396462ceed1cb1eb13608e58d32eeb772c58d2014396243a61f9cb0e200152e5851e816a72c19d11a5b96058bba95caff31d730e57ddc221672be164cebb95ea296985caf1ead60ee5776dd2e372baf9cc6fb95d21b0eb1cae64eb38ee571d5617a72b848706ab95bd6776e1cadc60bb90e56d14667a72b602fe84395ac1499e5cad423cf3ae5692c451072b42a219a3959e2798e5cacd9a642ce5661e2a8c72b2be699339593a4bce5cac8c683c6e563eb0e0a72b1c04b30b958c8f757dcac5a9ca92e56293b02a72b1301fecb9588ea57c9cac44567bee562189acf72b10e25ddb9588b71d9dcac49a1cb8e5627a20f172b15a7fa0b958bf6a4c9cac6a83ce6e563b85e7d72b2153447b9592a8eec9caca6fad72e565d3384072b33e2f543959ccd2085cacfefe53ce568ca5bdf72b4d540b5b95aa618249cad727ecdee56c9d3fe272b6da1ccc395bb638019cae0165ed0e5714b23c672b94c5c78395cfcfaa01caeab967aee576d3102272bc2b7d2bb95e7a1b4d5caf70ec688e57d33d6d672bf76e104b9602d47b05cb0513cd5ee5846c134c72c32dceeeb962161fdbdcb14c561b4e58c7a2ac272c74f72c9b9643436619cb261ffd38e5955c4ca372cbdadd99b96687106c1cb391fae8ee59f1072f272d0cf05bb39690e25d95cb4dc01a32e5a99462bb72d62ac71fb96bc8e1599cb63fc7b76e5b4e5ac9772dbece38fb96eb6a0919cb7bcfa596e5c101ad3972e21402f4b971d6b4409cb953404f2e5cde58e0d72e89eb3a8b9752860681cbb023a04ee5db8e45e172ef8b6acbb978aadc781cbcc981a48e5e9f8999972f6d884a2397c5d537edcbea8ab2c6e5f9211cf172fe8444f5b9803ee459dcc09f44898e60904335273068cd78039844ea1ecdcc2acd5b2ae6199e10a5730ef0505939888b93581cc4d0e0c44e62aeaba42 (j - 8556) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem tenthRetainedRunPrice_eq_all :
    ∀ i : Fin 107,
      tenthRetainedRunPrice i = price literalRawDeficit ⟨8652 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem tenthRetainedRunPrice_eq (i : Fin 107) :
    tenthRetainedRunPrice i = price literalRawDeficit ⟨8652 + i.val, by omega⟩ :=
  tenthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 300, crossSinc (8556 + j.val) = sincEntry (8556 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 8556 ≤ j) (hi : j ≤ 8855) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 8556, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 917787096373801359263063614541302092449280281722 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (0, 96)) =
        917787096373801359263063614541302092449280281722 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
