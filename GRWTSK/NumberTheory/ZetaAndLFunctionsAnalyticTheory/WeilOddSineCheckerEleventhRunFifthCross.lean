/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Eleventh retained run against the fifth

These are the original global rows 13225 through 13271 and columns 1610 through 1795.
Reuse the certified fifth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [11430, 11661] and the sum window is [14836, 15067].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 11662 then
    (digit 0x746bd5cf3f3a373211d49d1c3ca1222e8e701cf4974760f42c43a3c4ec5d75d1ecaee0a6e8fb737bf774804792ec3a416a96609d2158a050ae90fdf0c71748a7c316bba46843c52dd23e5146c6e9243f64b77494aa90713a4b9a70e11d266fa707ae9388f6ab4749ed023493a50abede19d28f7b5284e94cca078074a8ea5efe3a55b76e1e9d2b7c9c588e960ea28a974b2f6baffba5abbada91d2dfdbacfae974eac17574bcf2b1c13a5fb76a281d307a6f9a8e988c6cc2b74c6dbc15f3a64a9632b1d32f21ac40e99c794b5074d0af6c3cba69905a79dd35641d7d8e9affd4aeb74da6b39a7ba6e6b1463dd37cfda462e9c34de1c474e40cb6733a73385810dd3a34b5126e9d666329c74ed917599ba77f6efce5d3c9213744e9e9416d6c74f6f710d4ba7ca5a95e1d3ee75cc0ee9fbdad09875003b293cba81435642dd4133fa384ea0e2daa1f75095b67dcba85cecc0d9d43775729eea203558d17512557e4d3a8a46e4a71d45b0e11baea31ed4d74751b2727483a8eaa7e9c5d47e007edaea43510bef7523ce273aba92f87d659d4a043dff8ea545c2c68752c484cd7ba972fc9b01d4c1cf853cea650a5c6575349371a3ba9b4f51a35d4e29aeb32ea75575fe5753cad7a81ba9f5609275d5029dbceeea853f126e754494583bbaa342ea289d521cfd632ea94bd681e754c460808baa714f4da5d540294574eaa3ce6eb37553c0940f3aaacb2ff7dd55da24df2eab26e4e88755b0213e43aae64a9035d57a336998eac0994b93756208ad093ab1e074849d595d54afaeace4bc6587568d29364bab53dae449d5b080df2aeadb823cd4756f5e09b63ab87b79875d5ca2f4f8ceae8394b647575a9620ababb990145dd5e2da038eeaf46dada6757bb2fe28babe9578625d5fa7aa260eb001c3f497581794ffb3ac17019dfdd6110b1494eb0b41fce27586fad9f8bac42829121d6268585aceb15dc04af758c362f84bac6bcf1d01d63ae4659ceb1fe79756759129f54dbac92dc8a19d64e226a42eb2962189d7595d4e1a7bacb7a0aebdd6603a90b6eb32491014759a35bce13acda11f1c5d671281ea4eb3a9a29bb759e4b6194bacfa274cf5d680e6a37eeb4253369d75a214bcf43ad17d84f71d68f71f9b0eb49722d6275a590cf13bad331d1fe9d69cc647aceb4ff52adb75a8beab293ad4bee7ea5d6a8e000f0eb55da727c75ab9d77cd3ad6245c77dd6b3bbe6feeb5b206ed775ae2c6f353ad761cf391d6bd570a32eb5fc5b20575b06adf663ad876e9ae9d6c5aeca8aeb63c8f60a75b2582a66bad9635f5f9d6ccc0d868eb67291d2e75b3f3c66a3ada26ededdd6d28b3526eb69e5324975b53d3df3badac15d285d6d70c33aceb6bfc690d75b6342ffbbadb327f1b5d6da4278e8eb6d6e1e3875b6d85007badb7a301e1d6dc2cfc36eb6e39d7cd75b7296643badb9856dc1d6dccb07aceb6e5f453275b7274f92badb8ce45f1d6dc1c3856eb6dde3f5275b6d1fd9c3adb57d413dd6da207e66eb6cb6c8aa75b62976d0badaf92bcc9d6d6d81d3ceb6ae90d5175b52dd6703ada70fbc25d6d243ab6aeb687562f675b3df4c833ad9bf5e929d6cc6412a0eb655c48cf75b23e1dd4bad8e479399d6c53a8f76eb619e678475b04aa3e33ad7e07b0c1d6bcc8b136eb5d3c9108 (j - 11430) : ℤ) - 1000000000000
  else
    (digit 0x736e5fdf3ab9b747c065dcdbb0c4c5ae6ddf52ae0736f36071bb9b7bab3a79cdbee2d4b6e6dfffdf9b73704b163339b84d13aa5cdc3b4885ce6e2880aa373719ecfca39b8fec01c1cdc9805506e6e58d1aff737330e77939b9cf90d35cdd044e9c6e6e90e60657375010134b9babf55d89cdd800b74ce6ed0b0b6c73770eb166b9bbcdd7709cde0b1f04ae6f1822db37379597d04b9bcfad6299cdea5689d6e6f672ba1b737be0d9ac39be460aea9cdf4ec3beee6fbdb8509737ea42dc5b9bfaf27031ce007081f4e701bb44a87381a2d0a5b9c135d43e5ce0ce09b56e70810913d7384dc0ab739c2d9b4f7dce1a398c28e70ed9e57573884f15a639c49a64319ce28781deae716159ecb738bfb1c9139c67775acdce3798e03ce71dc1fde6738fdf3c38b9c8707602dce479829c2e725dd27087393fa833b39ca84eac21ce587218fee72e65228073984bf24ab9ccb4528b9ce6a229540e73757dd24739cd27c6d39cefe2531dce7ca54faae740b328d573a18d073e39d161d3da5ce8ff5c438e74a74bd0073a67a6b32b9d3dec91fdcea40f3adce7549a373573ab9973e039d67469381ceb8ecc8a4e75f211bb573b0e8e04ab9d92212185cece8950eae76a06d61173b6676330b9dbe71b9ddcee4df869ce77548b9cb73bc13a35eb9dec2d7b65cefbe9ed82e780e402fe73c1ec3c02b9e1b4928c9cf13a2db9ce78cd5d70b73c7efbd0339e4bb92b19cf2c047a7ee7991b454c73ce1cab5bb9e7d7194d5cf4508c8c8e7a5b147d073d4718178b9eb06624adcf5ea99b9ce7b294c41673daecaf9739ee48a48adcf78e0a024e7bfc28bd473e18c9c2739f19d1213dcf93a75d22e7cd375dbb73e84fa43339f502d8459cfaef73484e7daefe64b73ef341bc339f879200d1cfcac9650ee7e8e8c0a173f6384e4ab9fbff0e191cfe7170c00e7f71e774f73fd5a7f1239ff93c3111d003d926cee8058d8536740498e9a5ba03365bcc9d0210894d6e814325667740bf1c2453a06e5f18add03e9e192ae82309490574136336563a0aa19a2c5d05c925c58e8320eae2b741aeb6cd83a0e68686c9d07addee3ce8413ecad574228886d7ba12396c1d9d0997947dee85095d8d2742a389fe7ba1613b262dd0b85ccd48e8601007ad7431f9ce993a19f645eddd0d780cf6ce86fa97da37439ca24f4ba1de02f3b5d0f6dd8e16e87f5e58997441a7b0f43a21d074d05d1166b39cce88f2aaf147449907d013a25c61b791d13621f5c8e89f0a912c745182906f3a29c026865d155f9d9f0e8aefa099074597beffb3a2dbd980ddd175eaf4c2e8bef51e7d74617a9e48ba31bd71285d195ed4d5ee8cef7d2bb74697c9c623a35beb2315d1b5f8e576e8defe26a174717fea37ba39c05b081d1d605bb58e8ef04190d747982871eba3dc16b4d9d1f60bcbe4e8ff05a86d7481827252ba41c0e2a65d216031492e90efed3b774897dab74ba45bdc0f99d235e39572e91eeb9b6e749172330b3a49b706b19d255a5532ce92ec802a074995e0b03ba4dabb4fb5d2754058fce93e900fe874a13f372f3a519ace06dd294acbabae94e3fce6974a913bdc63a55835545dd2b3e296c6e95dd34ecf74b0d9a7e23a59644fac1d2d2da1810e96d46a84b74b88f02003a5d3cc3ed9d2f18b7808e97c95f98c (j - 14836) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 232, crossSinc (11430 + j.val) = sincEntry (11430 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 232, crossSinc (14836 + j.val) = sincEntry (14836 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 11430 ≤ j) (hi : j ≤ 11661) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 11430, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 14836 ≤ j) (hi : j ≤ 15067) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 14836, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1147499574201466175782328374614992543149327155104 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (1610, 1795)) =
        1147499574201466175782328374614992543149327155104 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
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
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
