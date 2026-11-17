/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Thirteenth retained run against the fourth

These are the original global rows 20236 through 20275 and columns 1177 through 1294.
Reuse the certified fourth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [18942, 19098] and the sum window is [21414, 21570].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 19099 then
    (digit 0xe74542722973a2a91accb9d15a0db51ce8b08eb5ae745a6f1de73a2e7d583b9d17fa82c1ce8c67a492e7466f3f2773a358734439d1be31e41ce8e8dc294e7479b32a873a3fadd4239d2159de79ce917ad13ce7492a8c1373a4cef039b9d285d906dce952e2aa0e74b1cf23d73a5d47c7b39d30ec9dd1ce99a6f732e74d71f32e73a70b45f1b9d3b050d45ce9ee42dece75029043973a8730434b9d46a482edcea4e49498e75341822273aa0b629539d53c840e1ceaba6c010e756bab13f73abd40034b9d626d27e5ceb3291496e75a93bda573adcc7018b9d728fb815cebb69c638e75ecbbb5c73aff4394939d842c11cdcec466d93ae76361a69773b24ad6e8b9d973df685cece1e2292e7685463f273b4cfb85739dabc0c9e5ced88d486ee76da2c0b573b782415539dc1af92d9cee3b1c2c4e7734b732173ba61ca27b9dd904fcc5ceef88dbf2e7794d1abd73bd6d9fc1b9df1bb58ddcefc0fb160e77fa640b073c0a503f139e0bcc9f71cf0943343ee78655581573c4072d8a39e27327175cf17202a36e78d58be6373c793489c39e43e61a15cf25a32e42e794aebbd173cb4876a1b9e61e09041cf34c8b17ce79c5583c073cf25ceb939e811a787dcf448cfbf8e7a44b352c73d32a5dde39ea18c26a5cf54ec2db6e7ac8ddb2473d7552724b9ec32d9fd9cf65e23f8ee7b51b6d4773dba523f539ee5f69c59cf776b0438e7bdf1d03b73e019445139f09de89b1cf89822946e7c70ed63e73e4b06f1339f2edc8cbdcf9c23383ce7d0703fa673e9698234b9f54e783e5cfaf4997aee7da13bb7373ee435316b9f7bf60955cfc2f08c58e7e3f6e7e073f33caec9b9fa3fe7555cfd7133a50e7ee1752fc73f8545a5b39fccf6e0a9cfebaca636e7f8727b4273fd89132339ff6d52701d000b7b678e80305d0387402d98f11ba0218ee981d0162f3486e80dceb3137408447d053a04d199155d02c0dce2ae818ca775c740dc885193a0796a5245d0424e16d2e823f6639a74136448feba0a6762d6dd058ea88ece82f4fb1ff74191664513a0d431f3f1d06fdd8742e83ad39118741edd6cf13a1029249c5d087215e60e8467f247f7424b7f35b3a1318ba87dd09eb04602e8524f8594 (j - 18942) : ℤ) - 1000000000000
  else
    (digit 0xe794b18b4d73c9c153d739e496305d9cf2267bad6e79014003d73c77c974639e378db385cf19a57f66e78bc72b6173c5605a1db9e26fd79e1cf11865c7ce787cc279c73c36d2746b9e17b69be5cf0a0c6964e78423fb7673c1a37f75b9e09bd0aa1cf03399454e780cf98db73c003d90839dfd146429cefd0fa1e2e77dcfdcdd73be8e9fe6b9df1bff2b1cef7902ca0e77b258f7973bd44356939de7c2abbdcef2bca4a2e778d1636373bc24f03c39ddf1f2f3dceee964f26e776d3f5d773bb311c4c39dd7d7c701ceeb1e463ee7752dce7373ba68fab139dd1ee65f9cee8557880e773df5f0f73b9ccc19c39dcd64a7d5cee63ca8d0e772e9039f73b95c9c48b9dca3bd079cee4d46e22e7724b021e73b918aaf2b9dc874cbb5cee41d3352e772058a7573b90102cbb9dc8102cf9cee417370ae77218b66f73b915adf539dc90e2f2dcee4c28bace7728489b373b956ab7cb9dcb6eb495cee61f1740e77348f1bd73b9c3ef5bb9dcf3146d1cee82c9388e77465c5e273ba5d627839dd45516f5ceeaea8dfee775dac75a73bb22e2abb9ddad8fdb1ceee5867f4e777a7a14973bc1442c739de2bb7b99cef27556b2e779cbe8d973bd314aa1b9debfab971cef74063ace77c471d4c73be79b721b9df69488a9cefcb86cb8e77f18a81d73bfed3a4e39e028663cdcf02dc244ae7823fdd2273c18b7b61b9e0fcd6f31cf09aa11d6e785bbfaba73c35416df39e1e667999cf11209216e7898c29f573c5469ea8b9e2e4dfcf5cf193dd77ee78daf7ec973c7629a1bb9e3f801f4dcf21ffeaa0e79224f84f73c9a7862cb9e51f8b399cf2b64aab0e796eb80fd73cc14d587b9e65b33ad1cf3569cdfce79c01eeeb73cea9f0b2b9e7aaae509cf400ce28ae7a167041c73d166363239e90da9291cf4b4b4ea2e7a7196ecc73d448fab139ea83cd541cf5722517ae7ad17c9be73d751892ab9ec0cbf1c5cf638f03e0e7b3609c9a73da7f2314b9eda81e105cf708e58ece7b9f25c4773ddd1009239ef55851a9cf7e1d1ec4e7c0cb6b4873e14650a0b9f1148a991cf8c37ff6ae7c7ea1a2773e4de394e39f2e4c0791cf9adb817ee7cf4ca7dc73e897d7ecb9f4c5b450dcfaa04092ce7d6f1423f (j - 21414) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 157, crossSinc (18942 + j.val) = sincEntry (18942 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 157, crossSinc (21414 + j.val) = sincEntry (21414 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 18942 ≤ j) (hi : j ≤ 19098) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 18942, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 21414 ≤ j) (hi : j ≤ 21570) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 21414, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 40307709659412134739461069967977709028580897848 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (1177, 1294)) =
        40307709659412134739461069967977709028580897848 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
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
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
