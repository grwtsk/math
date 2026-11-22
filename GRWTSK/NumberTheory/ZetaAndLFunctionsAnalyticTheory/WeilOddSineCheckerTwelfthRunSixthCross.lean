/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Twelfth retained run against the sixth

These are the original global rows 15678 through 15741 and columns 2790 through 2913.
Reuse the certified sixth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [12765, 12951] and the sum window is [18469, 18655].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 12952 then
    (digit 0x3a8e23c4a59d469d0d3beea313c1b0d7516c51a4b3a8a74b1425d44c2bb616ea22538558750f45e9613a86afb48c5d42dd92544ea1315232975079c49783a82d5bc4c9d40ee09a88ea0384b68c74ffca1e43ba7ee7bbb11d3ef49b9cee9f3a616a774f7d155e83a7ae6ab0fdd3cf1c4fcce9e37d2ec774efb3e87dba76d387aa1d3ae605012e9d30dfd6b74e773d795ba72af536ddd38d1dd31ee9c25c934374df132dbaba6e7b14b59d36b5d144ae9b16d123474d693fdf1ba6a37d6085d349266fd6e9a043ac4e74cdf863333a65e6a5d6dd3268260c8e98ee4a2c574c5427fe83a618896391d303797edae97d5444e174bc747d62ba5d1ebcaa9d2e0147c56e96b96eeee74b3908b53ba58aa31c49d2bc5c23eee959b1092874aa98df40ba542c10f9dd298595692e947a706a074a18fb3f6ba4fa5784e9d274150932e9357d642474987748feba4b1788135d24f98428ce92338a71e748f51e20aba4683629b9d22aec18eae910dd5c79748621c668ba41ea2bf65d20619afe0e8fe70177b747ce94071ba3d4d09a55d1e12a3608e8ebf570a27473aa9cf43a38ad22541d1bc26e2b2e8d9720480746a682aa53a340b9d8ddd19718f39ee8c6ea7296746124398a3a2f69a3745d17209aaaae8b4635c287457e11a68ba2ac85c761d14d024b86e8a1e16318744ea11e2dba2628f1035d1280c195ee88f6928c0744566955cba218c89455d103305490e87cff4cc4743c33cf7c3a1cf44cd35d0de783854e86aa86bf174330b1a7e3a186162691d0b9ecf876e858691f0d7429eec2303a13d4ef9cdd09597bf00e84645f9ba7420e10fa5ba0f5018959d07181a9f2e8344389477417e448a5ba0ad3ffc25d04db3c8f6e822665392740efaaf1b3a0661c5911d02a371b20e810b2d5e574062680803a01fa8825dd007148ca4e7ff2d83d073fd69f55139fd9f63139cfe454f49ee7eddac61273f4c7407bb9f9516f149cfc20112d4e7dcbef97873ec408ed2b9f511c1c41cfa0218d8ce7cbde6dc773e3d8068239f0e16d579cf7ebeef50e7bb3d64a473db8fc682b9ecc1805b1cf5de1a4d6e7aae0108373d369e61239e8b3056b5cf3d91fad4e79aca939773cb68742e39e4b702f41cf1dd81bf2e78b00fec673c38d770b39e0ce7aed1cefebc0eb0e77b8750a573bbdaeb9539dcfa6a98dcee045b36ce76c61747573b452c4edb9d93bca449cec27cc254e75d93412073acf6ebed39d5938d09dcea568c980e74f20784973a5c93ea6b9d202a0901ce89112afee7410cc551739ecb8ff0b9ce89ecd19ce6d7d1afae7335bbc6a7397ffa6ecb9cb2a53df9ce52b39de2e72610d9b2 (j - 12765) : ℤ) - 1000000000000
  else
    (digit 0x3a957cd1bc5d4a9c6a6daea53cd5766752958ab84ba9463d5a71d4a0ceb4faea4f396722752702c08c3a9332eb415d49717df50ea4a464dd475247d663c3a91ea5c25dd48ca47e9cea44f53dd27521c938b63a908a77dfdd481771b0aea3f47810f751ee6dfe23a8f1393d91d475926b86ea393e78cf751bd70f45ba8d860b445d468f95520ea32db9d5075189a85d73a8be23f075d45baeea4eea2c207d6b7515320dcfba8a2895a39d44db66a34ea250ebe3875119e7c7b3a88597b1d1d43f133fd4ea1da81aa4750de0b2023a867560df9d42fc9013eea15ee63077509f999343a847cbda39d41fdb6ea8ea0de37cad7505ea274f3a82700d505d40f4e7186ea058961677501b35bc03a804fd0de1d3fe261b96e9fce21f0874fd563fe83a7e1c8e36dd3ec66a5dee9f3efd6e774f8d3e6d93a7bd6d013dd3da146fa0e9eab4bd5a74f42d6d11ba797f25dd1d3c733fd4ee9e133192774ef63f838ba771623855d3b3c9f762e9d76d42f674ea78b6d3ba749c61651d39fdb2942e9cd65a4c174e56cdffbba72127c161d38b6c800ce9c31eb93474e041b3133a6f79144bdd37683095ce9b89b0b1774daf87773ba6cd0ceabdd36123f216e9addd34a774d5927c1f3a6a1a53a5dd34b548512e9a2e7def974d011176bba67564f491d3351a29d6e997bdc14774ca75a6afba648571199d31e7a633ae98c61a04f74c4c18deb3a61a86be61d3077ace0ae980d64d9a74bef6376fba5ebff59a1d2f0211faae9751ea6ce74b91513853a5bccc711dd2d87324a0e9693d94f974b31f98103a58cf9beb9d2c076bf2ae95d360bd174ad1740343a55c932599d2a831e5cae9510b090374a6fd8bf53a52ba4af31d28faaa1c0e944bf936b74a0d3ffd9ba4fa3a8831d276e70d9ae93856ba57749a9c2488ba4c860fda1d25ded53a2e92bd394c87494578666ba4962479a9d244c3ac56e91f3940a4748e07b5373a4639180a1d22b705ce8e9128ae1fb7487ae43b53a430b4add1d211f9b59ce905cba23374814cc730ba3fd9ab069d1f8661048e8f8feaf47747ae4d728ba3ca504841d1debbceace8ec273af87474780ce6ba396e242b5d1c50158eae8df487a01746e080317ba3635d777dd1ab3d1be6e8d265a34b74679655663a32fcec565d1917587a8e8c581ef22746124a013ba2fc430f1dd177b10dc8e8b8a09662745ab47f90ba2c8c7380dd15df61fcee8abc4d1ac74544790163a295682111d1444b2d96e89ef1d897744ddf6d3eba26232a539d12ab6a3aee8922ae0e474477db19f3a22f3396a1d1113ee9c8e885731dae744123f6603a1fc77bb3dd0f7ea6114e878cdbe9d (j - 18469) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 187, crossSinc (12765 + j.val) = sincEntry (12765 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 187, crossSinc (18469 + j.val) = sincEntry (18469 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 12765 ≤ j) (hi : j ≤ 12951) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 12765, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 18469 ≤ j) (hi : j ≤ 18655) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 18469, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 285161111808594276083202486289339884714377737382 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (2790, 2913)) =
        285161111808594276083202486289339884714377737382 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (2790, 2913) = crossColumns :=
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
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
