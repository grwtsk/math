/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Thirteenth retained run against the fifth

These are the original global rows 20236 through 20275 and columns 1610 through 1795.
Reuse the certified fifth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [18441, 18665] and the sum window is [21847, 22071].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 18666 then
    (digit 0xea5f43a2d8752f386aa3ba9765f6aadd4b9716c78ea5bd36b4b752d73fea1ba967d9be9dd4b1fd8c20ea58010433752b7e96eeba957cd1bc5d4a9c6a6daea53cd5766752958ab84ba9463d5a71d4a0ceb4faea4f396722752702c08c3a9332eb415d49717df50ea4a464dd475247d663c3a91ea5c25dd48ca47e9cea44f53dd27521c938b63a908a77dfdd481771b0aea3f47810f751ee6dfe23a8f1393d91d475926b86ea393e78cf751bd70f45ba8d860b445d468f95520ea32db9d5075189a85d73a8be23f075d45baeea4eea2c207d6b7515320dcfba8a2895a39d44db66a34ea250ebe3875119e7c7b3a88597b1d1d43f133fd4ea1da81aa4750de0b2023a867560df9d42fc9013eea15ee63077509f999343a847cbda39d41fdb6ea8ea0de37cad7505ea274f3a82700d505d40f4e7186ea058961677501b35bc03a804fd0de1d3fe261b96e9fce21f0874fd563fe83a7e1c8e36dd3ec66a5dee9f3efd6e774f8d3e6d93a7bd6d013dd3da146fa0e9eab4bd5a74f42d6d11ba797f25dd1d3c733fd4ee9e133192774ef63f838ba771623855d3b3c9f762e9d76d42f674ea78b6d3ba749c61651d39fdb2942e9cd65a4c174e56cdffbba72127c161d38b6c800ce9c31eb93474e041b3133a6f79144bdd37683095ce9b89b0b1774daf87773ba6cd0ceabdd36123f216e9addd34a774d5927c1f3a6a1a53a5dd34b548512e9a2e7def974d011176bba67564f491d3351a29d6e997bdc14774ca75a6afba648571199d31e7a633ae98c61a04f74c4c18deb3a61a86be61d3077ace0ae980d64d9a74bef6376fba5ebff59a1d2f0211faae9751ea6ce74b91513853a5bccc711dd2d87324a0e9693d94f974b31f98103a58cf9beb9d2c076bf2ae95d360bd174ad1740343a55c932599d2a831e5cae9510b090374a6fd8bf53a52ba4af31d28faaa1c0e944bf936b74a0d3ffd9ba4fa3a8831d276e70d9ae93856ba57749a9c2488ba4c860fda1d25ded53a2e92bd394c87494578666ba4962479a9d244c3ac56e91f3940a4748e07b5373a4639180a1d22b705ce8e9128ae1fb7487ae43b53a430b4add1d211f9b59ce905cba23374814cc730ba3fd9ab069d1f8661048e8f8feaf47747ae4d728ba3ca504841d1debbceace8ec273af87474780ce6ba396e242b5d1c50158eae8df487a01746e080317ba3635d777dd1ab3d1be6e8d265a34b74679655663a32fcec565d1917587a8e8c581ef22746124a013ba2fc430f1dd177b10dc8e8b8a09662745ab47f90ba2c8c7380dd15df61fcee8abc4d1ac74544790163a295682111d1444b2d96e89ef1d897744ddf6d3eba26232a539d12ab6a3aee8922ae0e474477db19f3a22f3396a1d1113ee9c8e885731dae744123f6603a1fc77bb3dd0f7ea6114e878cdbe9d743ad3d2d83a1ca0bc991d0debf62aae86c3def1b74348edc243a197fc6599d0c5c43df8e85fc6d589742e56a4c33a166561d95d0acff3724e8536b927274282cbc313a1352566e1d094768584e8472f3fc7742212ae82ba104769ad1d07c305202e83b14f012741c0a0401ba0d455f3a9d06432b59ee82f1fadb674161440cb3a0a4cf8975d04c83b7e0e823527a29 (j - 18441) : ℤ) - 1000000000000
  else
    (digit 0xe94dbd82f774a822c441ba54b2eba45d2aa9fd5fce957d233ac74ad293f43ba57343060dd2be99e534e961c707cf74b21f7b96ba59ad2db25d2d250797ce96b997f3074b7043a273a5c1d44939d2e5be9ee0e9754721fc74bbd64022ba5e83d82a1d2f8df7312e97ecd815974c0945748ba60e04ded5d30bae26a6e9882a380474c53d4e363a63320dce1d31e25fe42e9915aeaec74c9cff8b4ba6578825c5d3304253d6e99a5d49c974ce4b3004ba67b318ed1d341fe97c0e9a32f0faf74d2add3283a69e141bf1d3535651f8e9abce03a474d6f6c72aba6c02701f5d364452330e9b437f92d74db24f76a3a6e161a8c1d374c6c5e6e9bc6ad0db74df3755db3a701bbad81d384d70f82e9c46478d274e32cdb4d3a7212ce4b5d39471f160e9cc22ed5474e70487ae3a73fad5c61d3a39379d0e9d3a4393c74eabd62493a75d355de9d3b237d520e9dae6768374ee567a08ba779bd701dd3c05b4e88e9e1e7ceb774f1cee5aeba7953e591dd3cdfa5126e9e8a67b7474f525c414ba7afb12019d3db1168dce9ef20c6d574f85a3c613a7c90f0f31d3e79d4334e9f5550be874fb6b7e40ba7e151b50dd3f39ab03ae9fb41b71174fe58c2193a7f872e695d3ff06a348ea00e54677750121493dba80e6cc07dd409de33ccea063e4a637503c45e1eba82339a8b9d4141e9e08ea0b4b659f75064154783a836d44ffdd41dc543caea100b4dce750897897dba84937b301d426cfad08ea147ccbc2750ac664043a85a5f1be5d42f3b8896ea189ebbc8750ccd54a7ba86a462345d43706acacea1c700df8750eabd5f2ba878e8b181d43e2f1784ea1fefc6757510616c7dba88642ffa1d444b2efccea231cfdb37511eda7113a89251986dd44a908534ea25f6e0b07513501ec23a89d115945d44fc650ceea287cb12b751488770bba8a67f72f1d45452f57aea2aadc5d47515965de8ba8ae996a5dd458354042ea2c898a7d7516798be83a8b55d194dd45b6c28acea2e0f803c751731c4413a8bac8aed5d45df6d0f6ea2f3f3d907517bed4e1ba8bedaafe9d45fd48664ea30186e7a751820967dba8c191f7c1d46104c15aea309ad498751856ec98ba8c2edb825d461872596ea30c64735751861c58dba8c2ed79a5d4615b823eea309ab3517518411a96ba8c1911bcdd46081d1f6ea30181bb27517f4efccba8bed8d52dd45efa3ae8ea2f3e98d975177d5429ba8bac53349d45cc50eb4ea2e0e59077516da6184ba8b5571a95d459e2ca6eea2c87a03175160c3c8c3a8ae8fc62dd456541674ea2aaac7ed75151314c0ba8a670c7a1d45219c656ea28783f657513ef2465ba89cfc0691d44d34d898ea25f08b387512a0b0773a89233c02dd447a67684ea2314455a7511280897ba8861a86c9d4416ff3d6ea1fe41cf3750f8586feba878b34131d43a92ce74ea1c60d636750db990623a86a0129f1d43310ae12ea188b4a2d750bc493dfba85a07ce9dd42aeb63c8ea146466897509a70adeba848cb0eedd42224e9a4ea0fed2d6575076178f63a8364f1bc9d418bf622eea0b26b50c7504f46bcc3a822987659d40ebd17e6ea061227b07502607af13a80dabeec9d404207cb2ea00b0c327 (j - 21847) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 225, crossSinc (18441 + j.val) = sincEntry (18441 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 225, crossSinc (21847 + j.val) = sincEntry (21847 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 18441 ≤ j) (hi : j ≤ 18665) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 18441, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 21847 ≤ j) (hi : j ≤ 22071) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 21847, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 187930628412708292664735688771585353297840450790 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (1610, 1795)) =
        187930628412708292664735688771585353297840450790 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1610, 1795) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
