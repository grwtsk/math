/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Exact diagonal subtotal of the third retained run

These are the original global cells 666 through 853 paired with themselves.
Use the existing certified third-run prices. The signed sinc entries on
[0, 187] and [1333, 1707] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The four row slices retain weight one on the diagonal,
two strictly below it, and zero strictly above it.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def thirdRun : Finset (Fin 32768) := Finset.Icc 666 853

private def rowSlice (b : Fin 4) : Finset (Fin 32768) :=
  Finset.Icc ⟨666 + 47 * b.val, by omega⟩ ⟨666 + 47 * b.val + 46, by omega⟩

private theorem rowSlices_cover : Finset.univ.biUnion rowSlice = thirdRun := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, thirdRun, rowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 4, 666 + 47 * b.val ≤ i.val ∧ i.val ≤ 666 + 47 * b.val + 46) ↔
    666 ≤ i.val ∧ i.val ≤ 853
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 4 := ⟨(i.val - 666) / 47, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem rowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 4))) rowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [rowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 188 then
    (digit 0xc39ecbf27361fccf7d5cb1150b5aa99895cece4f9c50879430262b11a86c0316eea40f258c29a8b069c66db63da8636326f3ca71c7a6a27f38eed36b2e5c7ce4f8b1e6412db2a5f721f33bb29b91a7311395c92a1263b764c01dd94c327584ebcef9457332628ca80cc9837e56ad5fcb332ca8dbc81b96fcd97c60cbd24c9aa36612eae26a731e41deba99997c1f77acd1e6186dee6b8442e4d7370952f7cd9c278bd959ce64db2b46e75ac9de8173c17bb979d9eabd7d57dcfa58a111b67fa644fabb410e9b726da1244821b5d0e03f84d9e896fc4117345ed394d01a39080869cd214cd9e6ee9307ad8c8b4ab2df29ffa5f0266fc7d343074945e9c6c9a785f4f5eda6a0fa842e0fbc0d46ac04c376a59d2acc6b53f07beb31aa88590b9cd58bcd515a6ae9805a95758671827a1acc0395264d6a603ed9e6b75bd995bb5cc2075419aeea2e6417d7b93aa847ebfe75cb9c36100a57d6bb105e6c467d8c54902486c8394d191f652252a56fb31312f519d9ca077d606d05070cc5f692672df4fb51165841cdac74fa31eed82b9638176d0c6e6b1db700931929dbbcfc0ba9edfc99442ef70d3b1d0a3b8e0528330dcaae86461ee7294a8a97747badf981bab05cc541dd90f1764e6ee49a1966b7803d84a99bc706d2319de6ef52c606f5298b09477b6baabc89be20412d66df44d299746fbc801d17f7eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3d3ea74d409e9c67fa076f4cbab25af7a59efc10abd26f74cc41e907490e64f46b35cdf67a2948abe33d0e6ddd7cde84150f56ef40764b93779f6f642bebcf5100d1e5e774c03802f3a04c92cf79c302f8403cdae323645e6a1c186c8f33602ec38798d79b1953cbfeca10e1e5c8815870f2c89e38df795665c45dbca4323ecc5e4e92de102f25835c9c0791dd2f46c3c87b9ec21de403f708c0f1e4e1c8c478e3cd71743c6a89ce339e3190e628af16ebb33eb78a861d4943c4ca83e8b1e228a721e4f0f5dbd83a786b9d1dc63c2e1bc9cc9e132f61074f07a5e4c74782d8cb1373c0eeb2e5d9e038318330effc5deb9a77ee3e547e3bef1d5afe9df38914f04ef7bf6cf3b77adc02bc0bbceb96d57dde344ebd28eef945c98d776c20b6b3bbadc6b079ddd2ba47f02ee74685f5077296ecd8bbb8c4c9b4fddc1ecea1a8eded7cc18576e5b99dd1bb6a52cf071db0e0a80fced64a1c6f176a110a71b3b47e1156a9d9f996ba78ecd9f6e573765b83b7b43b24ff5f315d8e1b31f8aec4d9c2b2d761522e929bb01b5c2449d7c6a0a7a4ebbfb2377d75cdfe9cc2bade0c77f75d6a8a161f2eb305a33ce75862777e53aba0bdb369d587f866c4ea9fb5cc40753dae6062ba95bc66addd464e9c898ea0de7282b74f4a478b53a7126b2e21d33fba84dee97b10e27374ab1b1c253a4c5374441d218b07486e8e75601c0746123dae1ba274b7938dd0f0123c20e852d9f0937416d076053a0217a81a1cfc6273bdee7bdc0753373cc32db89b9dcc0fd2f1ce9b377f44e7282da98273815d222e39b750889d5cd6f8baca2e69245f2b3733661854e3991cf6c519cc436cf448e5fc2df8df72eb5260a9b96c46d9e3dcb1724ffa4e5660a9e8772a0422c233946c010735c9eafde00ce4d000f7fc725543776eb921445a7e1c8bf41fd76e43a3642ae720a68e5ba38fbdd0bb21c7943c04f2e3a4cfdc6a71bfc5294738d6937eba5c66a36d712e30ff33a8671756aff0138b17113089c5417d7624e27bc5e0fb712b6d2a04b88c7f2a989c41a5af450e1e86d597370e1de6f29b867c727b31c2f51a61a2e1560f2a477098d1907eb843526aabdc1d206ba00e0c4d0cd7970505948c4381f2a4f9e9c0b16ad2fee034d7a7a170088846e2b7fb582c2a5bf939149c4dfa648fed66fc1712960b7d7e54d2a5be78c470cadf1949f1956f7b2679d1b7b4daf46f5bd614e3daade8dff6da26f35baa84b37924256789bc4d7836e6de048e26ec6ef14006d4377024982d9bb3d8b61acdd7d1a8e776eadc8c4dbb74e8acc975ba31d02fb4dcf7c8c9456e6b66eaacb72d7df29c9b92a8e6d1cdc74bca7476e2a2c54e9370d06f2bf5b8280d2e5adbf4199a5b6dea2ab00a36ed2e9cdcdb72a92be42db7602ad536dab7373e436cdfda5f15b632648c2adafa9a7b056d6e17df31b6af7ca5de9b53fc71a28da820325726d3228f327b691b41536db452fdeb70da0c5e4cfb6cf7b76f143674ac4b0bdb36c4b72dad999cd07a66cbed3cc0236586d7ac59b28bf101a0d92a6fd8826c878e386e363cffb1fadb1b22eb62cd8be66a7196c51f69404b6226ad6531b0df436b3ad855d0b7046c1e1c6b6bb608b6a36ddb0136ca722d7f0cc9f966bec0ef41fb5efeaa8d1daf4ee68b56d78f7843a76bbbdd085b35d80e47e31ae91ebc432d731f0c9826b8d952311b5c128b1e35addcb57900d6d85292ed6b61455bfa35ab40e5f7dad2f7b3c4ad682b935616b36fb63acb5965daf3d1ac8a72fc7ad6313f72616b0ec47fd4b58285a2df9abedd0f4c6d5e3ff2ff56ae8ad8774b56fbf1e425ab59c79e68d59b11715d6ac4c2df42355e10452f1aace87a244d5568e4fe16aa3107616b54d7f0010daa4c3fcacad5168cf3da6a83a1c177b53e10fa3bda9d31cf64ed4db238de36a6681ba35b52fcba0401a9634a09c2d4a46750426a4bbad9273522b41e49da8fcefe3bed4726c687d6a335713fc3516cf5e8d5a8a0355010d44545f92f6a1d5fda2a350c2207c31a84d3efba2d41d0614046a09de11f73502b07badda8042f68dcd3f9bdb40069f8da159db4fa7ed5b2da7c526e474d3db7cb7ed69ea5bb09234f390e97e1a790437ab6d3c251dd1669de6a1ce2b4edea41b75a765a0ed46d3ae4aba2f69d50c00b634e98e1ec49a74558a954d39f73ba8a69ce476beb34e67f759eda72f81be68d395d8198269ca21d5d8b4e4c0eeb55a72430d590d39181de2769c8a01b2cb4e454e4e15a72378292ad39279d73769c9c67becb4e53d646a9a72d677d2ed398c7974c69cd98999b34e77c2a1e9a7420c17f8d3a471715d69d419757ab4eb12a2769a76170bbb2d3b57c757869dd4b6efab4f001e8d1da78b9da032d3cbec6dcf69e9304240b4f64ac6beda7c0986d80d3e7c3dc0669f7c906dab4fdedb35a5a8006436e0d40903f6cb6a09162e963506ead2bd1a84b017670d42faca7bb6a1d178478b51141f57f5a8a06e0962d45bbc898e6a33cc2be2351cf2984c5a900a52cc4d48d30e6906a4d329fd1b529fbe38c1a96b9f7af0d4c405b76c6a6948b25335385cab1c5a9e152e980d50035a2376a880b8c123548136e209aa61b2c7eed541b9f9d96aa977ac1335591e56e31aaecafbec8d5888abdb36acd88e796356b7b3acb5ab8237cf86d5d49e99a56af43a6a1db57f279a65dac223654f4d625eae653 (j - 1333) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 188, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 375, diagonalSinc (1333 + j.val) = sincEntry (1333 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 1333 ≤ j) (hi : j ≤ 1707) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 1333, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then
    thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ thirdRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 666 ≤ i.val at hl
  change i.val ≤ 853 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
  have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

private def sliceTotal (b : Fin 4) : ℕ :=
  #[632825658666938523123337746303704153262894321536388,
    7372594753027265706020871702737187111388489541033562,
    16688346525189273962872628432854209444688821401384402,
    9885013129211156957356401649877393130534696834202157][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem rowSlice_checked (b : Fin 4) :
    triangleBlock diagonalPrice diagonalSinc (rowSlice b) thirdRun = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc thirdRun thirdRun = 34578780066094635149373239531772493839874902098156509 := by
  calc
    _ = ∑ b : Fin 4, triangleBlock diagonalPrice diagonalSinc (rowSlice b) thirdRun := by
      rw [← rowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion rowSlices_disjoint]
    _ = ∑ b : Fin 4, sliceTotal b := Finset.sum_congr rfl fun b _ => rowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact self-pair contribution of the third retained run in
`total_eq_retainedRunBlocks`. -/
theorem thirdRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (666, 853)) (retainedRunCells (666, 853)) =
        34578780066094635149373239531772493839874902098156509 := by
  have hcells : retainedRunCells (666, 853) = thirdRun :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hcells]
  refine Eq.trans ?_ diagonal_cached
  symm
  apply triangleBlock_congr
  · intro i hi
    rw [Finset.union_self] at hi
    exact diagonalPrice_eq i hi
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    have hd : Nat.dist i.val j.val < 188 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
