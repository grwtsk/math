/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Twelfth retained run against the third

These are the original global rows 15678 through 15741 and columns 666 through 853.
Reuse the certified third-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [14825, 15075] and the sum window is [16345, 16595].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 15076 then
    (digit 0x39b6b874965cdb603d088e6db29e5f2736dace584b9b6e465c31cdb7a292c6e6dc18e152736e342f00b9b72fef9d5cdba3e032ee6dd86262d736efa957039b79b038ddcdbdd59d3ce6df716a5b736fffefcdb9b8258b199cdc2689d52e6e1da442e7371440551b9b8cf67e51cdc7f600e0e6e4c02a837372c68d7fb9b99873bc9cdce7c869ae6e82274e37374873032b9ba80809a5cdd5faaec4e6ec005ba673768585b639bb8758b35cdde6ebb84e6f058f8257378c116d9b9bcacbe825cde7d6b14ce6f52b44eb737b395d0db9bdf06cd61cdf2305754e6fa761df7737dedc284b9bf5216e2dcdfd793818e7003840fa7380dda25439c0d16852dce09aea1f2e706704dab738408489eb9c26e055b9ce16cda7bee70d1cc61473876cf2bab9c4278ad31ce24d3218ce7143c0ef5738b0acf65b9c5fd8e489ce33bbad66e71bcc701e738ee0fef339c7ef9e1c5ce4383b016e723cc14e17392ee938439c9fd419d9ce54275610e72c390c7f739732914039cc25f9255ce65a2945ce735114aa0739babee9239ce693e369ce77f1298ee73e52a7d573a059946ab9d0c6839f1ce8b0e9ed2e747fae21c73a53a5e8039d33d35995ce9ef648fee752079d6e73aa4d1b9ab9d5ccb9f01ceb3a349c0e75c76645273af908ddab9d87470255cec91090c2e76744a87573b5036b08b9db33b1985cedf38dceee7726fc34e73baa45ce5b9de09d1af5cef616bdb2e77df4f6c173c072017f39e0f61e015cf0da49464e789d16dce73c66aeb85b9e3f7de819cf25dc958ce796023d3f73cc8da2a639e70e55addcf3eb8ca6ae7a284646473d2d8a3e839ea38c0bc5cf58331256e7af54cdce73d94a620b39ed7657cb9cf72452456e7bc70501273dfe145ea39f0c64e139cf8ce8909ee7c9d3ae9173e69baeddb9f427d2199cfa816c22ce7d77b9a4273ed77f325b9f79a0de19cfc3c90068e7e564b28773f4746050b9fb1c27255cfdff870c8e7f38b860073fb8f3ba7b9fead3f891cffc9e1888e801ec93677402c6c29b3a024c74d2dd019b2de64e810844a6b740a192b33ba05f8e1229d0372f8c56e81f4f0c95741184a482ba09b19b2b1d0550cd162e82e492e2c7419075715ba0d75b66c1d073434364e83d6ef71e74209f656aba1144436bdd091cb60ece84cbca3ef74284aec693a151c4ff3dd0b09d9316e85c2e66a474300803d6ba18fce74c9d0cfb22f6ee86bc067b67437d4bed1ba1ce5127a5d0ef0179dae87b6ec70b743faf2c4cba20d3d87a1d10e83a682e88b359ce6744795578a3a24c83e809d12e30dbc8e89b10fae4744f8548963a28c148379d14e013432e8aafcecf874577d04c83a2cbdf7fd9d16decc06ee8baf57a61745f7a8f3eba30bd4f245d18deb8942e8caf6a6af74677be95dba34be4e311d1adf5918ae8dafc72bb746f7f1350ba38bff51bdd1ce02d840e8eb02ddac7477820c86ba3cc1438f5d1ee0b5a6ce8fb05e5f2747f82d436ba40c139295d20e071532e90b018a4974877f69dbba44bed5ba5d22dee07cce91af1cab9748f75cdb73a48b919859d24db8358ce92ad2a99674976401503a4caf0581dd26d5da7dae93aa02c7e749f4807f43a509f9b979d28cd67036e94a565d5d74a71fe734ba5489dee31d2ac1aaa2ee959f14b6374aee9a767ba586cd3f11d2cb227d60e9696d0c0874b6a35425ba5c4781001d2e9e61f6ce978c5bc0474be4afcc63a6018ee3d9d3085dd5eee987f7804b74c5deb4dd3a63e026051d32681f868e996fe870274cd5c94b73a679c351cdd3444af234e9a5d70875 (j - 14825) : ℤ) - 1000000000000
  else
    (digit 0x39df55cdb19ceff70655ee7821e952973c2452a62b9e1beda001cf12e38a7ce78bed62d173c7371b7a39e43d0df35cf26feb6d8e7960f97ce73cc52716d39e6cfcc995cf3bbcf856e7a082b5d773d195ea8039e97673ca1cf5119337ce7ab442a1d73d7003ac639ec305c501cf670e24b6e7b6514dea73dc900c74b9eefcda105cf7d966194e7c1a7674773e2440035b9f1db3c359cf94ac5a30e7cd43a9ac73e81aad8039f4cacd5b9cfac4a5a80e7d92336ae73ee12a2f0b9f7cad3bc1cfc46a8bc8e7e5431eb373f42a66a339fada915cdcfdd06f608e7f1a061b073fa607691b9fdf9443ddcff6198170e7fe37efe47400b348f4ba0126268a9d00f9bf7f0e80b06aa997407214ca23a04606ec95d0298806b0e8180964ec740da8e9733a07a7500f1d043d73fb0e8253ce49874144880a73a0af9fa305d05e831b58e8329de2bd741afe6d4cba0e5799f65d07984fa18e840290cb67421c904a83a11bf59529d094d62612e84ddb04e97428a6969f3a15305f93dd0b06fd4bae85bb0639f742f956e223a18a9d19c9d0cc4b288ee869a5b7da743693d19bba1c2ad219dd0e86132cee877b78832743da0035bba1fb281b85d104aaf52ce885e253b27444b84206ba233fff5edd12121638ce8942292b7744bdac9083a26d268635d13dbd65cee8a274b7d3745305d0ffba2a68d8c5dd15a77d988e8b0d530a9745a3790343a2e026b67dd1774993d0e8bf4066db74616e3b07ba319e3a45dd1942b6308e8cdb2c0e77468a804663a353b5eb0dd1b11610aae8dc28a30e746fe31e3cba38d8f1879d1ce026310e8ea9e704074771db9e83a3c760b70dd1eae91f46e8f9108afd747e5608aeba4011c514dd207c30adae9077b563f74858a3c2e3a43ab37569d22488eda4e915db3660748cb886d1ba47417b8edd24133939ce9242c92047493df1c45ba4ad3abc4dd25dbbcea0e9326bd2fc749afc31eb3a4e60e2e81d27a1a7846e94095672d74a20dff48ba51e83d0a5d2964873a8e94ea5c17774a912be7fba5568d7979d2b23eaf20e95c995a9474b008acba3a58e1d1901d2cdf6261ee96a6cb20274b6ee0aa0ba5c524bbf5d2e967e2e0e9781c4edc74bdc11cc6ba5fb968f5dd3048d0036e985a4c0bf74c4802c1b3a63164e3f5d31f5eab38e99302a0a374cb298657ba6668231a5d339d62504e9a03291ba74d1bb7e6d3a69ae11ae1d353ecc46ce9ad31424474d8346cedba6ce74700dd36d9bf7a4e9b9fb6c6874de92b07aba7012f32d5d386dd45e6e9c68dd70674e4d4ae2b3a73304995dd39faa5118e9d2e5568774eaf8d1f4ba763e81189d3b7fcd764e9defecda774f0fd8f103a793cd442dd3cfceb4cee9ead72e4374f6e1605f3a7c2a8181dd3e719e4c0e9f66b7a1b74fca2c8ccba7f06cb541d3fdd8838cea01b8c39275024053af3a81d0f8795d41404cfecea0cbc2e717507b89524ba848854211d429992c76ea1772f09a750d0a2a70ba872c2e189d43e902108ea21da52c1751233ba54ba89bbdaf75d452e45c28ea2befb11b751733f568ba8c36b44add46690b466ea35b07c08751c09966f3a8e9c18c01d47990299aea3f1a38ba7520b362a93a90eb6c4ddd48bdde63eea482a81d97525302a24ba9324185a5d49d754098ea50df081a75297ec809ba95458be39d4ae51bbf2ea593592db752d9e22e7ba974f3ba35d4be6f09c0ea612c00ae75318d2cfa3a9940a2321d4cdc90ab0ea68c047ea75354ae46eba9b19402a9d4dc5bcfc2ea6ff0772c7538d653a7ba9cd89c495d4ea239b48ea76bab5db (j - 16345) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 251, crossSinc (14825 + j.val) = sincEntry (14825 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 251, crossSinc (16345 + j.val) = sincEntry (16345 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 14825 ≤ j) (hi : j ≤ 15075) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 14825, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 16345 ≤ j) (hi : j ≤ 16595) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 16345, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 973375570650004805024600951038570879619339381384 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (666, 853)) =
        973375570650004805024600951038570879619339381384 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
