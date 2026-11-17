/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Twelfth retained run against the fifth

These are the original global rows 15678 through 15741 and columns 1610 through 1795.
Reuse the certified fifth-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [13883, 14131] and the sum window is [17289, 17537].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 14132 then
    (digit 0xe7ed5cd27b73f8951b7b39fd3ed32c5cff1a00918e7fca84f547400420ee63a0118d828dd0108c10fee80c2c05f374080aa4c43a050070eddd02fe2c9d8e81be41d87740feceeed3a08f4a58a9d04f9c6d60e82bccaf9a7417e6f8843a0cf47ac3dd06fb11b74e83be1c906741ff6c6743a10fef2521d09018dc0ae84c1f6af374281a57ee3a15130b205d0b0cba130e85c818bd074304fa6e6ba192fc18b5d0d1c14904e86d041858743894a899ba1d540fa39d0f2f19fbee87da2f4937440e74e083a217eed6d9d1145461bee88e59fcdd744945847fba25af51235d135e13d90e89f2506ee7451ad361cba29e42f76dd1578fd60ae8afffe2e2745a1c4a4d3a2e1c7bd49d17957c456e8c0e65c43746290a65aba325728a6dd19b309a16e8d1d43b1a746b082dee3a369327985d1bd11e376e8e2c544f9747380c395ba3acf69d7dd1def32948e8f3b53e08747bf8494e3a3f0ae05bdd200cbf324e9049fea1874846ca10a3a43447c26dd22293c98ae915810dad748cdbad36ba477b2e89dd2444237f6e926546f1074954351473a4bade9691d265cecf02e93715d75d749da17238ba4fdb9f7f1d287312688e947c1139274a5f3f71aba540344a11d2a860dfb2e95851f59974ae38c995ba5823ce001d2c955a71ee968c4555874b66dd6703a5c3c326e1d2ea0736ece9791411b974be910e15ba604b6a9f1d30a6d58d2e9893d11b574c6a06517ba6450716c1d32a7fe834e9993b455b74ce99d4b5ba684a44139d34a36d426e9a90aa6d474d67b5b5bba6c37e27bdd3698a2176e9b8a73b6774de42fd253a70184f725d38871ecb2e9c80d147974e5eec45bba73ea90ec1d3a6e66c1ce9d738508b74ed7cc1f73a77adb043dd3c4dff1a8e9e6251c3374f4eb0e193a7b60ba795d3e256ece8e9f4cfb31474fc37c886ba7f02c06d9d3ff43ecf2ea033460d07503611923ba8292d71f5d41b9fa242ea114f81f7750a6530693a861017e71d43762e09aea1f1d84f575114247daba8979a0b09d45286a0c6ea2c9aeaf87517f6a2783a8cce94345d46d04026cea39c448ce751e808d2f3a900e1a2fdd486d44dc2ea469647ca7524de5f49ba93375f9c1d49ff0f54cea530da696752b0e7ad9ba964996e29d4b853977cea5f273a0a75310f4d203a9943f812dd4cff60056ea6adfedfb7536df4ef73a9c25c1139d4e6d22b00ea7634c5ff753c7d05313a9eee35d5dd4fce2434eea8122de337541e700fc3aa19ca0831d51220a73aea8ba76bf775471be03f3aa43051ac9d52687e85aea95bfbea3754c1a4df33aa6a8a0785d53a12cd38ea9f6940397550e1027b3aa904eacbdd54cbc52b6eaa8a1760b75556ec3f83aab4495759d55e7fad4aeab16601627559c266993aad670c549d56f584a40eab9b4a017755ddacce7baaf6bc27f5d57f41d0eaeac18b2d287561b6e8133ab15232675d58e3823b2eac8e7a145756555b834bab319ddfbdd59c376138eacfc813577568b64c923ab4c24eca1d5a93be54cead62ab900756bd7c3dcbab64b161cdd5b54249deeadc0de70f756eb94c6a3ab7b3cd181d5c04767e8eae17011f275715a246dbab8fc14d4dd5ca48583aeae64fce1b7573b99a293aba239679dd5d3427440eaeaabd0637575d70c1c3abb2a03521d5db3356b6eaee82ee5f7577b1e92ebabc0f14e15d5e218dc4aeaf1d41eae757949b0d8babcd28cf89d5e7f1242eeaf49e7945757a9df3433abd7435c51d5ecba9098eaf6e137aa757bae51683abdf3e1dfdd5f073c738eaf89bb52b (j - 13883) : ℤ) - 1000000000000
  else
    (digit 0xe73bc19b74739d4ad55039ce5c06579ce70a1d8e6e73738288b739b12e91d39cd467b7e9ce68290050e733158d0d73990e8c69b9cc4ac9e35ce607f7a68e72f5adda573973e465339cb6933785ce59a749cae72c0915297395a2910439caa1f3b0dce53a23d04e72921145073943bd98fb9c9f53f71dce4e71ee0ae726a3a17a73930a7fd739c96345035ce4a17c1d4e72491687c73920ed66f39c8ec2c04dce4694e800e722eafa71739149228b39c89015619ce43ea5a74e721b0cd927390b99be8b9c84f1b48dce4218dd26e720e33d167390606cc1b9c82951259ce4120fde2e72082891a73903db1bdb9c81ec3995ce41031418e7208ed68973905179ecb9c82f78781ce41bf40cae721082f1473909bc6bf39c85b6ec61ce43556e78e721ee812b73911c8c03b9c8a29eb69ce45c55122e723419ffd7391d3afebb9c904f9ae9ce490e664ee7250143837392c10b0cb9c9826a461ce4d2ff52ce7272d088a7393e4686a39ca1ad44ddce52290eb6e729c470ce73953d858139cace14d41ce57f88de8e72cc6e3117396cc1257b9cb9c022e9ce5e9d1808e73033ab4673988fb18e39cc846c025ce66151ceae73409faaf739a87f87539cd871b4fdce6e5ed75ce73848e81b739cb46f28b9cea3d2805ce77784d86e73cef7012739f1490a9b9cfda4d739ce815f5166e741fc751973a1a7cafeb9d12a41901ce8c11815ce7476ebff673a46d7f5839d2935dd65ce978c48b0e74d44fff773a765023539d4154af2dcea3cce038e7537dcb4673aa8d9b8cb9d5afab539ceb0d04f08e75a179f4273ade686fc39d7621b3f5cebe936b20e76110e0d973b16ef3f3b9d92c30ecdcecd12da3ae76867dcee73b52605ecb9db0d7c9d9cedc4b1296e7701ac8c473b90ad49b39dd0588b85ceec385bd8e77827c26a73bd1c6c2bb9df13d9e59cefcd6cff0e7808cd13673c159cd7939e137ef2edcf0e225c10e78947e63b73c5c1ee5139e371421d1cf2016c1a6e79256dccf73ca53b9afb9e5bf46da1cf32af9772e79bb77b0e73cf0e100739e8216c531cf45e84a8ce7a567726973d3efc78539ea971c5c1cf59bc1f92e7af64603373d8f7ac5cb9ed1fbbd49cf6e2633c4e7b9abce3c73de24810fb9efbaaace5cf83217e46e7c43b336973e374fec0b9f26744b41cf98a8d158e7cf0ff45673e8e7d580b9f524e0735cfaeb6db94e7da2763f873ee7baca2b9f7f2d0a41cfc546294ee7e57ec44973f42f231239fad063b5dcfdc5125e4e7f11346f573fa00cfa8b9fdbce41a1cff3d21d1ce7fce20e0973ffef41873a00b798719d00bc33c98e808e82cac7405f90072ba03bfc3ba5d0241e953ae81522a7d7740c1c8d30ba06d4a57edd03cde1ca8e8218e771174125861e63a09f57a045d055fbaec2e82e2885327418aaf2773a0d217a7d1d06f710f30e83aedb124741f12aceb3a1057dd38dd08937eaeae847daceac74258df9cfba1397d5d69d0a349d9c6e854eca732742c1b3c9cba16e095789d0bda06016e8621ffa8e7432b8d41d3a1a314af59d0d834f046e86f717fd97439651ad53a1d89230fdd0f300ec76e87cdde63b74401e676aba20e748a65d10dfda820e88a61d5be7446e30d113a244ae4ecdd1292469cae897f9f028744db15bf1ba27b31f9f5d1446e6cace8a5a2d1ca745487a1993a2b1f1f38dd15fd4e25ce8b3591261745b6429633a2e8e09299d17b50f48ae8c11945e77462453ce63a31ff020cdd196dbc6b0e8cedffd7674692924633a35712de0dd1b26e77c4e8dca9c81a (j - 17289) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 249, crossSinc (13883 + j.val) = sincEntry (13883 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 249, crossSinc (17289 + j.val) = sincEntry (17289 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 13883 ≤ j) (hi : j ≤ 14131) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 13883, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 17289 ≤ j) (hi : j ≤ 17537) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 17289, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 2261251501896829297413388294735514224026319848126 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (1610, 1795)) =
        2261251501896829297413388294735514224026319848126 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
