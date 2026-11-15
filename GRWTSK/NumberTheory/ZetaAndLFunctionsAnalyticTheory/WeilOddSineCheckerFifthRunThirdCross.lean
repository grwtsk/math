/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Fifth retained run against the third

These are the original global rows 1610 through 1795 and columns 666 through 853.
Reuse the certified third-run and fifth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [757, 1129] and the sum window is [2277, 2649].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the three disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1610 1795
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def crossRowSlice (b : Fin 3) : Finset (Fin 32768) :=
  Finset.Icc ⟨1610 + 62 * b.val, by omega⟩ ⟨1610 + 62 * b.val + 61, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 3, 1610 + 62 * b.val ≤ i.val ∧ i.val ≤ 1610 + 62 * b.val + 61) ↔
    1610 ≤ i.val ∧ i.val ≤ 1795
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 3 := ⟨(i.val - 1610) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 3))) crossRowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [crossRowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 1130 then
    (digit 0xf7d52c0ce37c01f7ed7d3e0ca30740df0c2001670f88f4ade167c5eb5e72d3e3ad88542df23259d6ecf946cb8b367cba1e971abe686043ac1f39d2cce74f9fb7c72bb7d1419363cbe952de4065f50216333efaad2c45737d6c8d2833bec1351ded1f660b3f206fb5baa126b7dc362013abeec69c2091f7b8a4c5e0fc06c552d07e187f8c1bbf16bfbd071f909884ff6fcae4df5d57e6bcdd01d3f402b1a90dfa52ff2f3cfd52146c897ebd3516ed3f68a008405fb94ab1812fdf1e9b59d7f0c9df285bf9012d8911fcce2eebc6fe8d9f692c7f59f1430a3fb67805cf1fdff2ecffaff2507c4647fa5183c9bbfdbc434ff1ff275045e4ffb7f5b5207fedfc6d26bfffec38c2a00463a416700463ce571803487c21dc022e514376015b953ff500cfb1c70b8078a48e324044a3fdcee02670b5f470154299e9580ba3d8ef7c0651e621ea03684873d501d37a8ee180f93df27a408449e6ab2045efa1f0f024d7ba4008135915cc5c0a21c6ca76054acfe55702c204de32816f23ed58c0be8c13ad6062b7b43ab0330ef3cb781a5e24489c0d98f3c6d60700afc501039a14c87081d9b988cf40f31c8b50207ca23175b03fd509e60820a976bfdc10b2aeb11e08878d2073045a7ef9f382386a30644121b18f4f20938a8121504b17d3f22826320add84136a7f706a09dd307e1105022a045e828aaa56a4c14a05ef0e20a74e569c7054c651c4c82aef73c62415bc39479e0aff88614d05900f9f4582cff814adc16bd956f6a0b7cdd8a1d05cd0bf49f82ed9e3dc9417a3ffb1460becabb54d06033ddbc08307dbc31bc186f09c82e0c4ebc715506328a74ed831ea3618f4191e4b03e20ca2dc1b59065ad849dd8331e88bd5419b1606aaa0ce8d9efdd067c0f560983419f6e84c1a27ecda0a0d20881b110696190eb7834dbcf41841a8199267e0d49bbc87506a8e06ac4835636c8c7c1abe1439f60d644d320106b451ea22835b035e4041add13313a0d7017aeb306b85b9d0a835c19ef32c1ade5178360d6cf9c08506b4ed2ae883597282c1c1ac190e4fa0d5ad521cf06a9f7d8f5835305efc3c1a8699d1920d398ed20906976e90868348cddfddc1a2d3b348e0d090f21df067d45e502833ac4d27a419b54ab8460cc941beb9065b74198f8328e61f8ec191ea4d0d60c7a15bd7f0631f1266083132dfa3dc18692cd0ca0c1b7da4cd0600b6bdb982f9997348c1794ccfc520bad6f765d05c7c0509182dc267b58c16a1769b3a0b2fe4b7db05870b12dc82bad3e51a4158f2209620aa2da7aeb053e95ff878295a1672ac145dcec5d20a0651649104ee61dc05826c8f9dd74130d83805e095a4db3cb0496713b8f823fa00cb0c119e4e25da089ed7477f0436c88202820ed51fec4101043eac607d3f9a3a503cf6de65681da322d9740e6381549206f9c3f5af03606974c181a1bb769840c982a413a061049183702e9c51072816576278340aae69ed9205179f95e3026b8c74ed8125685939c08a672f9d6040fe1ab8501e5cd370180e199115a406807f6cda02f92d497f015896c55e809a10427f4043cd0b58a01d3a4145300c3fa68ca804ed6cc4bc01dbafaaea009f6b646d00280b43e97ffff67b43bff5d6c8a7dff5cac452cff84de52a97fad7a0876bfcc25ef539fe0b93731cfeda8a69467f576d18f1bfa0ae5eaa9fcac515962fe292832e57efddc3d03bf73767c2a1fb3f1a0e5efd70d22fd17ea0d4ef4cbf448522571f9c4254f8afcb1a4b34b7e40659399bf13e1a0245f83bae7c88fbebbde0f87ddc9d7591bee193b8421f6a5f4915cfb1f3da9ea7d758cc729beada3a0531f5033a1ff0fa4c45c9417d0b449eeabe781a0008df353c548b6f972f9c06c7c9dd6f603be40fff0261f197dfb292f8937ed2fd7c2d56a629be085ef9689efcfd681f2f7adfc021d7bb9d76743bdce411358dedfbfa4f24f6c29a07a17b436dcce83d92b0a3031ec1c9f1bd6f5d18350b27aca2f43a6bd55b879941ea321c47e8f4dae3f8187a4e320e1ebd1763d2e15e83ccc8564f3dee9c02379cf8d41e93cd7be53d5de63d0dcbbef2ddc40c2e794e58c44fbc96d408c79e433414a50f1d7a3d9cc78caad46d1bc54b163b51e21fcb5a1cf0ccbbb9877844a4437f3c11633a6c1e003136ec2efbd3fc75077bc57f91ebbccf6c497ddddd8406d2eea965a2867731e36728bb877999b75dbaf8a9b52ed916465a576a56249953b40f9aeff9d979978e94ec75749da07616f114793af98555249d73c1e1a62eb55d040db7586acef7a3ab12b360ddd4f7943d68ea32b2a5cc74f4b3b1163a67fa5274dd2ac72a808e90c58794e746123d9c13a1e01ff6cdd05b34a86ce7e2ffb49973cc1c8ed439d351e3d8dce04581600e6b6e792e87335bd95593987f9f5c89cba85d3c4ae5885086d0729e274cacb93c0a77c6dc947c6c51ce4577c2f4472057aa8f4b8ef93f60f5c6e319a22ae324ad4c54716bd92d7538a2a743b45c47adcf610e1f027b39570d164e6beb8555577b05c20f99fcbce0ba30444a70364064b63807afe9e75bfa1dbf34edf830cdb3c6f9a8eb47b37b9c830151bd322fff6cde4b04465b6efe735a2db76bb01aaa1bac125160cdd125e380c6e62124a8f371d79b19a1b84f4be1c4dbd9633a446dc58fe48436cf3731195b5dd36a892daa05ca15d (j - 757) : ℤ) - 1000000000000
  else
    (digit 0xf3a88f675679d7d11ed03ceda2c0851e77a932214f3c3ddc77a79e523c17fbcf421a8745e7ad3605a2f3dc84857d79f12184fd3cf9f59c445e7da7d385cf3f27b6d6579fbc663b7bcff1ca36a9e80259483cf405baef797a050eaa88bd0394eeb99e824bc0f42f4163c22957a0cf6f9df3d075cd8f11e84198b7f8f423f8c6637a137c46d3bd0a72e7475e858e3c19cf42eeb456a7a189bdc2a3d0cd5c9e6de86a9303faf4370eb6e97a1c535b3ebd0e845c619e8769db302f43c5ee09e7a1ea0bcdebd0f7da61c1e87cfc61f2f43ed8384e7a1f82520bbd0fc0daab9e87da90644f43e77e5327a1ef6c4a9bd0f4d5a2b5e8789efa3af43b3bc1327a1cfd18193d0e22b1859e86ddaff18f4352259f97a1994a9ba3d0c409ab35e85d5b3f0cf42c2af1da7a14bd315bbd09a6fcf0de8471f4eb4f42055808d7a0e76c191bd0655ece6de82b282e56f411a2b3bc7a06c1c7f83d024dacc85e809784abaf40013ef6879fd9f0d60bcfd8eac661e7e2137db2f3ebab4e2179f30fb5e4bcf81989375e7b4ff0e40f3d46ba10c79e71540e8bcf1ef0e559e78241b06af3ba586fc279d9b18902bceb10346ede749e384aef39d75f80279cae6c3cd3ce37e21ac5e70bee1720f37dc92d3279bab781a43cdb3a298d9e6c86c5e2ef35b57b7b579a926ad493cd245ccb81e67f6ab90af33627f4197996378b74bcc8a2b8bbde630f6edb8f30e40f20e7981edba4bbcbe52c7ce1e5dd2026c4f2e3aa7338796c4d30c53cb35800761e583f6f0a4f2b66ce9d379555a3df43ca7b495321e5258d36b2f28691772b793d19883ebc9b6ae40e1e4c1f63fe0f25421e9e37923900c7dbc8e7d76321e45946ab0cf21f28bc187908c31d053c80eeff631e3eb946af4f1e7b1115178ecb8609b3c72c25d7c9e378f6c1e6f1adc6b44a78cf75d1553c63fa97dade301863d08f17176148f78b101bb61bc549adebede2855caf5cf132cc43f2789162bbbcbc44a68aa51e204952c60f0f1d6f3d278709fbecebc34211b92de17f4c0264f0aea4723d784ebffef7bc230e3858de0f59eb492f06943a6e5782bcb03073c1171adcc9e067abf49cf021c40ff17807c89c9e3bff4f6df71dfd5939c24efd835bea877e2c0e67c3becab8f39ddf3f76a5c8ef8ca953eb77bcbc42bebbd98a4b6a1dea57725faef3f2ffc967795c35908bbc5effee41de07b84372eeefdb6db5776ddf1496bbb1e127929dd665e2f6aee9ebde095774518a2473b9d6263f01dcc18e1d8aee4bea0eb3771b796e8b3b887871fd1dc196e3b90edf7732d8476f10b23463b73282e2eddb6e25a8b4eda16cea2476c5d7a5a33b5d7692565dabfdc6ccaed49eb64dd7699e913d03b4768b47d9da0ebb6f24ecf1032c8c766d49c2b1bb3103c5bf1d95aec6d3cec96c939f47640043b853b1a4d11131d8a499f10cec3b52eae176122339703b0349fa191d7ebef4750ebdeb5fd3d75e3b1a7073aebfffbd69d73118756ceb81088a0875b4ba9bc5bad474a7721d674422f34eb226100287585495973babcada2e59d5b599cc7eeac2d61f3575556949883aa4b0a7ac5d4f54d3e78ea627ef218752525fa773a8c838169dd4338b04daea0172c9a574f48b1cf8ba742c0c8bdd3708222eae99fc9371274c3a481453a5bb034e65d2ac621458e93d9a066274927e14473a4315f44c1d1e75ac1ece8dafd38bb746123dcc2ba2a635120dd1219c761ee8780afea5742fa1f874ba119e5ce91d05b57d17ce814dbb24273fe04992d39f8cd32d39cf94bdbf02e7b187d17273cc5801dd39dff5f6421cecdff6848e74e27f7e8739aa883a139c71ed14d5ce074e29a0e6ead4d9337369027ac639ae4df344dcd40db861ae687a73ac47337724bc63995898f2fdcc7ad91b74e624b7edde7306046045397cd7da485cbb5789604e5c21fc98872d4c5240539643f0a765caf0eba47ae55ff7a47572a3c101dab94bc554c95ca2d63ebbae4fe584ee8727304609eb93370ebf0dc96b12fa96e49d5a8c9072429ba01c391b47feb39c8aa2a3d86e43d170e6c7212931600b90350b6671c7eadaf26ae3dda66ca171e2f70acab8eb9135675c72d561c42e37f21205f71b3d3b6b6b8d40f958d9c671cc76ece3219f7dbc7185353eb4b8bcd1e6aa5c5b86e6af0e2c539ad9d715727b154b8a5de2cfddc5016c014ae26a07a79c7129b703c3388f3a5fb41c44cf4d750e210212bfc70fcef0ebd3878ec67621c39b381298e1b79dbda270d0db8b90b862fa1c855c2ec6454fee160949c1570a588111fb84d6946055c240a7b0bee10b1cbd92707b0010e838383f97ba1c1982f9c9ce0b74cc92270514ed414b82382b0f35c0f328e83ae0653b10c970287f7891380f381b065c051bfb07ce014fd8bbb70009cee2c37fb6547dd9bfb41f5418dfc6a9d0ad6fd9b1f3be37e80f908d9bf1a72684cdf7a55102b6fb3c9145a37d53c33efdbe84e2adacdf30140f116f8eeca48937c2f055411bdf3990534dee7fb210f6f6b26bf9137b130fac61bd66bd656edea21e23476f488144c837a0030c76dbcde76cfd8de5e9077056f2705d4f1b78f6b52aedbc5aeb467cde1d64fc926f06bdcfa9b77f6e74e4dbbdc3fc1aedddeae0e186ee7b250df377010f8689bb6298261adda27d7ab36ec9ec2e5c3761573f29dbaee173af4dd68e48191 (j - 2277) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 373, crossSinc (757 + j.val) = sincEntry (757 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 373, crossSinc (2277 + j.val) = sincEntry (2277 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 757 ≤ j) (hi : j ≤ 1129) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 757, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 2277 ≤ j) (hi : j ≤ 2649) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 2277, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then
    fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 3) : ℕ :=
  #[242095561522776188967922775387948506433489591020572,
    474879711057694993749088216406439901952266815531292,
    194620711195728109416476394615257698649448983734932][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 3) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 911595983776199292133487386409646107035205390286796 := by
  calc
    _ = ∑ b : Fin 3, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 3, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fifth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem fifthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1610, 1795)) (retainedRunCells (666, 853)) =
        911595983776199292133487386409646107035205390286796 := by
  have hrows : retainedRunCells (1610, 1795) = crossRows :=
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
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
