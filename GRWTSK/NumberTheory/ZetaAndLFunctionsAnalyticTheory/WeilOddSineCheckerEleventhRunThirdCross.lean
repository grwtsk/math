/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Eleventh retained run against the third

These are the original global rows 13225 through 13271 and columns 666 through 853.
Reuse the certified third-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [12372, 12605] and the sum window is [13892, 14125].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 12606 then
    (digit 0x1cd7993026ae6bef5b6ee7360952d12b9b0d9d8985cd8b598e08e6c7fa7f51736528413339b32bb1d11cd9e2a898ce6d183f1a97369fd624439b59e6cf71cdb2016bfee6db8fc128736f1365b8b9b83172b3dcdc6d96a36e6e61b800b737469109bb9bae423859cddcad7800e6f124a02d7379fd17dbb9bdb5d7e61cdf3784954e6fca873aa737fce209b39c0a5e0735ce0b3453a0e708a42d827385dac08439c3b3861a5ce23dbcf20e71514e248738c217e2039c6de0a431ce3d68b842e721f788d77392a0d135b9ca24a6ff9ce57d4d126e72f48fb13739957232539cd868f3b1ce7319a318e73d05f6a773a042cf4f39d102eeed5ce8f308030e74b2b1dd973a7622377b9d498eb4e1ceac1284eee759b4f85773aeb3603539d847a30a1cec9b899e4e7689ff41073b634b958b9dc0e2e7b5cee81b7584e777e8661b73bde45663b9dfeb9fe09cf07339ddae7878a8b9673c5c052f9b9e3df03991cf26f96a68e797828a9873cdc6bf5739e7e760605cf4765060ce7a7cc731f73d5f5a0cc39ec03b78a1cf686e70e8e7b864400e73de4af23939f0330542dcf8a0d8260e7c945d82673e6c4a48fb9f47440cf1cfac39eb16e7da6d0f0973ef609f51b9f8c65ccc9cfceeb3700e7ebd5a64773f81cc11839fd2847751cff218cf7ae7fd7b4e647400f6e01a3a0198eae29d015b9fd66e80f59a7ed7409eccab4ba06172d531d039c5eb54e8216c448b7412fc47f63a0aa1f16edd05e33a7b4e833aea81f741c23182b3a0f38168f1d082fa270ce8461c49dc74255ef56dba13d879061d0a8104638e858b09566742ead94363a1881f266dd0cd6cccace86b66ebf974380ca3eb3a1d3359ce1d0f3066ec0e87e3aa58c744179cf773a21eb842cdd118d3d004e8912711fa744af2bddb3a26a944929d13ecb8586e8a4277a2d74547512c5ba2b6b6c775d164e4183ee8b7372149745dfe6f27ba3030cc085d18b14075ae8ca5145de74678c71cdba34f83272dd1b151caa4e8dd71231174711cb7f5ba39c06e2fdd1d793d4dae8f091f1d4747aacdde93a3e884d519d1fdd09622e903aeea1174843a7f94ba434e9dcedd223fe7e56e916c343e0748dc339213a48122dcf5d24a13ff7ce929ca38b6749744a78dba4cd1cbf91d27007901ce93cbf049a74a0bc69463a518c47bc1d295cfadace94f9ce75174aa281ebeba5640719f1d2bb62deeae9625f259574b3856b09ba5aed1b8a9d2e0b7b640e975010a4074bcd1f46f3a5f9119161d305c4d424e9877de77c74c60b6506ba642b3fd1dd32a80e96ae999d117ee74cf2f6b48ba68ba67929d34ee2b99ee9abf5ffe274d83bbaa83a6d3d6abc9d372e11d5ce9bde80e7574e12e0c23ba71b3268c1d396730490e9cfa2beb774ea041ed8ba761a7b5edd3b98f78cae9e12198d074f2bbb895ba7a724cfd5d3dc2d9f7ae9f260332074fb52a6673a7eb982e15d3fe44bc2aea035a335e7503c6bd29ba82ef087d5d41fcc32b8ea140b4fad750c15da113a8711cd81dd440bb8978ea246f4fb175143de336ba8b20c6225d4610a6b60ea34820da6751c3cc81eba8f1aeb589d480b0aa24ea443f7763752410823eba92ff3b281d49fa64042ea53a38f6b752bb715803a96ccb8de5d4bde35308ea62aa6de975332e90c2ba9a826d535d4db60349eea715041b0 (j - 12372) : ℤ) - 1000000000000
  else
    (digit 0x1d008c6c146e80846087f74061602f9ba040552621d02803876ee817f164ec740df20ec3ba07f677769d047a52c54e827ce36b07415e657cd3a0bf37c421d067a3d61ee837d88dba741df0e4833a0ffb633a1d087f79290e8480c6e0574260fb579ba140d2bf71d0a8985902e85865d098742e40c5e83a1827d3735d0c97e0c5ae868e0a4827436820c2c3a1c4a544cdd0eaa07d1ce87978cfdf743ed17a49ba2073a7041d10bf76b6ce88a2a30df74472cfe6eba24a2c23fdd12d7a891ae89af09ec8744f9283773a28d69b0e5d14f217bb6e8abc7eb057457fff1713a2d0e25269d170e3dea4e8bcabe22b7460732e21ba3148532d5d192b94536e8cd984d0b7468ea1d8d3a358416f71d1b4993cc2e8de88f1bb747162a27cba39c061cadd1d67b4ebee8ef7994a47479da9f043a3dfc24a71d1f85702dee90065f99274824ff50c3a423650851d21a23e136e91149e4c5748ac086d6ba466dd69b5d23bd9744ee922211bfb74932a37883a4aa1a8a39d25d6f4b48e932e76781749b8aebaeba4ed0b91c5d27edcfbf8e94398934474a3e089c93a52f9fb8d5d2a01a2508e954306fd974ac28faccba571c64cadd2c11e7000e964aad38f74b4622aac3a5b36eb381d2e1e19370e975039b7674bc8a08dcba5f48870add3025b54f8e98536ac6974c49e88daba6350328bdd322838b60e9953ff41a74cc9da2adba674cea5add34252209ce9a51b6a1374d485536a3a6b3dadaddd361bf13dee9b4c510bb74dc539db3ba6f217e929d380c27b92e9c438f65974e4068a3cba72f7622ddd39f548760e9d373360e74eb9c2845ba76be60fb9d3bd6d821ee9e26ff8d474f3128e19ba7a75870c9d3db05d3cae9f12b767474fa67d98a3a7e1be4435d3f816036ce9ffa1f67975019a30683a81b08c91dd41496b8faea0dcfd1217508a7c0fbba853298349d43080bf38ea1bb1704d750f8ec27aba88a123ed5d44bcd0584ea2943506375164d757c3a8bfb513c1d46674a1a2ea36820136751ce224673a8f4046979d48070d17eea436a26e175234b23e53a926f2fa4dd499bafce0ea4ff87aa6752986d34b3a95873d6cdd4b24cb714ea5c29cbbe752f939d053a9887a6901d4ca1fc096ea67fb002b75356ff6fdba9b6fa77b9d4e12e089cea73691580753b1a62ffba9e3e82989d4f771aeaeea7e7121a77540916f19baa0f3807e1d50ce50418ea8910539d7545d3b5fbbaa38df01f9d521828d64ea9343f42d754adfdf51baa60d26f99d5354503c2ea9d09669c754fb4a01cbaa870813d9d54827565eeaa65e295b755450bb05baaab761fc1d55a24abaceaaf3fd6a57558b300b13aace1334c9d56b3862a4eab7ac2520755cda500bbaaeed6673dd57b5e13faeabfa0e8757560c596943ab0db74099d58a91933aeac71c11d9756473d0a2bab2aadc1a5d598ceefdeeace1bb09c7567e409abbab45b26491d5a6127650ead49df2a6756b155c803ab5ebe1ee5d5b258b0e6eadaa124ef756e06f387bab75ca6351d5bd9e68c0eae023b3f47570b808f93ab8ad1236dd5c7e0a6a6eae5242c1d757327e70dbab9dccd149d5d11cb3ceeae9a13a20757555e831babaeb860e1d5d9501a90eaed99ab5b757741772fbabbd8f4975d5e078a70aeaf10c6e257578ea0f573abca4d86c5d5e69467c4eaf3f89217 (j - 13892) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 234, crossSinc (12372 + j.val) = sincEntry (12372 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 234, crossSinc (13892 + j.val) = sincEntry (13892 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 12372 ≤ j) (hi : j ≤ 12605) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 12372, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 13892 ≤ j) (hi : j ≤ 14125) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 13892, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 432771505440815688194021826180922529692901762218 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (666, 853)) =
        432771505440815688194021826180922529692901762218 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
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
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
