/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Eighth retained run against the fourth

These are the original global rows 5271 through 5331 and columns 1177 through 1294.
Reuse the certified fourth-run and eighth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3977, 4154] and the sum window is [6449, 6626].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 5271 5331
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4155 then
    (digit 0x1de03eaa48aeefafda7a57779f6431a3bbb3081c15ddcafc872ceede2155ca776b55abf73bb3c7192d5dd8ee92e72eebfb40afb775bed6df03babfa498d5dd4fbe0d54ee9fbc9a57774bc0ff5abba3cbd468ddd0d8962c6ee7e423c9a773ad40928bb9b3d947c9dcc85a3692ee5b4c8e8477292a6619bb92517d50ddc80405608ee36e38f267716c821db3b89099ac89dc354c5066ee110f9e137703b178233b7f6810ac1dbe78f731cede9d9797b76efead3b63b756f1a2bddb971bc5e0edc14a3c3076db78cd66bb6b21095e9db44040686ed976b5b8d76c6602b083b608046b7ddaee5ba4baed6c46a54676b0a5de553b558f507a9da9636bd7aed3fe63d2b769a4f03c7bb4a50ba255da3baa1670ed12549ac6768360e16d3b3ec72bd79d9decb1918ece39c86eb766be0e5a63b32f561b41d97fafcdc2ecb3c919357653d4a5e63b26de2b3b9d91e6ed65eec82e5b569763b41dd5e3b1a846aa49d8bb1f6932ec50fe08c476222e6ba6bb0deb142b9d855d94b52ec1e1e073d7608a053583b01152d619d7eeb4cb06ebea51e8ac75ee9db8a1baf405cc72dd785caba02ebb5a625e075d42cdfcfbae6c0176b9d71b346776eb802775aa75b9542bccbad94743775d6af0b9a08eb49e2c9cf759e1a1c9cbacb9e941b9d6416a899ceb12e54bf07582854dcbbabdc95a6f9d5d26bd918eadb3c5a5a75669c74d7baafcaf4505d5622a8fe6eaa2f584d5754a665f913aa1a6cb901d4f0c2137eea6a1e8959752de9f2783a936055231d47e4e20baea30c550ba75112e270e3a84fb1048dd40aeac520e9f6f7eb4874f43a0a283a767a85b39d396b45812e9bcc48d6674d714ba333a67e246ab1d321c773e2e982398c0f74b9c5657c3a5935ec2d9d2ac40eedce94765595d749c53486aba4a79160fdd2363dd434e90c5680f7747ec5abbeba3baf6a18dd1bfdb5ce6e8d11ba488746123e2c53a2cdc931cdd14936e892e895c37820744375498c3a1e0440169d0d26df638e85a5cbe9c7425c14310ba0f2a233e5d05b9e1cf2e81ef645fb74080f376f3a0051f1215cfe4e504ace7e39ee3b873ea66920ab9f17f5fb59cf6e605ec4e7a865712073cccebfb9b9e2b6256f5cef82ddeb2e76d58c79c73af4f2cec39d3f9f8551ce826b32a4e73287bd087391ef43d239c54e8d125ce0d35fc18e6f8011ff87374b66a84b9b6b7960b1cd98abc87ee6bdd3b40f7357ac012bb9a838c2709cd24ea09cae6840e2e43733ad760243999d5bd531ccb20e0f1ce64abf3137 (j - 3977) : ℤ) - 1000000000000
  else
    (digit 0x1daa268edcced50b5474476a8120e70bb53e03e275da9d97b742ed4e04c75d76a695dec4bb531030099da9687a2f4ed4a34f41776a48a1569bb51f85e33dda8d39c2e0ed4546686676a1ef08d3bb5098f85cdda81afb89ced3f3a0707769ec533593b4ef2402adda73ebb52eed3810fa62769b0d331ebb4d0489289da63f078a4ed2fccb4557696c7c9fcbb4ad038b55da51c1518aed266eedec7691f5dd59bb4855c5f2dda3d621c52ed1bf9a70b768c9875f9bb4595b9aa9da26d7427eed106f26047686b0bfcabb4290ae341da0e25b9b2ed03d1f71a76804009a13b3f474f50dd9f35302aaecf624ebf5767947c4f1bb3bba5a091d9d6652800ece76b1b047671c9857fbb37ea9c811d9b762bcd4ecd7a7deca7669c70100bb33d8f5cadd99652db56ecc6ded5247661420ebcbb2f8655b45d9733d232aecb513de6c76583ca7213b2af3bc901d94e29b7a4eca24b1ca2764eb8e34ebb26223afb1d927213df2ec8e88f26f7644b8fc9b3b2112f19d1d8fe2cdb1aec79d20227763a3f4c103b1bc710e61d8d35631d4ec642b2caf762f4e49ddbb163fd8c7dd8a6a76050ec4d99905f7623e88cc4bb107e9868dd8782afdd0ec362287cc761810c97e3b0a84add81d847ec1832ec1dcba881760bc9d215bb045385b81d815f6314aec049ac1b375ff16953e3afdec9aea1d7e2553c2cebea95dadb75f1fa1da0baf75176329d7ad159a52ebcfc3324875e4779122baf083addc9d7764418a8ebb4293ba275d69230243ae984e5589d73dedec7ceb97ce9e5e75c84d54b93ae256ccd71d70420b058eb7aba342675b9ac71dcbadafb20e15d6c8ea60b2eb5cf3073075aab3129a3ad373a9eedd68c595894eb3e80508f759b64d9333acbc23bf5dd64e7c4e24eb1f697673758bc57e40bac3e8b5fadd60f624f14eaffb60a5f757bd8cfc93abbe9019d5d5cf1abd00eadf6dc751756ba2b056bab3c5129f9d58db549a8eabe988fe4755b2716033aab7ee66d9d54b41f328ea9d3e6c63754a6a09833aa31883a15d507d1000eea7b6788d475396fa52aba9a93f9845d4c372fb62ea591c32fa75283c13e8ba91f35f8e1d47e38b09aea3664d84d7516d390473a8938d4e15d438332780ea134a03e775053a635eba80667fc79d3f173a000e9efd45c7074f374e3c93a777e8d291d3aa0b8df2e9cc0ca1fa74e1877493ba6e8330049d3620c94cce9a7fbabde74cf7684263a6576a0e45d319888348e983aa668b74bd468b2fba5c5b1d525d2d0914f06e95f21d154 (j - 6449) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 178, crossSinc (3977 + j.val) = sincEntry (3977 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 178, crossSinc (6449 + j.val) = sincEntry (6449 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3977 ≤ j) (hi : j ≤ 4154) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3977, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 6449 ≤ j) (hi : j ≤ 6626) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 6449, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 310707795416493845928254094357729540166706019450 := by
  decide +kernel

/-- The exact lower cross contribution of the eighth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem eighthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (1177, 1294)) =
        310707795416493845928254094357729540166706019450 := by
  have hrows : retainedRunCells (5271, 5331) = crossRows :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
