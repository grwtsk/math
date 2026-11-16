/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Ninth retained run against the fifth

These are the original global rows 6208 through 6270 and columns 1610 through 1795.
Reuse the certified fifth-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4413, 4660] and the sum window is [7819, 8066].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4661 then
    (digit 0x715721e69f38aa9dc0a81c54d84ee42e2a3263c36714fd1317cb8a70dbf089c531c83018e295a9c6af7149440bd338a3dfc68a1c5191dba1ae289b76ecd71437c6ebeb8a114cdb41c5038d1030e27f52de46713e7c22f3b89eadb2c95c4f11cf390e2767f5d36713a44c038389cab3b855c4e1d360bae26f3fd1227136d7ace9b89b0e14e05c4d5b58da6e26996bc107134361d8c3899d6d2d95c4ccc7e81ee265863bc47132611469389905f0471c4c70e1448e2631009047131596137b8989bcead1c4c48aeb72e26235770271311fa0d4389898b6185c4c5407af4e262f772db7131b43d023898fcd503dc4c930035ce26556832e7133176c39b899c8403f1c4d059f7bee26952c7cc7135493186389afaf2e01c4dabdfd44e26eebf9867138495c6c389c94ce371c4e85aeae2e276216a0d713c1788e0389e9599cc9c4f92ec94ae27ef203f37140b31f48b8a0fd03629c50d36d30ae2895c4ac271461b548c38a3ca9efe9c5246f74e6e2955e5b29714c4f2a2db8a6fde6f81c53ed44e5ae2a2f5eb4e71534d6e74b8aa963c101c55c60325ce2b2204b2b715b14bca338ae92e58b1c57d0d2848e2c2da65107163a37d3738b2f31155dc5a0d46d02e2d520be3b716cf7e63ab8b7b5d42d9c5c7ae744ce2e8ef778771770ffb9cb8bcda29ce9c5f192ea4ce2fe424e337181e98f9d38c25ef52b9c61e78b548e315149ccd718d82433db8c84300a7dc64e55f790e32d615c277199d786c6b8ce84fe5a5c68120119ee34723247071a6e69a50b8d52388565c6b6cba45ee362542e5e71b4ac8e6238dc1d20f85c6ef4c93b4e37eee547771c3264491b8e370333c5c72a96092ae39ceb146c71d250703ab8eb1b13169c7689a76cce3bc43909071e227973938f31bfdd49c7a94b9a36e3dcf0916371f2a812b3b8fb711a839c7ec9a7fd4e3feea87387203ce0feeb904187a5b1c832778646e422298bec721595912f390d10192f9c87ad261fae446a564bb7227fa6ea4391655dde85c8c59a20eae46c558421723af8575ab91fe79afc5c912bd2e8ee493310bdb724e8ad242b929c30ef41c9622957f2e4bb2ecef57262ad3f363933e5e4ef1c9b3cbcff4e4e44553f072775ad810b93e4db531dca079133ace50e6ad6fa728c8eb1ccb948f805b49ca5d658f04e539954c3e72a243bdadb953e24ab9dcab5346160e565ba624172b874ca72395f09e7689cb0ee8a288e592cf845472cf1c858eb96a6c2e6adcb6a6cc79ee5c0c9dd1a72e6357c71b9760662919cbc7aac842e5ef9e591c72fdba1dd13981d5b77a5cc268c23d6e61f41a96d7315a4bafeb98dd7523c9cc86f9e6e0e64fa84663732def8943b99a084a185cce8dcb08ee680c6725b734694a34739a665a928dcd4c1cb856e6b2903c89735f8e0a7939b2ec6d1bdcdb0a1d3b2e6e4f983e17378d5a88539bf9987eb9ce16537bfae717f5f9fe73926550c939cc69e09bdce7d18d44ee74b79262573ac36c1d8b9d95a53fadcee4d8afa8e77f76684773c643a6ff39e667b5649cf4d7996f8e7b3e0fc1573e08599cc39f38ecf87dcfb6e1cf58e7e8abfc2073faf623a1ba00cc65301d020f76056e81dca64fb74158ebf49ba0e1d320f1d08ba01a4ce8532f1870743048da903a1b7deb8a5d0f6c19cd4e888cce0b1744b1dd7dc3a28eb418a5d162415d3ae8be96739f7466070fd4ba3661df4a9d1ce04ad06e8f47e76087480fdd3013a43de6c2c1d239f0c092e92a777ef7749bfb6b70ba515d8c889d2a5eab5a6e960741b05 (j - 4413) : ℤ) - 1000000000000
  else
    (digit 0x74c0bf0b7dba5e8f881a1d2e5f63b0ee96bb52b2e74b23633213a57483aeddd2aba5b114e94e8249c874a397ae433a4ff68b7a1d27105b636e9312981557494e71eed3a489c4b7c9d23624dde8e913b21e3a7486282c95ba413b4f4c9d1fb11cf88e8f623765a74775e833b3a39d56d679d1bfdb42bce8d884e74774688dd277ba326c7dfb9d1848ffbc6e8baddd46c7459b9cc96ba2b025a729d1493ec7d6e89d35a536744ae625aaba2398dcfbdd10df6795ee87f93c33c743c16929f3a1c31e0161d0d2c5e460e861ff9867742d4ec84d3a14cf3e18dd097bbdab6e844808d14741e927a8dba0d72d0be5d05ce72860e8271e063f740fe55b4cba061e70ac1d022568fd2e809df63a574014b199db9fed3f4fe1cfe818c642e7eccbfdf173f2c760ccb9f79532cf9cfae3c6ff6e7cfeb24de73e45dd775b9f063fcc5dcf74d01c98e7b3441d6573d6121e9839e942229adcf3be24392e796de1fe973c7e7d0ae39e23170a95cf03814066e77ac0566573b9e280c539db33af779cecbbb4f12e75ef1daa273ac05b996b9d44aa3461ce949e887ee74379b468739e54fca2b9cd780b9c5ce5e38dee8e7285ed7bb7390d3c14fb9c6bda2d8dce28981a60e70da82318738385740939c01d1dc05cdf3c9d554e6f35c5db973766d7561b9b9982b0f9cdbfdb790ee6d98235e073698f193739b330730edcd8cda3a62e6c0203f21735ceda5de39ace797255cd5ad31644e6a73cf0b973508c5348b9a6bf31709cd29d2ce84e68edea3ea73446e4a3839a0b8d45a1ccf9e5e68ee6770b925d733896a36db99ad60a331cccb18a034e65fc9d48b732d0866e0b9951854ce9cc9d76f89ce6491f60317321c68af9b98f812d1f1cc710ca51ce6331206c77316d3f3cdb98a1202d65cc45e5104ee61da77404730c337263b984cc3c075cc1c0b5716e608e52c6c7301e7c3f9b97fb134c9dcbf38a45cce5f4d08be272f7f39151b97ac23ee19cbcc6c5578e5e16ec44872ee596e02397600a166dcba6bba91ae5cec4dc2972e51bd7cb39716d9871dcb82820b0ce5bcd7ad6c72dc3d35f1396d0a54c95cb5fc8ea82e5ababe41072d3bfd8a0b968d7fb939cb3e995906e59b45fcfb72cba5f84fb964d7a609dcb1efc0830e58baa44c972c3f1b52d39610a612f1cb00f94754e57cdcd6b072bca51692395d712d8a1cae499015ae56ee19b6d72b5c20a77b95a0cfee1dcac9e2baa6e561bc483a72af4a64f8b956debbfd9cab0dd8f24e555705dd772a93fdfd1b953e73e671ca99903062e54a01279c72a3a419f03951275231dca8400e3cae53f71ba97729e789700b94e9fb5c41ca703580f0e535c4f4b77299bebf08394c5119a39ca5e33700ae52cfd7c0d729577de04394a3c20471ca4dffa86ee5251dbe0e7291a5238e3948615de81ca3f9eaf42e51e27eeec728e47a28a3946c1585bdca33149634e5181e08fa728b6050da39455c86ed5ca2864fa60e51301cc1b7288f00718b94433523c9ca1f930346e50ed4bd4b7286f7805cb94346141f9ca18a161dee50b9826267285775a00b9429517885ca13924fd8e5094d148b7284701375394220986edca10678ee4e507f45a467283e20e19b941e8c3be1ca0f22682ae5078e8cd27283cd8d1b3941edb743dca0fc3abd4e5081c051c728432b55cb9422f81a69ca124bb0bae5099cdf617285118d643942ae225ddca16ba5432e50c10fb19728669fd5339436989ad1ca1d0ef9f0e50f77faeb72883bcee4b9446198a4dca25488c16e513d144b8 (j - 7819) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 248, crossSinc (4413 + j.val) = sincEntry (4413 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 248, crossSinc (7819 + j.val) = sincEntry (7819 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4413 ≤ j) (hi : j ≤ 4660) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4413, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 7819 ≤ j) (hi : j ≤ 8066) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 7819, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1759682064215452089116203379182242386277040723790 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (1610, 1795)) =
        1759682064215452089116203379182242386277040723790 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
