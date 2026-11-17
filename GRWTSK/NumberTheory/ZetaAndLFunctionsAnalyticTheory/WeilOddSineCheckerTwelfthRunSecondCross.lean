/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Twelfth retained run against the second

These are the original global rows 15678 through 15741 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [15199, 15457] and the sum window is [15963, 16221].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 15458 then
    (digit 0x3aae41569f5d570977f08eab78a8fac755b60e6ddbaad7c5f249d56a333e66eab43a38bd7559a9a6373aac9937685d562dddfa4eab07186967557b652d33aab9814351d55a991826eaac315b7375558761903aaa7931da1d55166d964eaa77ab78675531d56443aa93cd41e9d547495074eaa24eb8c6755078c39bbaa7e346315d53c42e586ea9cae9aa2754d9a4af93aa66cda971d530563b52ea969bb5bc754a829c4c3aa4d9eb169d523862e78ea90177f9475473275eabaa32ad8a39d515d5d4d4ea89238a2f7543aaa4603aa1600b46dd507487cb8ea81c183b6753fec023dba9f79f2061d4f7e1ac26ea79f33610753bf777e63a9d7902c7dd4e7a51ffaea71ba86727537cdfb543a9b5dba385d4d696caf4ea691974e97533708fdfba99289baa1d4c4bad4d0ea60121bdc752ee045feba96da30f69d4b215993eea56a6af8e752a1e3b01ba94730a5c9d49eaba6d4ea4cd97d8f75252b98d03a91f3be5c9d48a81bdeaea42acec2f752009959e3a8f5ce994dd4759ccf80ea382379e7751ab973a1ba8caf2e999d46001fbf4ea2d3fbcbc75153c80c23a89eb35cf5d449b691d2ea220461a0750f9416483a8711ad3f1d432c00c7cea16742bc27509c198873a8423486ddd41b2412d6ea0a91f3eb7503c67686ba8120c02e9d402e875e2e9fe60a7c274fda429a93a7e0ad2769d3ea132f4ee9f1e3491574f75c354c3a7ae2422d1d3d0aa5ffce9e51ced2174f0f0266c3a77a7d6fb9d3b6b44e88e9d810bbc974ea61933f3a745c5d1d9d39c3765aae9cac1eecf74e3b21ad3ba7100a52cdd3813a32b2e9bd33d10b74dce364a83a6d9583eedd365c363dce9af69bd9c74d5f720433a6a1bd21edd349d9c6b2e9a1671f0c74ceef04c73a66946c39dd32d844658e9932f6e7f74c7ccd088ba630032471d310c9e9d8e984c632d474c092489bba5f6007a0dd2f3b1d260e9762effc474b9413867ba5bb4d2bb1d2d6433984e9676d750074b1db7131ba57ff7cec1d2b8856f6ae958853d4c74aa62c9abba5440f2309d29a7fd902e9497a0d9274a2d91d7dba507a20f2dd27c39ee2ce93a4fa3fc749b404cd1ba4cabf9cddd25dbb37dae92b09c70074939a3bd93a48d76f52dd23f0b4e34e91bac4472748be8d257ba44fd75cc1d22031d6b2e90c3af09474842dfb283a411f02ffdd201368234e8fcb9a51c747c6ba3c13a3d3d0df49d1e2210b1ee8ed2c40437474a3bbbdba39588eb11d1c2f93360e8dd96a3d0746cd8345d3a35727e011d1a3c6c28ce8cdfcb41874650b000aba318bd5355d1849183eae8be62570e745d3e11de3a2da58de65d16561447ce8aecb73457455735d22ba29c0a1b55d1463dd114e89f3beef7744dacd4d6ba25de0a0e9d1272ef458e88fb7af0c7445ec6b303a21febfeadd1083c74dae880429622743e3411213a1e23bb901d0e96e131ae870e08392743685b5da3a1a4df4555d0cacb879ee861955278742ee3464f3a167e6062dd0ac5c8104e85264d8be74274eacbaba12b5f4755d08e28a208e84352e622741fc9d023ba0ef5a3a01d070377face83463434674185693e3ba0b3e5f111d052909f42e82599b0b97410f6d72d3a079115d31d0353b7494e816f9e6067409ac7493ba03eeb4925d0183f5ffae8088790c97402794193ba005825615cffba3ac8ae7fa4653be73fb5f0e1cb9fcce4f7d1cfdf6f8e3ae7ec39c5d973f45fa41e39f95217139cfc3aa2014e7de65715c73ed7cc71139f5e45d0adcfa85a626ee7d0ccd2f973e6b8338a39f285fec69cf8d873920e7c37358ea73e0139ec639ef37d5f29cf733769d0e7b65c621873d990b63eb9ebfab84a1cf59719a32e7a98b3d3f (j - 15199) : ℤ) - 1000000000000
  else
    (digit 0x3a9be6a8fa5d4dba8baf4ea6c07a3df75351a3f0bba9a16bccedd4ccf614f6ea6494cb257531541e4f3a982d59999d4bd78a028ea5cbd015a752d5bc1023a962af67d5d4ad342252ea54822fb67529321ee53a941010eb1d49c2c9376ea4be6586d7524d83c29ba91dd2c84dd48a661cdcea42eb963975204f2931ba8f92d2fc9d477e5180aea39941bce751b98024d3a8d3193f2dd464ae0db4ea2fe233587516b3ef753a8aba04d35d450c5b4a8ea25d83de77511a42402ba882cc0b0dd43c30f094ea1b78b2da750c69de63ba858a681edd426f4d0eaea10c61f4775070667ccba82d3a10a5d411168f8cea05c3255575017b13e83a800916905d3fa9b8f94e9fa727b9e74fbc94081ba7d2b78d4dd3e3895bf6e9eed6ec7a74f5f25531ba7a3b7cd65d3cbe5a626e9e2f3555a74eff7c3043a7739dc425d3b3b644b4e9d6caa60a74e9db041cba742755461d39b0131d0e9ca5fdffb74e39d9b5a3a7104aa611d381cc89dee9bdb6158774dd4113f6ba6dd2a2349d3681e89ece9b0d0692a74d6c70125ba6a9207515d34dfd8e28e9a3b20cc074d030fdb0ba6743a8071d333701048e9965e40b774c980ab923a63e85630dd3187ca5fae988d8534374c2b7b38b3a6080e7009d2fd29ff3ae97b239f8b74bbd7c4be3a5d0e32ca1d2e17ee4ace96d438cd574b4e294403a599114cf1d2c58235f0e95f3b8dad74add9dcafba560a6b065d2a93ae7e4e9510f1f0974a6bf5dc33a527b15e65d28cb002f6e942c1c76d749f94dbdd3a4ee3f82c5d26fe8a158e93457160a74985c1f99ba4b45f6a55d252ebed48e925d2a1db749116f55e3a47a1f7f39d235c11f3ce9173808bf7489c72ce4ba43f8e4565d2186f7c20e9088aee9674826e98caba404ba56f1d1fafe537ee8f9cefc55747b0f0e1bba3c9b2608dd1dd74fdb4e8eb07df1e7473aa63dc3a38e851db5d1bfdada12e8dc394759746c427294ba353415529d1a2374d16e8cd66e7bf7464d913dbba317f5d51dd18491be82e8be947478745d7021dfba2dcb16fa1d166f1978ce8afc5a22874560976efba2a182f6e1d1495e4102e8a0fe2504744ea6ed053a266793969d12bdf2170e89241afe474474a5d4f3a22ba2fe81d10e7b9b44e88393f357743ff59fb8ba1f10f026dd0f13b0af8e874f89cb77438aa8a763a1b6cbf2c5d0d424c53ae86673553c74316af18c3a17ce86acdd0b7401514e85807c112742a38a65e3a14372efb9d09a943a18e849b97e6f74231577353a10a79ed1dd07e286692e83b8c24ab741c032ed03a0d20bb13dd06203bdb6e82d83435b74150393ee3a09a36698dd0462d51d8e81fa26167740e1868dd3a063081f09d02aac22a2e811ecfc2d7407436b093a02c8eb2c1d00f871b58e80466869f740086528b39ff6d7da4dcff4c51112e7f712686273f9e2d1bc39fc1f11c65cfda6cc110e7e9f3fcf673f35a94c5b9f8de7cd7dcfc084cef8e7dd0e92dd73ecef4138b9f5ac90c59cfa713c338e7d0656ac473e6a275a039f28a1bec9cf8e20095ae7c3fbb6b373e075c91c39ef77e8e71cf75afee66e7b7d4993e73da6acaf739ec76be585cf5dc99f4ce7abf324ba73d4830244b9e9875ebadcf46732752e7a05a5a7773cebfed7d39e6aa88301cf2fb26e92e7950d29fe73c923021cb9e3e0f44f1cf198d3876e78a0e705173c3adac4539e12b57f69cf04092248e77f60f73473be614e6239de8a631e1ceef2ba1c0e77507747573b93f40cf39dbfec0aa9cedafa03a8e76b04894073b448d17f39d9891641dcec7796a7ce7615ac17073af7f43a939d72a04219ceb4aecd26e7580c92ec73aae3cf75b9d4e224f59cea29ef5aee74f1c5d05 (j - 15963) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 259, crossSinc (15199 + j.val) = sincEntry (15199 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 259, crossSinc (15963 + j.val) = sincEntry (15963 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 15199 ≤ j) (hi : j ≤ 15457) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 15199, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 15963 ≤ j) (hi : j ≤ 16221) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 15963, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (15678 ≤ i.val ∧ i.val ≤ 15741) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 543345624948049426701389349583658524937067095966 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (284, 479)) =
        543345624948049426701389349583658524937067095966 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (284, 479) = crossColumns :=
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
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
