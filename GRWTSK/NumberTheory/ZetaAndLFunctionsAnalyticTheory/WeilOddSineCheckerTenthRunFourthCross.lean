/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Tenth retained run against the fourth

These are the original global rows 8652 through 8758 and columns 1177 through 1294.
Reuse the certified fourth-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [7358, 7581] and the sum window is [9830, 10053].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 7582 then
    (digit 0x754b611707baa77593fe5d549c78e9eeaabea776975597521de3aae78c3f4dd581a97eaceac7bf36067567512bdfbab55f821e5d5b8a45890eae31ea75c7574f1af003abc280d27dd5eeaa1f80eafe01d409758253331e3ac2d0aacf9d623ad101eeb1861e1d3758f724ee53ac957a8561d6579fa400eb32381567759c4ba8aabacfbb5aecdd68a74951aeb4b7dd41275a8dbf74abad5fa20231d6bc1ee126eb642ca56a75b52002fabadc125e4fdd6ec91ccf2eb7c3e34fa75c114a61fbae20284fb9d71bc0e7a4eb93ac53e075ccb6ce1abae7c90d459d749a00de4ebaa70fa6075d8037c11baed647a499d776236cfeebc086497275e2f7c5b4baf2d3597fdd7a13f85eeebd5e68c4275ed90d5ffbaf814431ddd7cae93048ebea8c39ac75f7cbedf1bafd25da72dd7f3159d2eebfe71f5a67601a66545bb0206ce411d819ba5a04ec119292a5760b1dab20bb06b5d915dd83ecd5336ec23e912f476142f46bd3b0b31c19ddd86244d6d2ec3570a9ff761cd8d80f3b0f795af71d884179708ec4624bd9576251818623b138b84fe1d8a43cac9eec5600e71b762ceadaf2bb17672c9add8c2ab9942ec6500f4b276344f0d803b1b0b4c085d8df5c49ccec7320ea55763b42b8d6bb1e76eb191d8fa471852ec805d02e27641c40157bb21a91f7a1d91364ce3cec8cb1b11d7647d127743b24a10cef5d92aaea62aec981ba0a1764d6888273b275de590dd9401e4dc2eca297b6c67652889d64bb29dee9ff9d953ade768ecac23137476572ffe83bb2c23699b5d965580bceecb4bb11ef765b5d609ebb2e2ac2b19d97517cb76ecbc5d498b765f0f96f0bb2ff462a9dd982e8b008ecc3078e5b7662459327bb317fc62fdd98ec6bd94ecc8b7f1cb7664fe65af3b32cc79569d998ae73b0eccd6cc32c7667393df6bb33da17bb1d9a09cce7aecd12490317668f56aac3b34a84ca09d9a68f477eecd3de255b766a3259f2bb3536d30add9aa83d672ecd5988e5b766aef998ebb358575d2dd9ac78f1e4ecd653165b766b2cd70a3b35940fb99d9ac6d8fbaecd60d4844766ae9dfd3bb35628b741d9aa612598ecd4c6eee5766a26a1533b34f0e3b71d9a653a924ecd28015147668e328f73b343f233b1d9a0459032eccf3905c376671fa43a3b334d64bedd99837d0c2eccaf24bf57664dc60a0bb321bd304dd98e2be0eaecc5acb2b4766219cbae3b30aaa8cd9d98223b69eecbf6944f0765ed872d1bb2efa30cc9d97421c74cecb8294d47765b19034e3b2d0ac59add964290774ecafee55ce7656dc4a153b2adcd1a3dd9523ce9feeca6ba27b8765223339d3b2870cf0fdd93e615f82ec9c8ecafa764ceecbb03b25c747a95d9289ad57cec916e85d87647403d303b22e0d4c05d910ee3542ec855bdc65764118d1d6bb1fbe1f05dd8f760e2faec78598ff6763a79f1e93b1c5fde689d8dbf8bc5eec6a6a9e7f76336523e9bb18c6d9e9dd8bebc1766ec5b9241e8762bdc0c3abb14f3e76fdd89fb1c0d2ec4bd3ef4e7623e06cc1bb10e7eb95dd87ee0faa4ec3b335635761b74247d3b0ca3d9755d85c517a60ec29b45fae7612992f163b0828b26edd8380b674cec175b2d6f (j - 7358) : ℤ) - 1000000000000
  else
    (digit 0x746a9bc2a23a36c960031d1c2275c4ae8e701f7da74767822baba3cb79fcfdd1f1991afee8feba587b748253e43e3a42a53171dd221027148e9166d095c748e2c101cba489099619d250578322e92e141caa7499fdaf91ba4e785c551d27f8c772ae945a9a64474a5c5cce1ba545aff9e1d2ae95799ce95d27bd3774b1817414ba5a3709885d2dd66bf44e974887d3774bd2db3b7ba600b01b99d30bf48874e98bc6081774c8c79d96ba65d5718e1d33a3323f6e9a2da874674d44c4778ba6b94e4779d36816f1f8e9b9c02d4474dfb8cbdcba7147e85b9d3959466fce9d071371474eb0a4ab33a76ed0dee1d3c2a00eb8e9e6e7edb374f63dea153a7c82e9101d3ef2e8efee9fd1ea786750150d6ffba82081129dd41b34aa94ea130fc9c7750c4046063a877b2186dd446a7440aea28b5c9ef75170974093a8cdab9ae1d4717b6080ea3e0b2f1b7521a9a6e73a92257dbd5d49ba62a7aea530a936c752c1e2e2dba975a16be1d4c51cf492ea67aea56a75366463c6ba9c7732fedd4edd53c2cea7bf22955754079aca53aa17b86675d515c4ac20ea8fcffa7d754a5b796d3aa665cacc9d53ce11f5aeaa3430c8f75540747193aab34c043dd56320a36eeab6466cd9755d7a9f9fbaafe72d73dd588797b16eac8d543927566b31a90bab47bdfe49d5ace220b6eadaead511756fae5db4bab8f1ac4cdd5d05148c2eaec82830275786a1da33abd476ededd5f2bde422eafd97cd957580e41e5c3ac17c0b929d6141f2278eb0e2654a275891a33d73ac58e6e6e1d6346c7470eb1e29d8c875910a42933ac97d8bcc9d6539d8ddeeb2d9e3c857598b2401fbacd4860a25d671aa67f2eb3c7f854475a01033a33ad0edf2c05d68e8b4334eb4ac9dc5d75a722365e3ad46d51131d6aa38a996eb5879901c75ade67425bad7c593e19d6c4ab704eeb658b14ad75b45b2bdebadaf5dd09dd6dddcb9c0eb71fb050775ba7eaff13addfd58385d6f5c5f736eb7dc623d275c04f66b7bae0db3b215d70c60eaa4eb88e95c3b75c5cbcae8bae38ec5b41d721a7a834eb9361c2c175caf26bfebae617424cdd7359497e8eb9d2c95f975cfc1ee953ae87405e5dd7482276fceba6473f4975d4390cc63aeaa470425d7594c595aebaeaf539275d85696803aeca7ec1a1d7690daad8ebb66293d975dc1971d4baee7def40dd77762307cebbd5eedda75df809b453af025faca9d78446098eebc3a27c9b75e28b26073af19f9b2ddd78fb5b0b4ebc92b88eb75e5383c45baf2ea68631d799adfcd8ebcdf889db75e7871f5a3af40606011d7a22c220eebd208252875e97728003af4f223561d7a92db256ebd5592f9e75eb07c6863af5ae7b7edd7aeb09e46ebd7eaad6b75ec3882f53af63ad579dd7b2b335b0ebd9bbd26675ed08fd333af69704381d7b5342816ebdacc024e75ed78ed20baf6c2e6ab1d7b632850eebdb1ad0fb75ed8822b03af6be67cfdd7b5adbca4ebdaa8028275ed3685f53af6897eb55d7b3a59f7cebd9738b4f75ec8417333af6242e835d7b01a5f04ebd77d903275eb70eedcbaf58e8679dd7ab0c8d72ebd4c6665d75e9fd3d98baf4c8a1f19d7a47d1db4ebd14e935c (j - 9830) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 224, crossSinc (7358 + j.val) = sincEntry (7358 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 224, crossSinc (9830 + j.val) = sincEntry (9830 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 7358 ≤ j) (hi : j ≤ 7581) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 7358, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 9830 ≤ j) (hi : j ≤ 10053) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 9830, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1941697918675265102165036231127685607338610711178 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (1177, 1294)) =
        1941697918675265102165036231127685607338610711178 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
