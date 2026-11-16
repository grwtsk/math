/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Tenth retained run against the third

These are the original global rows 8652 through 8758 and columns 666 through 853.
Reuse the certified third-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [7799, 8092] and the sum window is [9319, 9612].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 8093 then
    (digit 0x1d470c81458ea319a08d175156512bcba88fd1ec09d43a3248c2ea16383ca77507a8ef7cba821989a55d402ea5da4e9fa7f131b74f9c1f7793a7b20f77bdd3cafdf782e9de75642a74ebb39980ba7415210c9d3927ae776e9c2221daf74dd814f19ba6cf7c45f9d3596f27b6e9a58c41a574cf2e9ba3ba65caa44fdd31fe8d834e988bae47474c0bf0b7dba5e8f881a1d2e5f63b0ee96bb52b2e74b23633213a57483aeddd2aba5b114e94e8249c874a397ae433a4ff68b7a1d27105b636e9312981557494e71eed3a489c4b7c9d23624dde8e913b21e3a7486282c95ba413b4f4c9d1fb11cf88e8f623765a74775e833b3a39d56d679d1bfdb42bce8d884e74774688dd277ba326c7dfb9d1848ffbc6e8baddd46c7459b9cc96ba2b025a729d1493ec7d6e89d35a536744ae625aaba2398dcfbdd10df6795ee87f93c33c743c16929f3a1c31e0161d0d2c5e460e861ff9867742d4ec84d3a14cf3e18dd097bbdab6e844808d14741e927a8dba0d72d0be5d05ce72860e8271e063f740fe55b4cba061e70ac1d022568fd2e809df63a574014b199db9fed3f4fe1cfe818c642e7eccbfdf173f2c760ccb9f79532cf9cfae3c6ff6e7cfeb24de73e45dd775b9f063fcc5dcf74d01c98e7b3441d6573d6121e9839e942229adcf3be24392e796de1fe973c7e7d0ae39e23170a95cf03814066e77ac0566573b9e280c539db33af779cecbbb4f12e75ef1daa273ac05b996b9d44aa3461ce949e887ee74379b468739e54fca2b9cd780b9c5ce5e38dee8e7285ed7bb7390d3c14fb9c6bda2d8dce28981a60e70da82318738385740939c01d1dc05cdf3c9d554e6f35c5db973766d7561b9b9982b0f9cdbfdb790ee6d98235e073698f193739b330730edcd8cda3a62e6c0203f21735ceda5de39ace797255cd5ad31644e6a73cf0b973508c5348b9a6bf31709cd29d2ce84e68edea3ea73446e4a3839a0b8d45a1ccf9e5e68ee6770b925d733896a36db99ad60a331cccb18a034e65fc9d48b732d0866e0b9951854ce9cc9d76f89ce6491f60317321c68af9b98f812d1f1cc710ca51ce6331206c77316d3f3cdb98a1202d65cc45e5104ee61da77404730c337263b984cc3c075cc1c0b5716e608e52c6c7301e7c3f9b97fb134c9dcbf38a45cce5f4d08be272f7f39151b97ac23ee19cbcc6c5578e5e16ec44872ee596e02397600a166dcba6bba91ae5cec4dc2972e51bd7cb39716d9871dcb82820b0ce5bcd7ad6c72dc3d35f1396d0a54c95cb5fc8ea82e5ababe41072d3bfd8a0b968d7fb939cb3e995906e59b45fcfb72cba5f84fb964d7a609dcb1efc0830e58baa44c972c3f1b52d39610a612f1cb00f94754e57cdcd6b072bca51692395d712d8a1cae499015ae56ee19b6d72b5c20a77b95a0cfee1dcac9e2baa6e561bc483a72af4a64f8b956debbfd9cab0dd8f24e555705dd772a93fdfd1b953e73e671ca99903062e54a01279c72a3a419f03951275231dca8400e3cae53f71ba97729e789700b94e9fb5c41ca703580f0e535c4f4b77299bebf08394c5119a39ca5e33700ae52cfd7c0d729577de04394a3c20471ca4dffa86ee5251dbe0e7291a5238e3948615de81ca3f9eaf42e51e27eeec728e47a28a3946c1585bdca33149634e5181e08fa728b6050da39455c86ed5ca2864fa60e51301cc1b7288f00718b94433523c9ca1f930346e50ed4bd4b7286f7805cb94346141f9ca18a161dee50b9826267285775a00b9429517885ca13924fd8e5094d148b7284701375394220986edca10678ee4e507f45a467283e20e19b941e8c3be1ca0f22682ae5078e8cd27283cd8d1b3941edb743dca0fc3abd4e5081c051c728432b55cb9422f81a69ca124bb0bae5099cdf617285118d643942ae225ddca16ba5432e50c10fb19728669fd5339436989ad1ca1d0ef9f0e50f77faeb72883bcee4b9446198a4dca25488c16e513d144b8728a86ad71b9459621265ca2f657b58e5191c01af728d4a25fd394706e5ea9ca3b63bf38e51f571e74729085a74d3948b39a8d9ca4940d674e526814b567294388201b94a9be39edca58f9c77ee52e98fc91729861e8bdb94cbf56b25ca6a8b211ce5379c6aa1 (j - 7799) : ℤ) - 1000000000000
  else
    (digit 0x1cfcd6119dce7e0c178f673ed6af1db39f53b79431cf9e13298ae7c9290aa473e1a62f2eb9ef5ce9e59cf6f3dfbcee7b1ce78d773d60117f039e98e8e9adcf40ed5fa4e79ab7a75d73ca7e9c2339e3d1de6c9cf132d0570e783ea6a5a73bf21a3c5b9de284c4a5cee6087c02e76d6c84ca73b3ed0e14b9d89346ac1ceb98b2db6e75743a71073a8e3b0d239d3143734dce8dc05d88e741756d89739e08578e39cdac82585ce62b32448e72c075f1b73935dc2f139c85d86ffdce386e6dbce716feebd27388e6a80b39c3289e329ce0efcf5e8e702616b82737ea5afa2b9be0f1abd1cde6694654e6ee341c6773749d7588b9b91248db9cdbebdb354e6da7c21d4736ad087eeb9b4336de61cd9804597ae6c73e82e273614166c0b9af73c7fd5cd72471af2e6b480292a7357f2830239aad48db91cd4d8f9d0ce6a245df86734ee63e2f39a656edda5cd29e745bce6909450d473461ee99fb9a1fc0efc5cd07573936e67f7006c7733d9ec5f0b99dc50f4b1cce5e8579ae66edd68c073356802703999b304389ccc5a33aace65ee0baa7732d7cbc8eb995c6fa35dcca690339ee64f7e1bda7325deff52b99201f46e9cc88b748ece640b98615731e90c2d3b98e64ec861cc6c203450e63296cc74731793ebb6398af0d2569cc50d260bee625199a717310ea4ab03987a68bb41cc36d4e876e6184572f3730a959c0fb98486f42f1cc1e2e9336e60c1daf637304978748b98192dcdd9cc06e5d46ee600a57ecf72fef19e85397ecb0c235cbf100c998e5f5dfe51272f9a55e3db97c303d7ddcbdc853898e5ebcfba0d72f4b42cd33979c321545cbc9788e3ae5e277a8e972f01f5a34b977845cc81cbb7dfdcc8e5d9da2f5e72ebe81f82b9757489891cba7bfdab0e5d1f99d0b72e80f9ebe39739435ae1cb991ce13ce5cad812dd72e496e27a3971e3e38cdcb8bfaeb72e5c477827672e17edd94b9706409989cb805d94fce5bed9adad72dec86af5b96f1512415cb76481930e5ba00260e72dc744d50b96df75bd69cb6dbd5224e5b5ec4c6d72da832ef1396d0b386d5cb66bfb7ece5b29f508772d8f5a18b396c50edc81cb61515fe4e5b01a30a372d7cc1e0eb96bc8b544dcb5d73fc14e5ae5db95372d7070486b96b72bbc99cb5b28daaee5ad6a852b72d6a69bfbb96b4f21b7dcb5a70e5a8e5ad40fc9872d6ab125ab96b5dfae19cb5b4ca26ae5ade155b672d7147c66396b9f4e821cb5dbc3192e5af4b943a72d7e2d5aab96c1317381cb61bf4ee0e5b17f896772d916007a396cb943055cb67555128e5b47cd40a72daadc5eeb96d91b3505cb6e7d2a6ee5b842e08e72dca9d5f2396e9c3ce91cb7735680ce5bcd0e91172df09c74d396fd8a810dcb817c32fee5c225f58b72e1cd17bab97146b0865cb8d4f5040e5c840dc0472e4f32c05b972e605929cb9aac214ae5cf2040d172e87b50273974b64a1b5cba98fa49ce5d6c296e172ec64b7713976b714b81cbb9f6766ee5df26201472f0ae7cb9b978e7efc81cbcbdcd16ee5e848eda372f557a290397b48598edcbdf3e8fa2e5f228e08d72fa5f1377b97dd7c4511cbf4172b58e5fcc3aa1872ffc3a22539809596751cc0a61c038e60816cc5873058409c83983812aa79cc22190c5ee6141f9ac2730b9eee54398699d0015cc3b3771a0e620db3ad2731212dcd53989deca31dcc55b6f6dae62e46a4b57318de4bc5398d4f51ab1cc7191495ee63c5ea3fe731fff9b6a3990ea93d15cc8ebfbe72e64b1fd86d732775163a3994afb32d9ccad3b54e4e65a86b6be732f3cf14239989dc7a1dccccfcb6bee66a8f897e7337554c95399cb3dea0dccedfc3b02e67b3671f1733fbc33bf39a0f0fb695cd1031e784e68c77690573486f9e3db9a55417421cd339572d8e69e4e404173516d6ffd39a9dc21b95cd581e4656e6b0b6a2d2735ab379dc39ae8800e6dcd7dc38022e6c3ac168f73643f7a3339b35691b09cda47bf560e6d729fd17736e0f1d5eb9b846a8119cdcc3e3468e6eb2b94e973781ffe52b9bd570f619cdf5008716e6ffabfa9373826fa72eb9c2868aa1dce1eb8f524e714a629de738cfb91d739c7d3d4c9dce495d469ae72a14ff0b (j - 9319) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 294, crossSinc (7799 + j.val) = sincEntry (7799 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 294, crossSinc (9319 + j.val) = sincEntry (9319 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 7799 ≤ j) (hi : j ≤ 8092) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 7799, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 9319 ≤ j) (hi : j ≤ 9612) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 9319, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 3197099236284404402469545626464432235729544909716 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (666, 853)) =
        3197099236284404402469545626464432235729544909716 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
