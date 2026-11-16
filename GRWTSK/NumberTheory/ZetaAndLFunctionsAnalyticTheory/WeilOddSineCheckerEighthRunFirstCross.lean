/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Eighth retained run against the first

These are the original global rows 5271 through 5331 and columns 0 through 96.
The new row prices and the signed sinc indices 5175 through 5428 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 5271 through 5331, indexed from 5271. -/
def eighthRetainedRunPrice (i : Fin 61) : ℕ :=
  digit 0x4299527e019845642201811324a44117bb62cfa0b5d34043206f12b2af804135093b54253bf2f37614d47ea8450b786af8b2063cc12bfc835b62303341ca904450d0f2e730c5187fdb05636842ed433cec22dc93bce9121452e0448956b9bb2d84ce6cf73e2277239d3d7142bb80b900a48c7a3df453aab4eb382a6e3a2cab1576eaa0228ad5111887c574342ced62bd60746b215f8c90a968afd17c107857bd18bcfa2bb03985f315b4c378340ac2a58949855271373d82a0485504314aed6c9380a27ca0c1c04f9237ba3826dbb04af012eb87147b092ed7c7e9847119b9b72223f85c4c7106fd9c31707da611fddc3bba4e0e901c3aca59980d414f4a51062d352d4542da33d253214d92edc620965dc8aae042a5c643081ce51adc5a0c2742961104e3e3daf881d5150f208099a40abce023264e7ef i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x1c6ae33ecc4e356f1682271ab6f66f038d5b88a7ddc6adf6fcd8e3572accef71abb80b6a38d5f2d7469c6b07940d2e358c3e10f71acb08f8238d6851679dc6b5bb2200e35bbcc34071ae58f79f38d76f44cedc6bdbc5a3ee360153a7b71b0b11c43b8d8b149091c6c87bf3b8e365ccb5e071b3b8aa04b8da4af3f65c6d5f848f4e36ce24cbe71b76f219038dc3c00711c6e62f04e8e37554bea671bbd3d7bab8de84136a5c6f91d235ce37f22739d71c0e5f59ab8e122bbf7dc70ebef15ee38a497c6071c6a478ab38e41773685c727100df0e396c792be71cd0e32ffb8e7619d5bdc7420b6ae0e3a49a1a0b71d421cb7ab8eb0087e39c75fab4dc0e3b3be1fa071dbddbe1738eef36ba55c77fe9511ce3c4305b7b71e4405c3538f3396c05dc7a2be65d0e3d5ed30f171ed47ccf9b8f7d197569c7c822d484e3e8f0af7271f6f20dafb8fcbae70b5c7f00e3f5ce3fd36936272013cf23bb901f43ff2dc81a77a3d4e412ba4711720c262595b9077c72755c847555cb4e42976e3b87217ab2a4e390d523ad95c8769d2448e44167329a7223c95b1e391374418c5c8a84416a6e45a85ae2d72307deb80b919e11b709c8dc3eb430e474cc8360723dc5e8563920974a305c91280e438e4903592ef724b9e3891b927953c95dc94afdf7c0e4acba72cd725a039df1b92ed94ee81c985a8ac74e4ca546fa17268f2b5beb93661cb4cdc9c2732fbae4e8fc8e56727867f997b93e2cea2ddca014f21f2e508ab8dbc72885fc042394638d2a4dca422d99cee52959e83e7298d63e8ab94e839ae99ca84ff27dae54affd5a572a9c78825b9570b48c69cac9b3da24e56d954cf372bb2f90a0395fcdd2101cb103b3ffae59112064572cd0a2c553968c91d20dcb58846de0e5b56d7cd272df53116a3971fb0159dcba27e018ae5da9ef0ef72f205d8d7397b6147a61cbee162610e6009d6a2773051dff743984f9ab029cc3b3a982ce6275fb965731896e70d398ec1d90a1cc89d8aaa2e64edc7b23732c6bd77f3998b772845ccd9dd4ab8e6770a19b2734097ffdab9a2d80bf6dcd2b3504dce69fdecf8a735516778fb9ad212e3d1cd7dcc094ae6c950a9a37369e23f9ab9b790571f5cdd18e30e2e6f35589e3737ef643bd39c222f9ef1ce2667020ce71de3299073944d5bb8b9ccd680261ce7c41b5aae748ef1bd473a9e24c8f39d7a84a075ced3093c36e7746ed04073bfafc9cbb9e295af42dcf2aa842d8e7a057956973d5b076cc39ed9bff9c5cf830938a4e7cc9e9b8073ebdee81139f8b88392dcfdc1653e6e7f938f6f9740235a4943a03e87d0cdd035b9976ee8261ba33d7418af271cba0f292802dd08fdcd804e8533b8558742f45df9c3a1a77bb2edd0ea69c1d2e8808d6ebd7445f434903a25d168bbdd14549ddf2e8ae062001745cb4845f3a31335ef65d1a06697eae8db9a4ba874738126bfba3c9ac9001d1fba9434ee9093e98ec748a546e1f3a4804cf81dd256fb215ae936e7a69074a128a907ba536e99611d2b2456690e9648a0db174b7f8238c3a5ed54c745d30d71406ae9921a649d74cebd28b13a6a360e391d36867db08e9bf8d41a774e57203dbba758e0489dd3c31266d6e9ecd73e0374fc11023a3a80da56535d41d5a1e4aea19ecf89e75129474323a8c182c4c1d477284b8aea46c318f37528f6aecd3a9744b1a99d4d0664e22ea734e51e8753f320d22baa25d14d59d528fda0b0ea9f83649d755540f1c43aad5e88245d580d7de8aeacb572346756b1dc8253ab84642885d5d7dec95eeaf6be73f47580c30602bac3118044dd62dfc4ed0eb21ae5369 (j - 5175) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem eighthRetainedRunPrice_eq_all :
    ∀ i : Fin 61,
      eighthRetainedRunPrice i = price literalRawDeficit ⟨5271 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem eighthRetainedRunPrice_eq (i : Fin 61) :
    eighthRetainedRunPrice i = price literalRawDeficit ⟨5271 + i.val, by omega⟩ :=
  eighthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 254, crossSinc (5175 + j.val) = sincEntry (5175 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 5175 ≤ j) (hi : j ≤ 5428) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 5175, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 328951145864397791201180436512941674776468277350 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (0, 96)) =
        328951145864397791201180436512941674776468277350 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
