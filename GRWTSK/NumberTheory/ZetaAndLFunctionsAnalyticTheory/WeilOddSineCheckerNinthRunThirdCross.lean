/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Ninth retained run against the third

These are the original global rows 6208 through 6270 and columns 666 through 853.
Reuse the certified third-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [5355, 5604] and the sum window is [6875, 7124].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 5605 then
    (digit 0x1cf898d06b4e7ba4fc57373d7ee3e2039e95b34759cf3601e07ce79099017773c31a97bab9def569075cee2f51292e7672408c473ae69262539d4a15f625ce907b8c3ce73dfb4f977399df21b7b9ca61b2c41ce3eaa1fa4e715293af8738581badab9c038fa48dcded957c96e6ecb81e1d73715618bab9b629c8459cd9d522b5ae6c4b237ce735d6157fab9ac36a9a09cd4df4877ce69d21afd47349a8896ab9a262252e1ccff90baa6e676109462733630b0c0b998aebb0b9ccb23ab792e64f88d78f7322fec350b98f1ee3fe9cc660634eee629944cd1731017a6ceb985b510d41cc1b06a86ae6043ca67972fd80300f397c73a9c09cbd14f41bce5df8b734172eb3d21ca39735d0dc59cb88f2e5bee5bb8a1bdc72d9532b67b96a7392149cb420429a2e59841e08d72c7c6e7cd3961b98177dcafc954e2ce575bbd6cb72b69cdc2cb959311bbb9cab8b83b0ee55400e6ef72a5d976e1b950dc951b1ca767e7a44e53319c9e97295810e493948be15af1ca35f9339ee5130f0700728597dfa6b940d7b8df9c9f739284ee4f3e8f1a37276220e0a39392b8cd99c9ba4eae98e4d5afa740726723a140b931bb92059c97f49ad92e4b86b0d2b7258a084c7b92a89ba83dc94639990ae49c22ce90724a9c86c8392397e9aa5c90f2d6d7ee480de5a75723d1b5719b91ce7f3875c8da33ac32e466a4e1cb723020864ab9167b9c665c8a75a576ce44d7d55877223af84b2b9105498599c876aeeeb8e4356e64d37217cba189b90a748ac7dc8483e6b6ae41e7e7b4b720c780a093904dd05fcdc81c153d24e408b3bf487201b7c894b8ff8f8abf9c7f23f4690e3f414104071f78dc3eab8fa8d87ea9c7cac7da34e3e0a5053371edfcbe5e38f5d85a0b1c7a5b9b762e3ce6beb2c71e507551938f1714b02dc7831f0762e3bd6dc3d271dcafff67b8ed5991ae1c763015aa2e3adaf440f71d4f90e0bb8e99251905c74569a624e39f34d2c371cde4aa9cb8e61c9a835c72a604106e39202879171c774d6edb8e2f9686cdc711ece232e3861c29bd71c1ab6c7db8e029a2f71c6fc169e34e37b852f1871bc8a1bf3b8ddae1d519c6e8e3e53ee37240bb0a71b8126ca438db8795f25c6d85a814ce36a519da771b445bc1db8d9b6b65fdc6ca7f9476e363ba52df71b1253dc4b8d83c12ffdc6bf579764e35e7d01be71aeb1fa74b8d7182ae85c6b6e657fce35a9b7bc571acecd03038d64b67b95c6b12ef826e358173c5171abd671d838d5d61d7a9c6ae33ecc4e356f1682271ab6f66f038d5b88a7ddc6adf6fcd8e3572accef71abb80b6a38d5f2d7469c6b07940d2e358c3e10f71acb08f8238d6851679dc6b5bb2200e35bbcc34071ae58f79f38d76f44cedc6bdbc5a3ee360153a7b71b0b11c43b8d8b149091c6c87bf3b8e365ccb5e071b3b8aa04b8da4af3f65c6d5f848f4e36ce24cbe71b76f219038dc3c00711c6e62f04e8e37554bea671bbd3d7bab8de84136a5c6f91d235ce37f22739d71c0e5f59ab8e122bbf7dc70ebef15ee38a497c6071c6a478ab38e41773685c727100df0e396c792be71cd0e32ffb8e7619d5bdc7420b6ae0e3a49a1a0b71d421cb7ab8eb0087e39c75fab4dc0e3b3be1fa071dbddbe1738eef36ba55c77fe9511ce3c4305b7b71e4405c3538f3396c05dc7a2be65d0e3d5ed30f171ed47ccf9b8f7d197569c7c822d484e3e8f0af7271f6f20dafb8fcbae70b5c7f00e3f5ce3fd36936272013cf23bb901f43ff2dc81a77a3d4e412ba4711720c262595b9077c72755c847555cb4e42976e3b8 (j - 5355) : ℤ) - 1000000000000
  else
    (digit 0x1cb25a2f8aae58d79c20c72c4176148b960bc24fe1cafb7e9846e5789b00c172b9c1e3a8395b9e6d46dcad2f9be74e5648d5a9172afd59de8b956b5a5de1caac1f039ae551560ee472a655294db9520318275ca86f898bae53efa2918729d4304eb394d880059dca639044cae52d7e7f337294a194fe3949458d2c9ca41ef6222e51ce7b09b728c73224d39453cdf881ca221edc06e50d3a24e17284b9d98fb9416f0a399ca04272c4ee4fe7a0a96727d77cad6b93ddd11ab1c9e810592ae4f0ab56317276aee905b93a87eb9d1c9cde1f2fce4e3d1c100727061094a3937707ee61c9b5a31252e4d7f0c82a726a8fe2a0393497a333dc99f5a5602e4cd0babbe72653d0d593931fe20d21c98b0de15ce4c3256dd272606a02b1392fa4b0735c978c35a84e4ba40d1b1725c181c64392d8bfafe1c9687fe8dae4b2605b177258489451392bb4995e9c95a483398e4ab864d807254fc8420392a1f145c9c94e20607ae4a5b4ab84725234e4f4b928cbe4731c9440c1296e4a0ed3642724ff28f253927bb71ae5c93c0e694ae49d316ce0724e3639fbb926ee138ddc93629ff52e49a828c15724d007b7e39266410e7dc93260e9f6e498e18dc9724c51c84039261d9fd4dc930b4b860e4984f28c4724c2a733bb9261ae59b9c931267316e498cbd069724c8aadb239265bf6a45c933b69b86e49a57b489724d7287163926e0d66d9c938652bcee49cf2c142724ee1ed003927a977869c93f31968ae4a09c9ef07250d8ab253928b5bb8e9c9481ac6cee4a554b2337253566b5db92a057336dc9531f2052e4ab1a1bfb72565ab5afb92b985e48dc9603c7fa4e4b1ebb9b17259e4f062392d6e2bb31c96f703a8ce4b9c8256c725df4601bb92f8679969c980b72094e4c2adb63472628828043931e0d55bdc9940d7ba6e4cc9a805b72679f49f5b9347cbbc99c9a96f10dae4d78c55e1726d38a6af3937599920dc9c0d72156e4e380c6f0727352fe15b93a76c93ddc9da406b58e4f07522617279ecef77b93dd397bb5c9f5a52b66e4fe667659728104f9dc39416f401a5ca12ff1d8ee50d5190ec7288997c5b394548edf05ca32477edce51d3300dd7290a8b67a39495fbd159ca53770edae52e071664729930c894394db2b9dadca76861144e53fc9e40572a22fb448395240e140dca9b6c4fcae552773f7e72aba35ceeb9570921355cac2211c00e5660ac2bd72b5898818b95c0a58d1dcaea9b5162e57a7fcce772bfdfde1539614358a05cb14d15776e58fd1836e72caa3ea7db966b2e2e29cb40b92416e5a5fad33872d5d31ccbb96c57abdcdcb6e483dcce5bcf671d272e16ac8f23972305a255cb9d73be52e5d4bedeb072ed68280339783b86f51cbce305522e5ed4e647e72f9c858d7397e77be7f5cc00724a34e6069f1a8073068860bdb984e38048dcc342d80c8e620aae5f87313a52c34b98b7d3f851cc69557a4ce63b6b7b9e73211b8fa6b9924363759cc9fdd5962e656da6127732ee8482b39993447cc1ccd7b7e4f4e672f0eed2733d07fc5339a04e3d0f9cd10d78b6ee68fa85104734b773cf7b9a78f89069cd4b2e6600e6acf989f2735a32860db9aef667201cd86ae3bfee6cadd734f7369363f8239b68108e2dcdc3488658e6e94cc00e73787ebe18b9be2d965d1ce00ee7324e7083ffe247388084450b9c5fa2e985ce3f90e930e727af985b7397cf034fb9cde4e80e5ce7f208bc2e74793d82d73a7cf1bcd39d5ebd1209cebf8dbe4ae767e4e7a773b8049f07b9de0cf091dcf00c8a842e7889ad352 (j - 6875) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 250, crossSinc (5355 + j.val) = sincEntry (5355 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 250, crossSinc (6875 + j.val) = sincEntry (6875 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 5355 ≤ j) (hi : j ≤ 5604) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 5355, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 6875 ≤ j) (hi : j ≤ 7124) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 6875, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 586998276914750436544543335380520432601315590030 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (666, 853)) =
        586998276914750436544543335380520432601315590030 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (666, 853) = crossColumns :=
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
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
